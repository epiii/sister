/*
Navicat MySQL Data Transfer

Source Server         : lumba2
Source Server Version : 50625
Source Host           : 127.0.0.1:3306
Source Database       : sister_siadu

Target Server Type    : MYSQL
Target Server Version : 50625
File Encoding         : 65001

Date: 2015-09-09 05:39:15
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for psb_angsuran
-- ----------------------------
DROP TABLE IF EXISTS `psb_angsuran`;
CREATE TABLE `psb_angsuran` (
  `replid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `angsuran` int(11) NOT NULL,
  `keterangan` varchar(200) NOT NULL,
  PRIMARY KEY (`replid`,`angsuran`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of psb_angsuran
-- ----------------------------
INSERT INTO `psb_angsuran` VALUES ('1', '1', 'in house pertama');
INSERT INTO `psb_angsuran` VALUES ('2', '2', 'in house kedua');
INSERT INTO `psb_angsuran` VALUES ('3', '3', 'in house ketiga');
INSERT INTO `psb_angsuran` VALUES ('4', '4', '-\r\n');
INSERT INTO `psb_angsuran` VALUES ('5', '5', '');
INSERT INTO `psb_angsuran` VALUES ('6', '6', '');
INSERT INTO `psb_angsuran` VALUES ('7', '7', '');
INSERT INTO `psb_angsuran` VALUES ('8', '8', '');
INSERT INTO `psb_angsuran` VALUES ('9', '9', '');
INSERT INTO `psb_angsuran` VALUES ('10', '10', '');
INSERT INTO `psb_angsuran` VALUES ('11', '11', '');
INSERT INTO `psb_angsuran` VALUES ('12', '12', '');

-- ----------------------------
-- Table structure for psb_biaya
-- ----------------------------
DROP TABLE IF EXISTS `psb_biaya`;
CREATE TABLE `psb_biaya` (
  `replid` int(11) NOT NULL AUTO_INCREMENT,
  `biaya` varchar(100) NOT NULL,
  `kode` varchar(50) NOT NULL,
  `isAngsur` int(1) NOT NULL DEFAULT '1',
  `isDiskon` int(1) NOT NULL DEFAULT '0',
  `jenistagihan` int(11) NOT NULL,
  `keterangan` text,
  PRIMARY KEY (`replid`),
  KEY `jenistagihan` (`jenistagihan`) USING BTREE,
  CONSTRAINT `jenistagihanFK` FOREIGN KEY (`jenistagihan`) REFERENCES `psb_jenistagihan` (`replid`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of psb_biaya
-- ----------------------------
INSERT INTO `psb_biaya` VALUES ('3', 'Formulir', 'formulir', '0', '0', '1', 'Formulr Pendafataran');
INSERT INTO `psb_biaya` VALUES ('4', 'DPP', 'dpp', '1', '3', '4', 'Uang Gedung');
INSERT INTO `psb_biaya` VALUES ('7', 'SPP', 'spp', '0', '3', '4', 'sumbangan per bulan ');
INSERT INTO `psb_biaya` VALUES ('8', 'Joining Fee', 'joining_fee', '2', '3', '1', 'biaya yg dibayar sekali saat masuk');

-- ----------------------------
-- Table structure for psb_calonsiswa_keluarga
-- ----------------------------
DROP TABLE IF EXISTS `psb_calonsiswa_keluarga`;
CREATE TABLE `psb_calonsiswa_keluarga` (
  `replid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `calonsiswa` int(10) unsigned NOT NULL,
  `kakek_nama` varchar(100) NOT NULL DEFAULT '',
  `kakek_tgllahir` date NOT NULL DEFAULT '0000-00-00',
  `nenek_nama` varchar(100) NOT NULL DEFAULT '',
  `nenek_tgllahir` date NOT NULL DEFAULT '0000-00-00',
  `tglnikah` date NOT NULL,
  PRIMARY KEY (`replid`)
) ENGINE=MyISAM AUTO_INCREMENT=984 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of psb_calonsiswa_keluarga
-- ----------------------------
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('1', '1', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('2', '2', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('3', '3', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('4', '4', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('5', '5', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('8', '7', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('10', '8', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('12', '11', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('15', '14', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('16', '15', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('17', '16', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('18', '17', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('19', '18', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('21', '20', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('23', '21', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('25', '19', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('27', '23', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('28', '24', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('29', '25', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('31', '27', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('32', '28', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('33', '29', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('34', '30', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('35', '32', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('39', '38', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('41', '39', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('42', '40', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('44', '37', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('46', '42', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('54', '45', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('56', '47', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('57', '48', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('61', '49', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('62', '50', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('63', '51', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('64', '52', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('65', '53', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('66', '41', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('68', '36', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('69', '43', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('70', '44', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('71', '46', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('72', '54', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('73', '55', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('74', '56', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('75', '57', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('76', '58', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('77', '59', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('81', '61', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('82', '62', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('83', '63', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('84', '64', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('85', '65', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('86', '66', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('87', '67', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('88', '68', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('89', '69', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('91', '70', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('92', '71', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('95', '74', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('96', '73', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('97', '75', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('98', '76', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('99', '77', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('100', '78', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('101', '79', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('102', '80', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('103', '81', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('104', '82', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('105', '83', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('106', '84', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('107', '85', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('108', '86', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('109', '87', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('110', '88', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('111', '89', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('112', '90', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('113', '91', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('114', '92', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('115', '93', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('116', '94', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('117', '95', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('118', '96', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('119', '97', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('120', '98', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('121', '100', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('122', '101', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('125', '103', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('127', '105', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('128', '102', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('130', '107', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('132', '109', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('133', '108', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('134', '106', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('135', '104', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('137', '110', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('138', '111', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('139', '112', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('140', '113', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('141', '114', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('142', '115', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('143', '116', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('144', '117', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('145', '118', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('146', '119', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('147', '120', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('148', '121', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('149', '122', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('150', '123', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('151', '124', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('152', '125', '7', '0000-00-00', '7', '0000-00-00', '2020-00-07');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('161', '134', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('162', '135', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('163', '136', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('164', '137', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('165', '140', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('166', '144', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('167', '145', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('168', '146', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('169', '147', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('170', '148', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('171', '149', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('172', '150', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('173', '151', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('175', '156', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('176', '158', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('177', '161', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('178', '162', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('179', '163', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('180', '164', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('183', '170', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('184', '171', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('185', '172', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('186', '173', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('187', '174', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('188', '175', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('189', '176', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('190', '177', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('191', '178', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('192', '179', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('193', '180', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('194', '181', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('195', '182', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('196', '183', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('197', '184', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('198', '185', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('199', '186', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('200', '166', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('201', '190', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('203', '192', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('204', '193', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('206', '195', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('207', '196', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('208', '197', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('209', '198', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('210', '199', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('211', '200', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('212', '201', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('213', '202', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('214', '203', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('215', '204', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('216', '205', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('217', '206', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('218', '207', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('220', '211', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('221', '212', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('222', '213', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('223', '214', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('224', '215', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('225', '216', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('226', '217', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('227', '218', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('228', '219', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('229', '220', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('230', '221', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('231', '222', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('232', '223', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('233', '224', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('235', '226', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('236', '227', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('237', '228', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('241', '232', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('242', '233', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('243', '234', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('244', '235', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('245', '236', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('246', '237', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('247', '238', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('248', '239', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('249', '240', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('250', '241', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('251', '242', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('252', '243', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('253', '244', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('254', '246', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('255', '247', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('256', '248', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('257', '249', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('258', '250', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('259', '251', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('260', '252', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('261', '253', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('262', '254', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('263', '255', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('264', '256', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('265', '257', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('266', '258', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('267', '259', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('268', '260', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('269', '261', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('270', '262', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('271', '263', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('272', '264', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('273', '265', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('274', '266', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('275', '267', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('276', '268', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('277', '269', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('278', '270', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('279', '271', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('280', '272', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('281', '273', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('282', '274', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('283', '275', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('284', '276', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('285', '277', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('286', '278', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('287', '279', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('288', '280', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('289', '281', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('290', '282', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('291', '283', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('292', '284', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('293', '285', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('294', '286', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('295', '287', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('296', '288', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('297', '289', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('298', '290', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('299', '291', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('300', '292', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('302', '294', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('303', '295', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('304', '296', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('305', '297', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('306', '298', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('307', '299', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('308', '300', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('309', '301', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('310', '302', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('311', '303', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('312', '304', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('313', '305', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('314', '306', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('315', '307', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('316', '308', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('317', '309', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('318', '310', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('319', '311', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('320', '312', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('321', '313', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('322', '314', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('323', '315', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('324', '316', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('325', '317', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('326', '318', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('327', '319', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('328', '320', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('329', '321', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('330', '322', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('331', '323', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('332', '324', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('333', '325', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('334', '326', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('335', '327', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('336', '328', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('337', '329', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('338', '330', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('339', '331', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('340', '332', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('341', '225', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('342', '209', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('346', '340', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('349', '343', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('350', '344', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('351', '345', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('352', '346', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('356', '351', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('357', '352', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('358', '353', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('359', '354', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('360', '355', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('361', '356', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('362', '357', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('363', '358', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('364', '359', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('365', '361', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('366', '362', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('367', '363', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('368', '364', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('369', '365', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('370', '366', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('371', '367', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('372', '368', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('373', '369', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('374', '370', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('375', '371', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('376', '372', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('377', '373', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('378', '374', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('379', '375', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('380', '376', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('381', '377', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('382', '378', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('383', '379', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('384', '380', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('385', '381', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('386', '382', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('387', '383', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('388', '384', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('389', '385', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('390', '386', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('391', '387', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('392', '388', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('393', '389', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('394', '390', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('395', '391', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('396', '392', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('397', '393', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('398', '394', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('399', '395', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('400', '396', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('401', '397', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('402', '398', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('403', '399', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('404', '400', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('405', '401', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('406', '402', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('407', '403', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('408', '404', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('409', '405', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('410', '406', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('411', '407', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('412', '408', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('413', '409', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('414', '410', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('415', '411', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('416', '412', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('417', '413', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('418', '414', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('419', '415', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('420', '416', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('421', '417', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('422', '418', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('423', '419', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('424', '420', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('425', '421', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('426', '422', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('427', '423', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('428', '424', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('429', '425', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('430', '426', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('431', '427', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('432', '428', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('433', '429', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('434', '430', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('435', '431', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('436', '432', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('437', '433', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('438', '434', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('439', '435', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('440', '436', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('441', '437', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('442', '438', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('443', '439', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('444', '441', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('445', '442', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('446', '443', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('447', '444', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('451', '22', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('453', '449', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('454', '450', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('455', '451', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('456', '452', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('457', '453', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('458', '454', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('459', '455', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('460', '456', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('461', '458', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('463', '460', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('464', '462', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('465', '463', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('466', '465', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('467', '467', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('468', '469', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('469', '471', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('470', '472', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('471', '473', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('472', '474', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('473', '475', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('474', '476', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('475', '477', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('476', '478', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('477', '479', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('478', '480', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('479', '481', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('480', '482', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('481', '483', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('482', '484', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('483', '485', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('484', '486', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('485', '487', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('486', '488', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('487', '489', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('488', '490', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('489', '491', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('490', '492', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('491', '493', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('492', '494', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('493', '495', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('494', '496', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('495', '497', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('496', '498', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('497', '499', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('498', '500', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('499', '501', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('500', '502', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('501', '503', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('502', '504', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('503', '505', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('504', '506', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('505', '507', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('506', '508', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('507', '509', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('508', '510', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('509', '511', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('510', '512', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('511', '513', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('512', '514', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('513', '515', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('514', '516', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('515', '517', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('516', '518', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('517', '519', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('518', '520', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('520', '529', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('521', '530', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('522', '531', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('523', '532', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('524', '533', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('525', '534', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('526', '535', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('527', '536', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('528', '537', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('529', '538', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('530', '539', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('531', '540', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('532', '541', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('533', '542', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('534', '543', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('535', '544', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('536', '545', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('537', '546', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('538', '547', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('539', '548', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('540', '549', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('541', '550', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('542', '551', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('543', '552', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('544', '553', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('545', '554', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('546', '555', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('547', '556', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('548', '557', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('549', '559', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('550', '560', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('551', '561', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('552', '562', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('553', '563', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('554', '564', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('555', '565', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('556', '566', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('557', '567', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('558', '568', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('559', '569', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('560', '570', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('561', '571', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('562', '572', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('563', '573', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('564', '574', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('565', '575', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('566', '576', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('567', '577', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('568', '578', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('569', '579', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('570', '580', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('571', '581', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('572', '582', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('573', '583', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('574', '584', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('575', '585', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('576', '586', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('577', '587', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('578', '588', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('579', '589', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('580', '590', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('581', '591', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('582', '592', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('583', '593', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('584', '594', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('585', '595', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('586', '596', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('587', '597', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('588', '598', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('589', '599', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('590', '600', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('591', '601', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('592', '602', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('593', '603', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('594', '604', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('595', '605', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('596', '606', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('597', '607', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('598', '608', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('599', '609', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('600', '610', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('601', '611', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('602', '612', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('603', '613', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('604', '614', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('605', '615', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('606', '616', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('607', '617', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('608', '618', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('609', '619', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('610', '620', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('611', '621', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('612', '622', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('613', '623', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('614', '624', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('615', '625', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('616', '626', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('617', '627', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('618', '628', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('619', '629', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('620', '630', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('621', '631', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('622', '632', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('623', '633', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('624', '634', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('625', '635', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('626', '636', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('627', '637', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('628', '638', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('629', '639', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('630', '640', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('631', '641', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('632', '642', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('633', '643', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('634', '644', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('635', '645', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('636', '647', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('637', '648', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('638', '650', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('639', '651', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('640', '652', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('642', '653', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('643', '655', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('644', '656', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('646', '660', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('647', '658', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('648', '662', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('649', '664', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('650', '666', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('651', '667', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('652', '668', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('653', '669', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('654', '671', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('655', '672', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('656', '673', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('657', '675', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('658', '676', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('659', '678', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('660', '680', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('661', '681', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('662', '682', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('663', '683', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('664', '684', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('665', '685', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('666', '686', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('667', '687', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('668', '688', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('669', '689', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('670', '690', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('671', '691', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('672', '692', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('673', '693', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('674', '694', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('675', '695', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('676', '696', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('677', '697', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('678', '698', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('679', '699', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('680', '700', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('681', '701', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('682', '702', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('683', '703', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('684', '704', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('685', '705', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('686', '706', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('687', '707', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('688', '708', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('689', '709', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('690', '710', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('691', '711', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('692', '712', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('693', '713', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('694', '714', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('695', '715', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('696', '716', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('698', '718', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('699', '719', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('700', '194', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('701', '720', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('702', '721', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('703', '722', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('704', '723', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('705', '724', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('706', '725', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('707', '726', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('708', '727', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('709', '728', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('710', '729', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('711', '730', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('712', '731', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('713', '732', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('714', '733', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('715', '734', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('716', '735', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('717', '736', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('718', '737', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('719', '738', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('720', '739', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('721', '740', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('722', '741', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('723', '742', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('724', '743', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('725', '744', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('726', '745', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('727', '746', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('728', '747', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('729', '748', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('730', '749', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('731', '750', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('732', '751', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('733', '752', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('734', '753', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('735', '754', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('736', '755', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('737', '756', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('738', '757', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('739', '758', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('740', '759', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('741', '760', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('742', '761', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('743', '762', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('744', '763', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('745', '764', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('746', '765', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('747', '766', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('748', '767', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('749', '768', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('750', '769', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('751', '770', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('752', '771', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('753', '772', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('754', '773', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('755', '774', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('756', '775', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('757', '776', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('758', '777', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('759', '778', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('760', '779', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('761', '780', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('762', '781', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('763', '782', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('764', '783', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('765', '784', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('766', '785', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('767', '786', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('768', '787', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('769', '788', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('770', '789', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('771', '790', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('772', '791', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('773', '792', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('774', '793', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('775', '794', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('776', '795', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('777', '796', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('778', '797', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('779', '798', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('780', '799', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('781', '800', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('782', '801', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('783', '802', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('784', '803', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('785', '804', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('786', '805', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('787', '806', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('788', '807', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('789', '808', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('790', '809', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('791', '810', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('792', '811', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('793', '812', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('794', '813', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('795', '814', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('796', '815', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('797', '816', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('798', '817', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('799', '818', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('800', '819', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('801', '820', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('802', '821', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('803', '822', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('804', '823', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('805', '824', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('806', '825', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('807', '826', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('808', '827', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('809', '828', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('810', '829', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('811', '830', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('812', '831', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('813', '833', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('814', '834', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('815', '835', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('816', '836', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('817', '837', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('818', '838', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('819', '839', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('820', '840', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('821', '841', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('822', '842', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('823', '843', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('824', '844', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('825', '845', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('826', '846', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('827', '847', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('828', '848', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('829', '849', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('830', '850', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('831', '851', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('832', '852', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('833', '853', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('834', '854', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('835', '855', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('836', '856', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('837', '857', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('838', '858', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('839', '859', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('840', '860', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('841', '861', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('842', '862', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('843', '863', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('844', '864', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('845', '865', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('846', '866', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('847', '867', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('848', '868', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('849', '869', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('850', '870', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('851', '871', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('852', '872', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('853', '873', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('854', '874', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('855', '875', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('856', '876', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('857', '877', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('858', '878', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('859', '879', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('861', '881', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('862', '882', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('863', '883', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('864', '884', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('865', '885', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('866', '886', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('867', '887', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('868', '888', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('869', '889', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('870', '890', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('871', '891', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('872', '892', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('873', '893', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('874', '894', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('875', '895', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('876', '896', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('877', '897', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('878', '898', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('879', '899', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('880', '900', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('881', '901', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('882', '902', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('883', '903', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('884', '904', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('885', '905', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('886', '906', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('887', '907', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('888', '908', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('889', '909', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('890', '910', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('891', '911', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('892', '912', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('893', '913', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('894', '914', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('895', '915', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('896', '916', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('897', '917', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('898', '918', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('899', '919', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('900', '920', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('901', '921', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('902', '922', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('903', '923', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('904', '924', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('905', '925', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('906', '926', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('907', '927', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('908', '928', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('909', '929', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('910', '930', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('911', '931', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('912', '932', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('913', '933', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('914', '934', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('915', '935', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('916', '936', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('917', '937', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('918', '938', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('919', '939', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('920', '940', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('921', '941', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('922', '942', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('923', '943', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('924', '944', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('925', '945', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('926', '946', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('927', '947', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('928', '948', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('929', '949', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('930', '950', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('931', '951', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('932', '952', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('933', '953', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('934', '954', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('935', '955', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('936', '956', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('937', '957', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('938', '958', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('939', '959', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('940', '960', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('941', '961', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('942', '962', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('943', '963', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('944', '964', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('945', '965', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('946', '966', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('947', '967', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('948', '968', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('949', '969', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('950', '970', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('951', '971', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('952', '972', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('953', '973', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('954', '974', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('955', '975', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('956', '976', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('957', '977', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('958', '978', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('959', '979', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('960', '980', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('961', '981', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('962', '982', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('963', '983', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('964', '984', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('965', '985', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('966', '986', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('967', '987', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('968', '988', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('969', '989', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('970', '990', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('971', '991', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('972', '9', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('975', '339', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('976', '341', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('977', '342', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('978', '338', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('979', '337', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('980', '1012', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('981', '1013', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('982', '1016', '', '0000-00-00', '', '0000-00-00', '0000-00-00');
INSERT INTO `psb_calonsiswa_keluarga` VALUES ('983', '1017', '', '0000-00-00', '', '0000-00-00', '0000-00-00');

-- ----------------------------
-- Table structure for psb_calonsiswa_syarat
-- ----------------------------
DROP TABLE IF EXISTS `psb_calonsiswa_syarat`;
CREATE TABLE `psb_calonsiswa_syarat` (
  `replid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `calonsiswa` int(10) unsigned NOT NULL,
  `syarat` int(10) unsigned NOT NULL,
  `status` enum('0','1') NOT NULL DEFAULT '0',
  PRIMARY KEY (`replid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of psb_calonsiswa_syarat
-- ----------------------------

-- ----------------------------
-- Table structure for psb_detailbiaya
-- ----------------------------
DROP TABLE IF EXISTS `psb_detailbiaya`;
CREATE TABLE `psb_detailbiaya` (
  `replid` int(11) NOT NULL AUTO_INCREMENT,
  `biaya` int(11) NOT NULL,
  `nominal` decimal(14,0) NOT NULL,
  `subtingkat` int(11) NOT NULL DEFAULT '0',
  `golongan` int(11) NOT NULL DEFAULT '0',
  `detailgelombang` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`replid`),
  KEY `detailgelombang` (`detailgelombang`) USING BTREE,
  KEY `golongan` (`golongan`) USING BTREE,
  KEY `subtingkat` (`subtingkat`) USING BTREE,
  KEY `biaya` (`biaya`) USING BTREE,
  CONSTRAINT `biayaFK` FOREIGN KEY (`biaya`) REFERENCES `psb_biaya` (`replid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `detailgelombangFK4` FOREIGN KEY (`detailgelombang`) REFERENCES `psb_detailgelombang` (`replid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `golonganFK2` FOREIGN KEY (`golongan`) REFERENCES `psb_golongan` (`replid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `subtingkatFK2` FOREIGN KEY (`subtingkat`) REFERENCES `aka_subtingkat` (`replid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4753 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of psb_detailbiaya
-- ----------------------------
INSERT INTO `psb_detailbiaya` VALUES ('1', '3', '0', '4', '1', '97');
INSERT INTO `psb_detailbiaya` VALUES ('2', '3', '0', '4', '2', '97');
INSERT INTO `psb_detailbiaya` VALUES ('3', '3', '0', '4', '3', '97');
INSERT INTO `psb_detailbiaya` VALUES ('4', '3', '0', '4', '4', '97');
INSERT INTO `psb_detailbiaya` VALUES ('5', '3', '0', '4', '5', '97');
INSERT INTO `psb_detailbiaya` VALUES ('6', '3', '0', '4', '6', '97');
INSERT INTO `psb_detailbiaya` VALUES ('7', '3', '0', '4', '7', '97');
INSERT INTO `psb_detailbiaya` VALUES ('8', '3', '0', '4', '9', '97');
INSERT INTO `psb_detailbiaya` VALUES ('9', '3', '0', '4', '10', '97');
INSERT INTO `psb_detailbiaya` VALUES ('10', '7', '0', '4', '1', '97');
INSERT INTO `psb_detailbiaya` VALUES ('11', '7', '0', '4', '2', '97');
INSERT INTO `psb_detailbiaya` VALUES ('12', '7', '0', '4', '3', '97');
INSERT INTO `psb_detailbiaya` VALUES ('13', '7', '0', '4', '4', '97');
INSERT INTO `psb_detailbiaya` VALUES ('14', '7', '0', '4', '5', '97');
INSERT INTO `psb_detailbiaya` VALUES ('15', '7', '0', '4', '6', '97');
INSERT INTO `psb_detailbiaya` VALUES ('16', '7', '0', '4', '7', '97');
INSERT INTO `psb_detailbiaya` VALUES ('17', '7', '0', '4', '9', '97');
INSERT INTO `psb_detailbiaya` VALUES ('18', '7', '0', '4', '10', '97');
INSERT INTO `psb_detailbiaya` VALUES ('19', '8', '0', '4', '1', '97');
INSERT INTO `psb_detailbiaya` VALUES ('20', '8', '0', '4', '2', '97');
INSERT INTO `psb_detailbiaya` VALUES ('21', '8', '0', '4', '3', '97');
INSERT INTO `psb_detailbiaya` VALUES ('22', '8', '0', '4', '4', '97');
INSERT INTO `psb_detailbiaya` VALUES ('23', '8', '0', '4', '5', '97');
INSERT INTO `psb_detailbiaya` VALUES ('24', '8', '0', '4', '6', '97');
INSERT INTO `psb_detailbiaya` VALUES ('25', '8', '0', '4', '7', '97');
INSERT INTO `psb_detailbiaya` VALUES ('26', '8', '0', '4', '9', '97');
INSERT INTO `psb_detailbiaya` VALUES ('27', '8', '0', '4', '10', '97');
INSERT INTO `psb_detailbiaya` VALUES ('28', '4', '0', '4', '1', '97');
INSERT INTO `psb_detailbiaya` VALUES ('29', '4', '0', '4', '2', '97');
INSERT INTO `psb_detailbiaya` VALUES ('30', '4', '0', '4', '3', '97');
INSERT INTO `psb_detailbiaya` VALUES ('31', '4', '0', '4', '4', '97');
INSERT INTO `psb_detailbiaya` VALUES ('32', '4', '0', '4', '5', '97');
INSERT INTO `psb_detailbiaya` VALUES ('33', '4', '0', '4', '6', '97');
INSERT INTO `psb_detailbiaya` VALUES ('34', '4', '0', '4', '7', '97');
INSERT INTO `psb_detailbiaya` VALUES ('35', '4', '0', '4', '9', '97');
INSERT INTO `psb_detailbiaya` VALUES ('36', '4', '0', '4', '10', '97');
INSERT INTO `psb_detailbiaya` VALUES ('37', '3', '0', '5', '1', '97');
INSERT INTO `psb_detailbiaya` VALUES ('38', '3', '0', '5', '2', '97');
INSERT INTO `psb_detailbiaya` VALUES ('39', '3', '0', '5', '3', '97');
INSERT INTO `psb_detailbiaya` VALUES ('40', '3', '0', '5', '4', '97');
INSERT INTO `psb_detailbiaya` VALUES ('41', '3', '0', '5', '5', '97');
INSERT INTO `psb_detailbiaya` VALUES ('42', '3', '0', '5', '6', '97');
INSERT INTO `psb_detailbiaya` VALUES ('43', '3', '0', '5', '7', '97');
INSERT INTO `psb_detailbiaya` VALUES ('44', '3', '0', '5', '9', '97');
INSERT INTO `psb_detailbiaya` VALUES ('45', '3', '0', '5', '10', '97');
INSERT INTO `psb_detailbiaya` VALUES ('46', '7', '0', '5', '1', '97');
INSERT INTO `psb_detailbiaya` VALUES ('47', '7', '0', '5', '2', '97');
INSERT INTO `psb_detailbiaya` VALUES ('48', '7', '0', '5', '3', '97');
INSERT INTO `psb_detailbiaya` VALUES ('49', '7', '0', '5', '4', '97');
INSERT INTO `psb_detailbiaya` VALUES ('50', '7', '0', '5', '5', '97');
INSERT INTO `psb_detailbiaya` VALUES ('51', '7', '0', '5', '6', '97');
INSERT INTO `psb_detailbiaya` VALUES ('52', '7', '0', '5', '7', '97');
INSERT INTO `psb_detailbiaya` VALUES ('53', '7', '0', '5', '9', '97');
INSERT INTO `psb_detailbiaya` VALUES ('54', '7', '0', '5', '10', '97');
INSERT INTO `psb_detailbiaya` VALUES ('55', '8', '0', '5', '1', '97');
INSERT INTO `psb_detailbiaya` VALUES ('56', '8', '0', '5', '2', '97');
INSERT INTO `psb_detailbiaya` VALUES ('57', '8', '0', '5', '3', '97');
INSERT INTO `psb_detailbiaya` VALUES ('58', '8', '0', '5', '4', '97');
INSERT INTO `psb_detailbiaya` VALUES ('59', '8', '0', '5', '5', '97');
INSERT INTO `psb_detailbiaya` VALUES ('60', '8', '0', '5', '6', '97');
INSERT INTO `psb_detailbiaya` VALUES ('61', '8', '0', '5', '7', '97');
INSERT INTO `psb_detailbiaya` VALUES ('62', '8', '0', '5', '9', '97');
INSERT INTO `psb_detailbiaya` VALUES ('63', '8', '0', '5', '10', '97');
INSERT INTO `psb_detailbiaya` VALUES ('64', '4', '0', '5', '1', '97');
INSERT INTO `psb_detailbiaya` VALUES ('65', '4', '0', '5', '2', '97');
INSERT INTO `psb_detailbiaya` VALUES ('66', '4', '0', '5', '3', '97');
INSERT INTO `psb_detailbiaya` VALUES ('67', '4', '0', '5', '4', '97');
INSERT INTO `psb_detailbiaya` VALUES ('68', '4', '0', '5', '5', '97');
INSERT INTO `psb_detailbiaya` VALUES ('69', '4', '0', '5', '6', '97');
INSERT INTO `psb_detailbiaya` VALUES ('70', '4', '0', '5', '7', '97');
INSERT INTO `psb_detailbiaya` VALUES ('71', '4', '0', '5', '9', '97');
INSERT INTO `psb_detailbiaya` VALUES ('72', '4', '0', '5', '10', '97');
INSERT INTO `psb_detailbiaya` VALUES ('73', '3', '0', '6', '1', '97');
INSERT INTO `psb_detailbiaya` VALUES ('74', '3', '0', '6', '2', '97');
INSERT INTO `psb_detailbiaya` VALUES ('75', '3', '0', '6', '3', '97');
INSERT INTO `psb_detailbiaya` VALUES ('76', '3', '0', '6', '4', '97');
INSERT INTO `psb_detailbiaya` VALUES ('77', '3', '0', '6', '5', '97');
INSERT INTO `psb_detailbiaya` VALUES ('78', '3', '0', '6', '6', '97');
INSERT INTO `psb_detailbiaya` VALUES ('79', '3', '0', '6', '7', '97');
INSERT INTO `psb_detailbiaya` VALUES ('80', '3', '0', '6', '9', '97');
INSERT INTO `psb_detailbiaya` VALUES ('81', '3', '0', '6', '10', '97');
INSERT INTO `psb_detailbiaya` VALUES ('82', '7', '0', '6', '1', '97');
INSERT INTO `psb_detailbiaya` VALUES ('83', '7', '0', '6', '2', '97');
INSERT INTO `psb_detailbiaya` VALUES ('84', '7', '0', '6', '3', '97');
INSERT INTO `psb_detailbiaya` VALUES ('85', '7', '0', '6', '4', '97');
INSERT INTO `psb_detailbiaya` VALUES ('86', '7', '0', '6', '5', '97');
INSERT INTO `psb_detailbiaya` VALUES ('87', '7', '0', '6', '6', '97');
INSERT INTO `psb_detailbiaya` VALUES ('88', '7', '0', '6', '7', '97');
INSERT INTO `psb_detailbiaya` VALUES ('89', '7', '0', '6', '9', '97');
INSERT INTO `psb_detailbiaya` VALUES ('90', '7', '0', '6', '10', '97');
INSERT INTO `psb_detailbiaya` VALUES ('91', '8', '0', '6', '1', '97');
INSERT INTO `psb_detailbiaya` VALUES ('92', '8', '0', '6', '2', '97');
INSERT INTO `psb_detailbiaya` VALUES ('93', '8', '0', '6', '3', '97');
INSERT INTO `psb_detailbiaya` VALUES ('94', '8', '0', '6', '4', '97');
INSERT INTO `psb_detailbiaya` VALUES ('95', '8', '0', '6', '5', '97');
INSERT INTO `psb_detailbiaya` VALUES ('96', '8', '0', '6', '6', '97');
INSERT INTO `psb_detailbiaya` VALUES ('97', '8', '0', '6', '7', '97');
INSERT INTO `psb_detailbiaya` VALUES ('98', '8', '0', '6', '9', '97');
INSERT INTO `psb_detailbiaya` VALUES ('99', '8', '0', '6', '10', '97');
INSERT INTO `psb_detailbiaya` VALUES ('100', '4', '0', '6', '1', '97');
INSERT INTO `psb_detailbiaya` VALUES ('101', '4', '0', '6', '2', '97');
INSERT INTO `psb_detailbiaya` VALUES ('102', '4', '0', '6', '3', '97');
INSERT INTO `psb_detailbiaya` VALUES ('103', '4', '0', '6', '4', '97');
INSERT INTO `psb_detailbiaya` VALUES ('104', '4', '0', '6', '5', '97');
INSERT INTO `psb_detailbiaya` VALUES ('105', '4', '0', '6', '6', '97');
INSERT INTO `psb_detailbiaya` VALUES ('106', '4', '0', '6', '7', '97');
INSERT INTO `psb_detailbiaya` VALUES ('107', '4', '0', '6', '9', '97');
INSERT INTO `psb_detailbiaya` VALUES ('108', '4', '0', '6', '10', '97');
INSERT INTO `psb_detailbiaya` VALUES ('109', '3', '0', '7', '1', '97');
INSERT INTO `psb_detailbiaya` VALUES ('110', '3', '0', '7', '2', '97');
INSERT INTO `psb_detailbiaya` VALUES ('111', '3', '0', '7', '3', '97');
INSERT INTO `psb_detailbiaya` VALUES ('112', '3', '0', '7', '4', '97');
INSERT INTO `psb_detailbiaya` VALUES ('113', '3', '0', '7', '5', '97');
INSERT INTO `psb_detailbiaya` VALUES ('114', '3', '0', '7', '6', '97');
INSERT INTO `psb_detailbiaya` VALUES ('115', '3', '0', '7', '7', '97');
INSERT INTO `psb_detailbiaya` VALUES ('116', '3', '0', '7', '9', '97');
INSERT INTO `psb_detailbiaya` VALUES ('117', '3', '0', '7', '10', '97');
INSERT INTO `psb_detailbiaya` VALUES ('118', '7', '0', '7', '1', '97');
INSERT INTO `psb_detailbiaya` VALUES ('119', '7', '0', '7', '2', '97');
INSERT INTO `psb_detailbiaya` VALUES ('120', '7', '0', '7', '3', '97');
INSERT INTO `psb_detailbiaya` VALUES ('121', '7', '0', '7', '4', '97');
INSERT INTO `psb_detailbiaya` VALUES ('122', '7', '0', '7', '5', '97');
INSERT INTO `psb_detailbiaya` VALUES ('123', '7', '0', '7', '6', '97');
INSERT INTO `psb_detailbiaya` VALUES ('124', '7', '0', '7', '7', '97');
INSERT INTO `psb_detailbiaya` VALUES ('125', '7', '0', '7', '9', '97');
INSERT INTO `psb_detailbiaya` VALUES ('126', '7', '0', '7', '10', '97');
INSERT INTO `psb_detailbiaya` VALUES ('127', '8', '0', '7', '1', '97');
INSERT INTO `psb_detailbiaya` VALUES ('128', '8', '0', '7', '2', '97');
INSERT INTO `psb_detailbiaya` VALUES ('129', '8', '0', '7', '3', '97');
INSERT INTO `psb_detailbiaya` VALUES ('130', '8', '0', '7', '4', '97');
INSERT INTO `psb_detailbiaya` VALUES ('131', '8', '0', '7', '5', '97');
INSERT INTO `psb_detailbiaya` VALUES ('132', '8', '0', '7', '6', '97');
INSERT INTO `psb_detailbiaya` VALUES ('133', '8', '0', '7', '7', '97');
INSERT INTO `psb_detailbiaya` VALUES ('134', '8', '0', '7', '9', '97');
INSERT INTO `psb_detailbiaya` VALUES ('135', '8', '0', '7', '10', '97');
INSERT INTO `psb_detailbiaya` VALUES ('136', '4', '0', '7', '1', '97');
INSERT INTO `psb_detailbiaya` VALUES ('137', '4', '0', '7', '2', '97');
INSERT INTO `psb_detailbiaya` VALUES ('138', '4', '0', '7', '3', '97');
INSERT INTO `psb_detailbiaya` VALUES ('139', '4', '0', '7', '4', '97');
INSERT INTO `psb_detailbiaya` VALUES ('140', '4', '0', '7', '5', '97');
INSERT INTO `psb_detailbiaya` VALUES ('141', '4', '0', '7', '6', '97');
INSERT INTO `psb_detailbiaya` VALUES ('142', '4', '0', '7', '7', '97');
INSERT INTO `psb_detailbiaya` VALUES ('143', '4', '0', '7', '9', '97');
INSERT INTO `psb_detailbiaya` VALUES ('144', '4', '0', '7', '10', '97');
INSERT INTO `psb_detailbiaya` VALUES ('145', '3', '0', '8', '1', '97');
INSERT INTO `psb_detailbiaya` VALUES ('146', '3', '0', '8', '2', '97');
INSERT INTO `psb_detailbiaya` VALUES ('147', '3', '0', '8', '3', '97');
INSERT INTO `psb_detailbiaya` VALUES ('148', '3', '0', '8', '4', '97');
INSERT INTO `psb_detailbiaya` VALUES ('149', '3', '0', '8', '5', '97');
INSERT INTO `psb_detailbiaya` VALUES ('150', '3', '0', '8', '6', '97');
INSERT INTO `psb_detailbiaya` VALUES ('151', '3', '0', '8', '7', '97');
INSERT INTO `psb_detailbiaya` VALUES ('152', '3', '0', '8', '9', '97');
INSERT INTO `psb_detailbiaya` VALUES ('153', '3', '0', '8', '10', '97');
INSERT INTO `psb_detailbiaya` VALUES ('154', '7', '0', '8', '1', '97');
INSERT INTO `psb_detailbiaya` VALUES ('155', '7', '0', '8', '2', '97');
INSERT INTO `psb_detailbiaya` VALUES ('156', '7', '0', '8', '3', '97');
INSERT INTO `psb_detailbiaya` VALUES ('157', '7', '0', '8', '4', '97');
INSERT INTO `psb_detailbiaya` VALUES ('158', '7', '0', '8', '5', '97');
INSERT INTO `psb_detailbiaya` VALUES ('159', '7', '0', '8', '6', '97');
INSERT INTO `psb_detailbiaya` VALUES ('160', '7', '0', '8', '7', '97');
INSERT INTO `psb_detailbiaya` VALUES ('161', '7', '0', '8', '9', '97');
INSERT INTO `psb_detailbiaya` VALUES ('162', '7', '0', '8', '10', '97');
INSERT INTO `psb_detailbiaya` VALUES ('163', '8', '0', '8', '1', '97');
INSERT INTO `psb_detailbiaya` VALUES ('164', '8', '0', '8', '2', '97');
INSERT INTO `psb_detailbiaya` VALUES ('165', '8', '0', '8', '3', '97');
INSERT INTO `psb_detailbiaya` VALUES ('166', '8', '0', '8', '4', '97');
INSERT INTO `psb_detailbiaya` VALUES ('167', '8', '0', '8', '5', '97');
INSERT INTO `psb_detailbiaya` VALUES ('168', '8', '0', '8', '6', '97');
INSERT INTO `psb_detailbiaya` VALUES ('169', '8', '0', '8', '7', '97');
INSERT INTO `psb_detailbiaya` VALUES ('170', '8', '0', '8', '9', '97');
INSERT INTO `psb_detailbiaya` VALUES ('171', '8', '0', '8', '10', '97');
INSERT INTO `psb_detailbiaya` VALUES ('172', '4', '0', '8', '1', '97');
INSERT INTO `psb_detailbiaya` VALUES ('173', '4', '0', '8', '2', '97');
INSERT INTO `psb_detailbiaya` VALUES ('174', '4', '0', '8', '3', '97');
INSERT INTO `psb_detailbiaya` VALUES ('175', '4', '0', '8', '4', '97');
INSERT INTO `psb_detailbiaya` VALUES ('176', '4', '0', '8', '5', '97');
INSERT INTO `psb_detailbiaya` VALUES ('177', '4', '0', '8', '6', '97');
INSERT INTO `psb_detailbiaya` VALUES ('178', '4', '0', '8', '7', '97');
INSERT INTO `psb_detailbiaya` VALUES ('179', '4', '0', '8', '9', '97');
INSERT INTO `psb_detailbiaya` VALUES ('180', '4', '0', '8', '10', '97');
INSERT INTO `psb_detailbiaya` VALUES ('181', '3', '0', '9', '1', '97');
INSERT INTO `psb_detailbiaya` VALUES ('182', '3', '0', '9', '2', '97');
INSERT INTO `psb_detailbiaya` VALUES ('183', '3', '0', '9', '3', '97');
INSERT INTO `psb_detailbiaya` VALUES ('184', '3', '0', '9', '4', '97');
INSERT INTO `psb_detailbiaya` VALUES ('185', '3', '0', '9', '5', '97');
INSERT INTO `psb_detailbiaya` VALUES ('186', '3', '0', '9', '6', '97');
INSERT INTO `psb_detailbiaya` VALUES ('187', '3', '0', '9', '7', '97');
INSERT INTO `psb_detailbiaya` VALUES ('188', '3', '0', '9', '9', '97');
INSERT INTO `psb_detailbiaya` VALUES ('189', '3', '0', '9', '10', '97');
INSERT INTO `psb_detailbiaya` VALUES ('190', '7', '0', '9', '1', '97');
INSERT INTO `psb_detailbiaya` VALUES ('191', '7', '0', '9', '2', '97');
INSERT INTO `psb_detailbiaya` VALUES ('192', '7', '0', '9', '3', '97');
INSERT INTO `psb_detailbiaya` VALUES ('193', '7', '0', '9', '4', '97');
INSERT INTO `psb_detailbiaya` VALUES ('194', '7', '0', '9', '5', '97');
INSERT INTO `psb_detailbiaya` VALUES ('195', '7', '0', '9', '6', '97');
INSERT INTO `psb_detailbiaya` VALUES ('196', '7', '0', '9', '7', '97');
INSERT INTO `psb_detailbiaya` VALUES ('197', '7', '0', '9', '9', '97');
INSERT INTO `psb_detailbiaya` VALUES ('198', '7', '0', '9', '10', '97');
INSERT INTO `psb_detailbiaya` VALUES ('199', '8', '0', '9', '1', '97');
INSERT INTO `psb_detailbiaya` VALUES ('200', '8', '0', '9', '2', '97');
INSERT INTO `psb_detailbiaya` VALUES ('201', '8', '0', '9', '3', '97');
INSERT INTO `psb_detailbiaya` VALUES ('202', '8', '0', '9', '4', '97');
INSERT INTO `psb_detailbiaya` VALUES ('203', '8', '0', '9', '5', '97');
INSERT INTO `psb_detailbiaya` VALUES ('204', '8', '0', '9', '6', '97');
INSERT INTO `psb_detailbiaya` VALUES ('205', '8', '0', '9', '7', '97');
INSERT INTO `psb_detailbiaya` VALUES ('206', '8', '0', '9', '9', '97');
INSERT INTO `psb_detailbiaya` VALUES ('207', '8', '0', '9', '10', '97');
INSERT INTO `psb_detailbiaya` VALUES ('208', '4', '0', '9', '1', '97');
INSERT INTO `psb_detailbiaya` VALUES ('209', '4', '0', '9', '2', '97');
INSERT INTO `psb_detailbiaya` VALUES ('210', '4', '0', '9', '3', '97');
INSERT INTO `psb_detailbiaya` VALUES ('211', '4', '0', '9', '4', '97');
INSERT INTO `psb_detailbiaya` VALUES ('212', '4', '0', '9', '5', '97');
INSERT INTO `psb_detailbiaya` VALUES ('213', '4', '0', '9', '6', '97');
INSERT INTO `psb_detailbiaya` VALUES ('214', '4', '0', '9', '7', '97');
INSERT INTO `psb_detailbiaya` VALUES ('215', '4', '0', '9', '9', '97');
INSERT INTO `psb_detailbiaya` VALUES ('216', '4', '0', '9', '10', '97');
INSERT INTO `psb_detailbiaya` VALUES ('217', '3', '0', '10', '1', '97');
INSERT INTO `psb_detailbiaya` VALUES ('218', '3', '0', '10', '2', '97');
INSERT INTO `psb_detailbiaya` VALUES ('219', '3', '0', '10', '3', '97');
INSERT INTO `psb_detailbiaya` VALUES ('220', '3', '0', '10', '4', '97');
INSERT INTO `psb_detailbiaya` VALUES ('221', '3', '0', '10', '5', '97');
INSERT INTO `psb_detailbiaya` VALUES ('222', '3', '0', '10', '6', '97');
INSERT INTO `psb_detailbiaya` VALUES ('223', '3', '0', '10', '7', '97');
INSERT INTO `psb_detailbiaya` VALUES ('224', '3', '0', '10', '9', '97');
INSERT INTO `psb_detailbiaya` VALUES ('225', '3', '0', '10', '10', '97');
INSERT INTO `psb_detailbiaya` VALUES ('226', '7', '0', '10', '1', '97');
INSERT INTO `psb_detailbiaya` VALUES ('227', '7', '0', '10', '2', '97');
INSERT INTO `psb_detailbiaya` VALUES ('228', '7', '0', '10', '3', '97');
INSERT INTO `psb_detailbiaya` VALUES ('229', '7', '0', '10', '4', '97');
INSERT INTO `psb_detailbiaya` VALUES ('230', '7', '0', '10', '5', '97');
INSERT INTO `psb_detailbiaya` VALUES ('231', '7', '0', '10', '6', '97');
INSERT INTO `psb_detailbiaya` VALUES ('232', '7', '0', '10', '7', '97');
INSERT INTO `psb_detailbiaya` VALUES ('233', '7', '0', '10', '9', '97');
INSERT INTO `psb_detailbiaya` VALUES ('234', '7', '0', '10', '10', '97');
INSERT INTO `psb_detailbiaya` VALUES ('235', '8', '0', '10', '1', '97');
INSERT INTO `psb_detailbiaya` VALUES ('236', '8', '0', '10', '2', '97');
INSERT INTO `psb_detailbiaya` VALUES ('237', '8', '0', '10', '3', '97');
INSERT INTO `psb_detailbiaya` VALUES ('238', '8', '0', '10', '4', '97');
INSERT INTO `psb_detailbiaya` VALUES ('239', '8', '0', '10', '5', '97');
INSERT INTO `psb_detailbiaya` VALUES ('240', '8', '0', '10', '6', '97');
INSERT INTO `psb_detailbiaya` VALUES ('241', '8', '0', '10', '7', '97');
INSERT INTO `psb_detailbiaya` VALUES ('242', '8', '0', '10', '9', '97');
INSERT INTO `psb_detailbiaya` VALUES ('243', '8', '0', '10', '10', '97');
INSERT INTO `psb_detailbiaya` VALUES ('244', '4', '0', '10', '1', '97');
INSERT INTO `psb_detailbiaya` VALUES ('245', '4', '0', '10', '2', '97');
INSERT INTO `psb_detailbiaya` VALUES ('246', '4', '0', '10', '3', '97');
INSERT INTO `psb_detailbiaya` VALUES ('247', '4', '0', '10', '4', '97');
INSERT INTO `psb_detailbiaya` VALUES ('248', '4', '0', '10', '5', '97');
INSERT INTO `psb_detailbiaya` VALUES ('249', '4', '0', '10', '6', '97');
INSERT INTO `psb_detailbiaya` VALUES ('250', '4', '0', '10', '7', '97');
INSERT INTO `psb_detailbiaya` VALUES ('251', '4', '0', '10', '9', '97');
INSERT INTO `psb_detailbiaya` VALUES ('252', '4', '0', '10', '10', '97');
INSERT INTO `psb_detailbiaya` VALUES ('253', '3', '0', '11', '1', '97');
INSERT INTO `psb_detailbiaya` VALUES ('254', '3', '0', '11', '2', '97');
INSERT INTO `psb_detailbiaya` VALUES ('255', '3', '0', '11', '3', '97');
INSERT INTO `psb_detailbiaya` VALUES ('256', '3', '0', '11', '4', '97');
INSERT INTO `psb_detailbiaya` VALUES ('257', '3', '0', '11', '5', '97');
INSERT INTO `psb_detailbiaya` VALUES ('258', '3', '0', '11', '6', '97');
INSERT INTO `psb_detailbiaya` VALUES ('259', '3', '0', '11', '7', '97');
INSERT INTO `psb_detailbiaya` VALUES ('260', '3', '0', '11', '9', '97');
INSERT INTO `psb_detailbiaya` VALUES ('261', '3', '0', '11', '10', '97');
INSERT INTO `psb_detailbiaya` VALUES ('262', '7', '0', '11', '1', '97');
INSERT INTO `psb_detailbiaya` VALUES ('263', '7', '0', '11', '2', '97');
INSERT INTO `psb_detailbiaya` VALUES ('264', '7', '0', '11', '3', '97');
INSERT INTO `psb_detailbiaya` VALUES ('265', '7', '0', '11', '4', '97');
INSERT INTO `psb_detailbiaya` VALUES ('266', '7', '0', '11', '5', '97');
INSERT INTO `psb_detailbiaya` VALUES ('267', '7', '0', '11', '6', '97');
INSERT INTO `psb_detailbiaya` VALUES ('268', '7', '0', '11', '7', '97');
INSERT INTO `psb_detailbiaya` VALUES ('269', '7', '0', '11', '9', '97');
INSERT INTO `psb_detailbiaya` VALUES ('270', '7', '0', '11', '10', '97');
INSERT INTO `psb_detailbiaya` VALUES ('271', '8', '0', '11', '1', '97');
INSERT INTO `psb_detailbiaya` VALUES ('272', '8', '0', '11', '2', '97');
INSERT INTO `psb_detailbiaya` VALUES ('273', '8', '0', '11', '3', '97');
INSERT INTO `psb_detailbiaya` VALUES ('274', '8', '0', '11', '4', '97');
INSERT INTO `psb_detailbiaya` VALUES ('275', '8', '0', '11', '5', '97');
INSERT INTO `psb_detailbiaya` VALUES ('276', '8', '0', '11', '6', '97');
INSERT INTO `psb_detailbiaya` VALUES ('277', '8', '0', '11', '7', '97');
INSERT INTO `psb_detailbiaya` VALUES ('278', '8', '0', '11', '9', '97');
INSERT INTO `psb_detailbiaya` VALUES ('279', '8', '0', '11', '10', '97');
INSERT INTO `psb_detailbiaya` VALUES ('280', '4', '0', '11', '1', '97');
INSERT INTO `psb_detailbiaya` VALUES ('281', '4', '0', '11', '2', '97');
INSERT INTO `psb_detailbiaya` VALUES ('282', '4', '0', '11', '3', '97');
INSERT INTO `psb_detailbiaya` VALUES ('283', '4', '0', '11', '4', '97');
INSERT INTO `psb_detailbiaya` VALUES ('284', '4', '0', '11', '5', '97');
INSERT INTO `psb_detailbiaya` VALUES ('285', '4', '0', '11', '6', '97');
INSERT INTO `psb_detailbiaya` VALUES ('286', '4', '0', '11', '7', '97');
INSERT INTO `psb_detailbiaya` VALUES ('287', '4', '0', '11', '9', '97');
INSERT INTO `psb_detailbiaya` VALUES ('288', '4', '0', '11', '10', '97');
INSERT INTO `psb_detailbiaya` VALUES ('289', '3', '0', '12', '1', '97');
INSERT INTO `psb_detailbiaya` VALUES ('290', '3', '0', '12', '2', '97');
INSERT INTO `psb_detailbiaya` VALUES ('291', '3', '0', '12', '3', '97');
INSERT INTO `psb_detailbiaya` VALUES ('292', '3', '0', '12', '4', '97');
INSERT INTO `psb_detailbiaya` VALUES ('293', '3', '0', '12', '5', '97');
INSERT INTO `psb_detailbiaya` VALUES ('294', '3', '0', '12', '6', '97');
INSERT INTO `psb_detailbiaya` VALUES ('295', '3', '0', '12', '7', '97');
INSERT INTO `psb_detailbiaya` VALUES ('296', '3', '0', '12', '9', '97');
INSERT INTO `psb_detailbiaya` VALUES ('297', '3', '0', '12', '10', '97');
INSERT INTO `psb_detailbiaya` VALUES ('298', '7', '0', '12', '1', '97');
INSERT INTO `psb_detailbiaya` VALUES ('299', '7', '0', '12', '2', '97');
INSERT INTO `psb_detailbiaya` VALUES ('300', '7', '0', '12', '3', '97');
INSERT INTO `psb_detailbiaya` VALUES ('301', '7', '0', '12', '4', '97');
INSERT INTO `psb_detailbiaya` VALUES ('302', '7', '0', '12', '5', '97');
INSERT INTO `psb_detailbiaya` VALUES ('303', '7', '0', '12', '6', '97');
INSERT INTO `psb_detailbiaya` VALUES ('304', '7', '0', '12', '7', '97');
INSERT INTO `psb_detailbiaya` VALUES ('305', '7', '0', '12', '9', '97');
INSERT INTO `psb_detailbiaya` VALUES ('306', '7', '0', '12', '10', '97');
INSERT INTO `psb_detailbiaya` VALUES ('307', '8', '0', '12', '1', '97');
INSERT INTO `psb_detailbiaya` VALUES ('308', '8', '0', '12', '2', '97');
INSERT INTO `psb_detailbiaya` VALUES ('309', '8', '0', '12', '3', '97');
INSERT INTO `psb_detailbiaya` VALUES ('310', '8', '0', '12', '4', '97');
INSERT INTO `psb_detailbiaya` VALUES ('311', '8', '0', '12', '5', '97');
INSERT INTO `psb_detailbiaya` VALUES ('312', '8', '0', '12', '6', '97');
INSERT INTO `psb_detailbiaya` VALUES ('313', '8', '0', '12', '7', '97');
INSERT INTO `psb_detailbiaya` VALUES ('314', '8', '0', '12', '9', '97');
INSERT INTO `psb_detailbiaya` VALUES ('315', '8', '0', '12', '10', '97');
INSERT INTO `psb_detailbiaya` VALUES ('316', '4', '0', '12', '1', '97');
INSERT INTO `psb_detailbiaya` VALUES ('317', '4', '0', '12', '2', '97');
INSERT INTO `psb_detailbiaya` VALUES ('318', '4', '0', '12', '3', '97');
INSERT INTO `psb_detailbiaya` VALUES ('319', '4', '0', '12', '4', '97');
INSERT INTO `psb_detailbiaya` VALUES ('320', '4', '0', '12', '5', '97');
INSERT INTO `psb_detailbiaya` VALUES ('321', '4', '0', '12', '6', '97');
INSERT INTO `psb_detailbiaya` VALUES ('322', '4', '0', '12', '7', '97');
INSERT INTO `psb_detailbiaya` VALUES ('323', '4', '0', '12', '9', '97');
INSERT INTO `psb_detailbiaya` VALUES ('324', '4', '0', '12', '10', '97');
INSERT INTO `psb_detailbiaya` VALUES ('325', '3', '0', '13', '1', '97');
INSERT INTO `psb_detailbiaya` VALUES ('326', '3', '0', '13', '2', '97');
INSERT INTO `psb_detailbiaya` VALUES ('327', '3', '0', '13', '3', '97');
INSERT INTO `psb_detailbiaya` VALUES ('328', '3', '0', '13', '4', '97');
INSERT INTO `psb_detailbiaya` VALUES ('329', '3', '0', '13', '5', '97');
INSERT INTO `psb_detailbiaya` VALUES ('330', '3', '0', '13', '6', '97');
INSERT INTO `psb_detailbiaya` VALUES ('331', '3', '0', '13', '7', '97');
INSERT INTO `psb_detailbiaya` VALUES ('332', '3', '0', '13', '9', '97');
INSERT INTO `psb_detailbiaya` VALUES ('333', '3', '0', '13', '10', '97');
INSERT INTO `psb_detailbiaya` VALUES ('334', '7', '0', '13', '1', '97');
INSERT INTO `psb_detailbiaya` VALUES ('335', '7', '0', '13', '2', '97');
INSERT INTO `psb_detailbiaya` VALUES ('336', '7', '0', '13', '3', '97');
INSERT INTO `psb_detailbiaya` VALUES ('337', '7', '0', '13', '4', '97');
INSERT INTO `psb_detailbiaya` VALUES ('338', '7', '0', '13', '5', '97');
INSERT INTO `psb_detailbiaya` VALUES ('339', '7', '0', '13', '6', '97');
INSERT INTO `psb_detailbiaya` VALUES ('340', '7', '0', '13', '7', '97');
INSERT INTO `psb_detailbiaya` VALUES ('341', '7', '0', '13', '9', '97');
INSERT INTO `psb_detailbiaya` VALUES ('342', '7', '0', '13', '10', '97');
INSERT INTO `psb_detailbiaya` VALUES ('343', '8', '0', '13', '1', '97');
INSERT INTO `psb_detailbiaya` VALUES ('344', '8', '0', '13', '2', '97');
INSERT INTO `psb_detailbiaya` VALUES ('345', '8', '0', '13', '3', '97');
INSERT INTO `psb_detailbiaya` VALUES ('346', '8', '0', '13', '4', '97');
INSERT INTO `psb_detailbiaya` VALUES ('347', '8', '0', '13', '5', '97');
INSERT INTO `psb_detailbiaya` VALUES ('348', '8', '0', '13', '6', '97');
INSERT INTO `psb_detailbiaya` VALUES ('349', '8', '0', '13', '7', '97');
INSERT INTO `psb_detailbiaya` VALUES ('350', '8', '0', '13', '9', '97');
INSERT INTO `psb_detailbiaya` VALUES ('351', '8', '0', '13', '10', '97');
INSERT INTO `psb_detailbiaya` VALUES ('352', '4', '0', '13', '1', '97');
INSERT INTO `psb_detailbiaya` VALUES ('353', '4', '0', '13', '2', '97');
INSERT INTO `psb_detailbiaya` VALUES ('354', '4', '0', '13', '3', '97');
INSERT INTO `psb_detailbiaya` VALUES ('355', '4', '0', '13', '4', '97');
INSERT INTO `psb_detailbiaya` VALUES ('356', '4', '0', '13', '5', '97');
INSERT INTO `psb_detailbiaya` VALUES ('357', '4', '0', '13', '6', '97');
INSERT INTO `psb_detailbiaya` VALUES ('358', '4', '0', '13', '7', '97');
INSERT INTO `psb_detailbiaya` VALUES ('359', '4', '0', '13', '9', '97');
INSERT INTO `psb_detailbiaya` VALUES ('360', '4', '0', '13', '10', '97');
INSERT INTO `psb_detailbiaya` VALUES ('361', '3', '0', '14', '1', '97');
INSERT INTO `psb_detailbiaya` VALUES ('362', '3', '0', '14', '2', '97');
INSERT INTO `psb_detailbiaya` VALUES ('363', '3', '0', '14', '3', '97');
INSERT INTO `psb_detailbiaya` VALUES ('364', '3', '0', '14', '4', '97');
INSERT INTO `psb_detailbiaya` VALUES ('365', '3', '0', '14', '5', '97');
INSERT INTO `psb_detailbiaya` VALUES ('366', '3', '0', '14', '6', '97');
INSERT INTO `psb_detailbiaya` VALUES ('367', '3', '0', '14', '7', '97');
INSERT INTO `psb_detailbiaya` VALUES ('368', '3', '0', '14', '9', '97');
INSERT INTO `psb_detailbiaya` VALUES ('369', '3', '0', '14', '10', '97');
INSERT INTO `psb_detailbiaya` VALUES ('370', '7', '0', '14', '1', '97');
INSERT INTO `psb_detailbiaya` VALUES ('371', '7', '0', '14', '2', '97');
INSERT INTO `psb_detailbiaya` VALUES ('372', '7', '0', '14', '3', '97');
INSERT INTO `psb_detailbiaya` VALUES ('373', '7', '0', '14', '4', '97');
INSERT INTO `psb_detailbiaya` VALUES ('374', '7', '0', '14', '5', '97');
INSERT INTO `psb_detailbiaya` VALUES ('375', '7', '0', '14', '6', '97');
INSERT INTO `psb_detailbiaya` VALUES ('376', '7', '0', '14', '7', '97');
INSERT INTO `psb_detailbiaya` VALUES ('377', '7', '0', '14', '9', '97');
INSERT INTO `psb_detailbiaya` VALUES ('378', '7', '0', '14', '10', '97');
INSERT INTO `psb_detailbiaya` VALUES ('379', '8', '0', '14', '1', '97');
INSERT INTO `psb_detailbiaya` VALUES ('380', '8', '0', '14', '2', '97');
INSERT INTO `psb_detailbiaya` VALUES ('381', '8', '0', '14', '3', '97');
INSERT INTO `psb_detailbiaya` VALUES ('382', '8', '0', '14', '4', '97');
INSERT INTO `psb_detailbiaya` VALUES ('383', '8', '0', '14', '5', '97');
INSERT INTO `psb_detailbiaya` VALUES ('384', '8', '0', '14', '6', '97');
INSERT INTO `psb_detailbiaya` VALUES ('385', '8', '0', '14', '7', '97');
INSERT INTO `psb_detailbiaya` VALUES ('386', '8', '0', '14', '9', '97');
INSERT INTO `psb_detailbiaya` VALUES ('387', '8', '0', '14', '10', '97');
INSERT INTO `psb_detailbiaya` VALUES ('388', '4', '0', '14', '1', '97');
INSERT INTO `psb_detailbiaya` VALUES ('389', '4', '0', '14', '2', '97');
INSERT INTO `psb_detailbiaya` VALUES ('390', '4', '0', '14', '3', '97');
INSERT INTO `psb_detailbiaya` VALUES ('391', '4', '0', '14', '4', '97');
INSERT INTO `psb_detailbiaya` VALUES ('392', '4', '0', '14', '5', '97');
INSERT INTO `psb_detailbiaya` VALUES ('393', '4', '0', '14', '6', '97');
INSERT INTO `psb_detailbiaya` VALUES ('394', '4', '0', '14', '7', '97');
INSERT INTO `psb_detailbiaya` VALUES ('395', '4', '0', '14', '9', '97');
INSERT INTO `psb_detailbiaya` VALUES ('396', '4', '0', '14', '10', '97');
INSERT INTO `psb_detailbiaya` VALUES ('397', '3', '0', '15', '1', '97');
INSERT INTO `psb_detailbiaya` VALUES ('398', '3', '0', '15', '2', '97');
INSERT INTO `psb_detailbiaya` VALUES ('399', '3', '0', '15', '3', '97');
INSERT INTO `psb_detailbiaya` VALUES ('400', '3', '0', '15', '4', '97');
INSERT INTO `psb_detailbiaya` VALUES ('401', '3', '0', '15', '5', '97');
INSERT INTO `psb_detailbiaya` VALUES ('402', '3', '0', '15', '6', '97');
INSERT INTO `psb_detailbiaya` VALUES ('403', '3', '0', '15', '7', '97');
INSERT INTO `psb_detailbiaya` VALUES ('404', '3', '0', '15', '9', '97');
INSERT INTO `psb_detailbiaya` VALUES ('405', '3', '0', '15', '10', '97');
INSERT INTO `psb_detailbiaya` VALUES ('406', '7', '0', '15', '1', '97');
INSERT INTO `psb_detailbiaya` VALUES ('407', '7', '0', '15', '2', '97');
INSERT INTO `psb_detailbiaya` VALUES ('408', '7', '0', '15', '3', '97');
INSERT INTO `psb_detailbiaya` VALUES ('409', '7', '0', '15', '4', '97');
INSERT INTO `psb_detailbiaya` VALUES ('410', '7', '0', '15', '5', '97');
INSERT INTO `psb_detailbiaya` VALUES ('411', '7', '0', '15', '6', '97');
INSERT INTO `psb_detailbiaya` VALUES ('412', '7', '0', '15', '7', '97');
INSERT INTO `psb_detailbiaya` VALUES ('413', '7', '0', '15', '9', '97');
INSERT INTO `psb_detailbiaya` VALUES ('414', '7', '0', '15', '10', '97');
INSERT INTO `psb_detailbiaya` VALUES ('415', '8', '0', '15', '1', '97');
INSERT INTO `psb_detailbiaya` VALUES ('416', '8', '0', '15', '2', '97');
INSERT INTO `psb_detailbiaya` VALUES ('417', '8', '0', '15', '3', '97');
INSERT INTO `psb_detailbiaya` VALUES ('418', '8', '0', '15', '4', '97');
INSERT INTO `psb_detailbiaya` VALUES ('419', '8', '0', '15', '5', '97');
INSERT INTO `psb_detailbiaya` VALUES ('420', '8', '0', '15', '6', '97');
INSERT INTO `psb_detailbiaya` VALUES ('421', '8', '0', '15', '7', '97');
INSERT INTO `psb_detailbiaya` VALUES ('422', '8', '0', '15', '9', '97');
INSERT INTO `psb_detailbiaya` VALUES ('423', '8', '0', '15', '10', '97');
INSERT INTO `psb_detailbiaya` VALUES ('424', '4', '0', '15', '1', '97');
INSERT INTO `psb_detailbiaya` VALUES ('425', '4', '0', '15', '2', '97');
INSERT INTO `psb_detailbiaya` VALUES ('426', '4', '0', '15', '3', '97');
INSERT INTO `psb_detailbiaya` VALUES ('427', '4', '0', '15', '4', '97');
INSERT INTO `psb_detailbiaya` VALUES ('428', '4', '0', '15', '5', '97');
INSERT INTO `psb_detailbiaya` VALUES ('429', '4', '0', '15', '6', '97');
INSERT INTO `psb_detailbiaya` VALUES ('430', '4', '0', '15', '7', '97');
INSERT INTO `psb_detailbiaya` VALUES ('431', '4', '0', '15', '9', '97');
INSERT INTO `psb_detailbiaya` VALUES ('432', '4', '0', '15', '10', '97');
INSERT INTO `psb_detailbiaya` VALUES ('433', '3', '0', '16', '1', '97');
INSERT INTO `psb_detailbiaya` VALUES ('434', '3', '0', '16', '2', '97');
INSERT INTO `psb_detailbiaya` VALUES ('435', '3', '0', '16', '3', '97');
INSERT INTO `psb_detailbiaya` VALUES ('436', '3', '0', '16', '4', '97');
INSERT INTO `psb_detailbiaya` VALUES ('437', '3', '0', '16', '5', '97');
INSERT INTO `psb_detailbiaya` VALUES ('438', '3', '0', '16', '6', '97');
INSERT INTO `psb_detailbiaya` VALUES ('439', '3', '0', '16', '7', '97');
INSERT INTO `psb_detailbiaya` VALUES ('440', '3', '0', '16', '9', '97');
INSERT INTO `psb_detailbiaya` VALUES ('441', '3', '0', '16', '10', '97');
INSERT INTO `psb_detailbiaya` VALUES ('442', '7', '0', '16', '1', '97');
INSERT INTO `psb_detailbiaya` VALUES ('443', '7', '0', '16', '2', '97');
INSERT INTO `psb_detailbiaya` VALUES ('444', '7', '0', '16', '3', '97');
INSERT INTO `psb_detailbiaya` VALUES ('445', '7', '0', '16', '4', '97');
INSERT INTO `psb_detailbiaya` VALUES ('446', '7', '0', '16', '5', '97');
INSERT INTO `psb_detailbiaya` VALUES ('447', '7', '0', '16', '6', '97');
INSERT INTO `psb_detailbiaya` VALUES ('448', '7', '0', '16', '7', '97');
INSERT INTO `psb_detailbiaya` VALUES ('449', '7', '0', '16', '9', '97');
INSERT INTO `psb_detailbiaya` VALUES ('450', '7', '0', '16', '10', '97');
INSERT INTO `psb_detailbiaya` VALUES ('451', '8', '0', '16', '1', '97');
INSERT INTO `psb_detailbiaya` VALUES ('452', '8', '0', '16', '2', '97');
INSERT INTO `psb_detailbiaya` VALUES ('453', '8', '0', '16', '3', '97');
INSERT INTO `psb_detailbiaya` VALUES ('454', '8', '0', '16', '4', '97');
INSERT INTO `psb_detailbiaya` VALUES ('455', '8', '0', '16', '5', '97');
INSERT INTO `psb_detailbiaya` VALUES ('456', '8', '0', '16', '6', '97');
INSERT INTO `psb_detailbiaya` VALUES ('457', '8', '0', '16', '7', '97');
INSERT INTO `psb_detailbiaya` VALUES ('458', '8', '0', '16', '9', '97');
INSERT INTO `psb_detailbiaya` VALUES ('459', '8', '0', '16', '10', '97');
INSERT INTO `psb_detailbiaya` VALUES ('460', '4', '0', '16', '1', '97');
INSERT INTO `psb_detailbiaya` VALUES ('461', '4', '0', '16', '2', '97');
INSERT INTO `psb_detailbiaya` VALUES ('462', '4', '0', '16', '3', '97');
INSERT INTO `psb_detailbiaya` VALUES ('463', '4', '0', '16', '4', '97');
INSERT INTO `psb_detailbiaya` VALUES ('464', '4', '0', '16', '5', '97');
INSERT INTO `psb_detailbiaya` VALUES ('465', '4', '0', '16', '6', '97');
INSERT INTO `psb_detailbiaya` VALUES ('466', '4', '0', '16', '7', '97');
INSERT INTO `psb_detailbiaya` VALUES ('467', '4', '0', '16', '9', '97');
INSERT INTO `psb_detailbiaya` VALUES ('468', '4', '0', '16', '10', '97');
INSERT INTO `psb_detailbiaya` VALUES ('469', '3', '0', '17', '1', '97');
INSERT INTO `psb_detailbiaya` VALUES ('470', '3', '0', '17', '2', '97');
INSERT INTO `psb_detailbiaya` VALUES ('471', '3', '0', '17', '3', '97');
INSERT INTO `psb_detailbiaya` VALUES ('472', '3', '0', '17', '4', '97');
INSERT INTO `psb_detailbiaya` VALUES ('473', '3', '0', '17', '5', '97');
INSERT INTO `psb_detailbiaya` VALUES ('474', '3', '0', '17', '6', '97');
INSERT INTO `psb_detailbiaya` VALUES ('475', '3', '0', '17', '7', '97');
INSERT INTO `psb_detailbiaya` VALUES ('476', '3', '0', '17', '9', '97');
INSERT INTO `psb_detailbiaya` VALUES ('477', '3', '0', '17', '10', '97');
INSERT INTO `psb_detailbiaya` VALUES ('478', '7', '0', '17', '1', '97');
INSERT INTO `psb_detailbiaya` VALUES ('479', '7', '0', '17', '2', '97');
INSERT INTO `psb_detailbiaya` VALUES ('480', '7', '0', '17', '3', '97');
INSERT INTO `psb_detailbiaya` VALUES ('481', '7', '0', '17', '4', '97');
INSERT INTO `psb_detailbiaya` VALUES ('482', '7', '0', '17', '5', '97');
INSERT INTO `psb_detailbiaya` VALUES ('483', '7', '0', '17', '6', '97');
INSERT INTO `psb_detailbiaya` VALUES ('484', '7', '0', '17', '7', '97');
INSERT INTO `psb_detailbiaya` VALUES ('485', '7', '0', '17', '9', '97');
INSERT INTO `psb_detailbiaya` VALUES ('486', '7', '0', '17', '10', '97');
INSERT INTO `psb_detailbiaya` VALUES ('487', '8', '0', '17', '1', '97');
INSERT INTO `psb_detailbiaya` VALUES ('488', '8', '0', '17', '2', '97');
INSERT INTO `psb_detailbiaya` VALUES ('489', '8', '0', '17', '3', '97');
INSERT INTO `psb_detailbiaya` VALUES ('490', '8', '0', '17', '4', '97');
INSERT INTO `psb_detailbiaya` VALUES ('491', '8', '0', '17', '5', '97');
INSERT INTO `psb_detailbiaya` VALUES ('492', '8', '0', '17', '6', '97');
INSERT INTO `psb_detailbiaya` VALUES ('493', '8', '0', '17', '7', '97');
INSERT INTO `psb_detailbiaya` VALUES ('494', '8', '0', '17', '9', '97');
INSERT INTO `psb_detailbiaya` VALUES ('495', '8', '0', '17', '10', '97');
INSERT INTO `psb_detailbiaya` VALUES ('496', '4', '0', '17', '1', '97');
INSERT INTO `psb_detailbiaya` VALUES ('497', '4', '0', '17', '2', '97');
INSERT INTO `psb_detailbiaya` VALUES ('498', '4', '0', '17', '3', '97');
INSERT INTO `psb_detailbiaya` VALUES ('499', '4', '0', '17', '4', '97');
INSERT INTO `psb_detailbiaya` VALUES ('500', '4', '0', '17', '5', '97');
INSERT INTO `psb_detailbiaya` VALUES ('501', '4', '0', '17', '6', '97');
INSERT INTO `psb_detailbiaya` VALUES ('502', '4', '0', '17', '7', '97');
INSERT INTO `psb_detailbiaya` VALUES ('503', '4', '0', '17', '9', '97');
INSERT INTO `psb_detailbiaya` VALUES ('504', '4', '0', '17', '10', '97');
INSERT INTO `psb_detailbiaya` VALUES ('505', '3', '0', '18', '1', '97');
INSERT INTO `psb_detailbiaya` VALUES ('506', '3', '0', '18', '2', '97');
INSERT INTO `psb_detailbiaya` VALUES ('507', '3', '0', '18', '3', '97');
INSERT INTO `psb_detailbiaya` VALUES ('508', '3', '0', '18', '4', '97');
INSERT INTO `psb_detailbiaya` VALUES ('509', '3', '0', '18', '5', '97');
INSERT INTO `psb_detailbiaya` VALUES ('510', '3', '0', '18', '6', '97');
INSERT INTO `psb_detailbiaya` VALUES ('511', '3', '0', '18', '7', '97');
INSERT INTO `psb_detailbiaya` VALUES ('512', '3', '0', '18', '9', '97');
INSERT INTO `psb_detailbiaya` VALUES ('513', '3', '0', '18', '10', '97');
INSERT INTO `psb_detailbiaya` VALUES ('514', '7', '0', '18', '1', '97');
INSERT INTO `psb_detailbiaya` VALUES ('515', '7', '0', '18', '2', '97');
INSERT INTO `psb_detailbiaya` VALUES ('516', '7', '0', '18', '3', '97');
INSERT INTO `psb_detailbiaya` VALUES ('517', '7', '0', '18', '4', '97');
INSERT INTO `psb_detailbiaya` VALUES ('518', '7', '0', '18', '5', '97');
INSERT INTO `psb_detailbiaya` VALUES ('519', '7', '0', '18', '6', '97');
INSERT INTO `psb_detailbiaya` VALUES ('520', '7', '0', '18', '7', '97');
INSERT INTO `psb_detailbiaya` VALUES ('521', '7', '0', '18', '9', '97');
INSERT INTO `psb_detailbiaya` VALUES ('522', '7', '0', '18', '10', '97');
INSERT INTO `psb_detailbiaya` VALUES ('523', '8', '0', '18', '1', '97');
INSERT INTO `psb_detailbiaya` VALUES ('524', '8', '0', '18', '2', '97');
INSERT INTO `psb_detailbiaya` VALUES ('525', '8', '0', '18', '3', '97');
INSERT INTO `psb_detailbiaya` VALUES ('526', '8', '0', '18', '4', '97');
INSERT INTO `psb_detailbiaya` VALUES ('527', '8', '0', '18', '5', '97');
INSERT INTO `psb_detailbiaya` VALUES ('528', '8', '0', '18', '6', '97');
INSERT INTO `psb_detailbiaya` VALUES ('529', '8', '0', '18', '7', '97');
INSERT INTO `psb_detailbiaya` VALUES ('530', '8', '0', '18', '9', '97');
INSERT INTO `psb_detailbiaya` VALUES ('531', '8', '0', '18', '10', '97');
INSERT INTO `psb_detailbiaya` VALUES ('532', '4', '0', '18', '1', '97');
INSERT INTO `psb_detailbiaya` VALUES ('533', '4', '0', '18', '2', '97');
INSERT INTO `psb_detailbiaya` VALUES ('534', '4', '0', '18', '3', '97');
INSERT INTO `psb_detailbiaya` VALUES ('535', '4', '0', '18', '4', '97');
INSERT INTO `psb_detailbiaya` VALUES ('536', '4', '0', '18', '5', '97');
INSERT INTO `psb_detailbiaya` VALUES ('537', '4', '0', '18', '6', '97');
INSERT INTO `psb_detailbiaya` VALUES ('538', '4', '0', '18', '7', '97');
INSERT INTO `psb_detailbiaya` VALUES ('539', '4', '0', '18', '9', '97');
INSERT INTO `psb_detailbiaya` VALUES ('540', '4', '0', '18', '10', '97');
INSERT INTO `psb_detailbiaya` VALUES ('541', '3', '0', '19', '1', '97');
INSERT INTO `psb_detailbiaya` VALUES ('542', '3', '0', '19', '2', '97');
INSERT INTO `psb_detailbiaya` VALUES ('543', '3', '0', '19', '3', '97');
INSERT INTO `psb_detailbiaya` VALUES ('544', '3', '0', '19', '4', '97');
INSERT INTO `psb_detailbiaya` VALUES ('545', '3', '0', '19', '5', '97');
INSERT INTO `psb_detailbiaya` VALUES ('546', '3', '0', '19', '6', '97');
INSERT INTO `psb_detailbiaya` VALUES ('547', '3', '0', '19', '7', '97');
INSERT INTO `psb_detailbiaya` VALUES ('548', '3', '0', '19', '9', '97');
INSERT INTO `psb_detailbiaya` VALUES ('549', '3', '0', '19', '10', '97');
INSERT INTO `psb_detailbiaya` VALUES ('550', '7', '0', '19', '1', '97');
INSERT INTO `psb_detailbiaya` VALUES ('551', '7', '0', '19', '2', '97');
INSERT INTO `psb_detailbiaya` VALUES ('552', '7', '0', '19', '3', '97');
INSERT INTO `psb_detailbiaya` VALUES ('553', '7', '0', '19', '4', '97');
INSERT INTO `psb_detailbiaya` VALUES ('554', '7', '0', '19', '5', '97');
INSERT INTO `psb_detailbiaya` VALUES ('555', '7', '0', '19', '6', '97');
INSERT INTO `psb_detailbiaya` VALUES ('556', '7', '0', '19', '7', '97');
INSERT INTO `psb_detailbiaya` VALUES ('557', '7', '0', '19', '9', '97');
INSERT INTO `psb_detailbiaya` VALUES ('558', '7', '0', '19', '10', '97');
INSERT INTO `psb_detailbiaya` VALUES ('559', '8', '0', '19', '1', '97');
INSERT INTO `psb_detailbiaya` VALUES ('560', '8', '0', '19', '2', '97');
INSERT INTO `psb_detailbiaya` VALUES ('561', '8', '0', '19', '3', '97');
INSERT INTO `psb_detailbiaya` VALUES ('562', '8', '0', '19', '4', '97');
INSERT INTO `psb_detailbiaya` VALUES ('563', '8', '0', '19', '5', '97');
INSERT INTO `psb_detailbiaya` VALUES ('564', '8', '0', '19', '6', '97');
INSERT INTO `psb_detailbiaya` VALUES ('565', '8', '0', '19', '7', '97');
INSERT INTO `psb_detailbiaya` VALUES ('566', '8', '0', '19', '9', '97');
INSERT INTO `psb_detailbiaya` VALUES ('567', '8', '0', '19', '10', '97');
INSERT INTO `psb_detailbiaya` VALUES ('568', '4', '0', '19', '1', '97');
INSERT INTO `psb_detailbiaya` VALUES ('569', '4', '0', '19', '2', '97');
INSERT INTO `psb_detailbiaya` VALUES ('570', '4', '0', '19', '3', '97');
INSERT INTO `psb_detailbiaya` VALUES ('571', '4', '0', '19', '4', '97');
INSERT INTO `psb_detailbiaya` VALUES ('572', '4', '0', '19', '5', '97');
INSERT INTO `psb_detailbiaya` VALUES ('573', '4', '0', '19', '6', '97');
INSERT INTO `psb_detailbiaya` VALUES ('574', '4', '0', '19', '7', '97');
INSERT INTO `psb_detailbiaya` VALUES ('575', '4', '0', '19', '9', '97');
INSERT INTO `psb_detailbiaya` VALUES ('576', '4', '0', '19', '10', '97');
INSERT INTO `psb_detailbiaya` VALUES ('577', '3', '0', '20', '1', '97');
INSERT INTO `psb_detailbiaya` VALUES ('578', '3', '0', '20', '2', '97');
INSERT INTO `psb_detailbiaya` VALUES ('579', '3', '0', '20', '3', '97');
INSERT INTO `psb_detailbiaya` VALUES ('580', '3', '0', '20', '4', '97');
INSERT INTO `psb_detailbiaya` VALUES ('581', '3', '0', '20', '5', '97');
INSERT INTO `psb_detailbiaya` VALUES ('582', '3', '0', '20', '6', '97');
INSERT INTO `psb_detailbiaya` VALUES ('583', '3', '0', '20', '7', '97');
INSERT INTO `psb_detailbiaya` VALUES ('584', '3', '0', '20', '9', '97');
INSERT INTO `psb_detailbiaya` VALUES ('585', '3', '0', '20', '10', '97');
INSERT INTO `psb_detailbiaya` VALUES ('586', '7', '0', '20', '1', '97');
INSERT INTO `psb_detailbiaya` VALUES ('587', '7', '0', '20', '2', '97');
INSERT INTO `psb_detailbiaya` VALUES ('588', '7', '0', '20', '3', '97');
INSERT INTO `psb_detailbiaya` VALUES ('589', '7', '0', '20', '4', '97');
INSERT INTO `psb_detailbiaya` VALUES ('590', '7', '0', '20', '5', '97');
INSERT INTO `psb_detailbiaya` VALUES ('591', '7', '0', '20', '6', '97');
INSERT INTO `psb_detailbiaya` VALUES ('592', '7', '0', '20', '7', '97');
INSERT INTO `psb_detailbiaya` VALUES ('593', '7', '0', '20', '9', '97');
INSERT INTO `psb_detailbiaya` VALUES ('594', '7', '0', '20', '10', '97');
INSERT INTO `psb_detailbiaya` VALUES ('595', '8', '0', '20', '1', '97');
INSERT INTO `psb_detailbiaya` VALUES ('596', '8', '0', '20', '2', '97');
INSERT INTO `psb_detailbiaya` VALUES ('597', '8', '0', '20', '3', '97');
INSERT INTO `psb_detailbiaya` VALUES ('598', '8', '0', '20', '4', '97');
INSERT INTO `psb_detailbiaya` VALUES ('599', '8', '0', '20', '5', '97');
INSERT INTO `psb_detailbiaya` VALUES ('600', '8', '0', '20', '6', '97');
INSERT INTO `psb_detailbiaya` VALUES ('601', '8', '0', '20', '7', '97');
INSERT INTO `psb_detailbiaya` VALUES ('602', '8', '0', '20', '9', '97');
INSERT INTO `psb_detailbiaya` VALUES ('603', '8', '0', '20', '10', '97');
INSERT INTO `psb_detailbiaya` VALUES ('604', '4', '0', '20', '1', '97');
INSERT INTO `psb_detailbiaya` VALUES ('605', '4', '0', '20', '2', '97');
INSERT INTO `psb_detailbiaya` VALUES ('606', '4', '0', '20', '3', '97');
INSERT INTO `psb_detailbiaya` VALUES ('607', '4', '0', '20', '4', '97');
INSERT INTO `psb_detailbiaya` VALUES ('608', '4', '0', '20', '5', '97');
INSERT INTO `psb_detailbiaya` VALUES ('609', '4', '0', '20', '6', '97');
INSERT INTO `psb_detailbiaya` VALUES ('610', '4', '0', '20', '7', '97');
INSERT INTO `psb_detailbiaya` VALUES ('611', '4', '0', '20', '9', '97');
INSERT INTO `psb_detailbiaya` VALUES ('612', '4', '0', '20', '10', '97');
INSERT INTO `psb_detailbiaya` VALUES ('613', '3', '0', '24', '1', '97');
INSERT INTO `psb_detailbiaya` VALUES ('614', '3', '0', '24', '2', '97');
INSERT INTO `psb_detailbiaya` VALUES ('615', '3', '0', '24', '3', '97');
INSERT INTO `psb_detailbiaya` VALUES ('616', '3', '0', '24', '4', '97');
INSERT INTO `psb_detailbiaya` VALUES ('617', '3', '0', '24', '5', '97');
INSERT INTO `psb_detailbiaya` VALUES ('618', '3', '0', '24', '6', '97');
INSERT INTO `psb_detailbiaya` VALUES ('619', '3', '0', '24', '7', '97');
INSERT INTO `psb_detailbiaya` VALUES ('620', '3', '0', '24', '9', '97');
INSERT INTO `psb_detailbiaya` VALUES ('621', '3', '0', '24', '10', '97');
INSERT INTO `psb_detailbiaya` VALUES ('622', '7', '0', '24', '1', '97');
INSERT INTO `psb_detailbiaya` VALUES ('623', '7', '0', '24', '2', '97');
INSERT INTO `psb_detailbiaya` VALUES ('624', '7', '0', '24', '3', '97');
INSERT INTO `psb_detailbiaya` VALUES ('625', '7', '0', '24', '4', '97');
INSERT INTO `psb_detailbiaya` VALUES ('626', '7', '0', '24', '5', '97');
INSERT INTO `psb_detailbiaya` VALUES ('627', '7', '0', '24', '6', '97');
INSERT INTO `psb_detailbiaya` VALUES ('628', '7', '0', '24', '7', '97');
INSERT INTO `psb_detailbiaya` VALUES ('629', '7', '0', '24', '9', '97');
INSERT INTO `psb_detailbiaya` VALUES ('630', '7', '0', '24', '10', '97');
INSERT INTO `psb_detailbiaya` VALUES ('631', '8', '0', '24', '1', '97');
INSERT INTO `psb_detailbiaya` VALUES ('632', '8', '0', '24', '2', '97');
INSERT INTO `psb_detailbiaya` VALUES ('633', '8', '0', '24', '3', '97');
INSERT INTO `psb_detailbiaya` VALUES ('634', '8', '0', '24', '4', '97');
INSERT INTO `psb_detailbiaya` VALUES ('635', '8', '0', '24', '5', '97');
INSERT INTO `psb_detailbiaya` VALUES ('636', '8', '0', '24', '6', '97');
INSERT INTO `psb_detailbiaya` VALUES ('637', '8', '0', '24', '7', '97');
INSERT INTO `psb_detailbiaya` VALUES ('638', '8', '0', '24', '9', '97');
INSERT INTO `psb_detailbiaya` VALUES ('639', '8', '0', '24', '10', '97');
INSERT INTO `psb_detailbiaya` VALUES ('640', '4', '0', '24', '1', '97');
INSERT INTO `psb_detailbiaya` VALUES ('641', '4', '0', '24', '2', '97');
INSERT INTO `psb_detailbiaya` VALUES ('642', '4', '0', '24', '3', '97');
INSERT INTO `psb_detailbiaya` VALUES ('643', '4', '0', '24', '4', '97');
INSERT INTO `psb_detailbiaya` VALUES ('644', '4', '0', '24', '5', '97');
INSERT INTO `psb_detailbiaya` VALUES ('645', '4', '0', '24', '6', '97');
INSERT INTO `psb_detailbiaya` VALUES ('646', '4', '0', '24', '7', '97');
INSERT INTO `psb_detailbiaya` VALUES ('647', '4', '0', '24', '9', '97');
INSERT INTO `psb_detailbiaya` VALUES ('648', '4', '0', '24', '10', '97');
INSERT INTO `psb_detailbiaya` VALUES ('649', '3', '8000000', '4', '1', '98');
INSERT INTO `psb_detailbiaya` VALUES ('650', '3', '768', '4', '2', '98');
INSERT INTO `psb_detailbiaya` VALUES ('651', '3', '8769', '4', '3', '98');
INSERT INTO `psb_detailbiaya` VALUES ('652', '3', '9', '4', '4', '98');
INSERT INTO `psb_detailbiaya` VALUES ('653', '3', '67', '4', '5', '98');
INSERT INTO `psb_detailbiaya` VALUES ('654', '3', '6', '4', '6', '98');
INSERT INTO `psb_detailbiaya` VALUES ('655', '3', '78', '4', '7', '98');
INSERT INTO `psb_detailbiaya` VALUES ('656', '3', '86', '4', '9', '98');
INSERT INTO `psb_detailbiaya` VALUES ('657', '3', '687', '4', '10', '98');
INSERT INTO `psb_detailbiaya` VALUES ('658', '7', '8800000', '4', '1', '98');
INSERT INTO `psb_detailbiaya` VALUES ('659', '7', '6876', '4', '2', '98');
INSERT INTO `psb_detailbiaya` VALUES ('660', '7', '89', '4', '3', '98');
INSERT INTO `psb_detailbiaya` VALUES ('661', '7', '98', '4', '4', '98');
INSERT INTO `psb_detailbiaya` VALUES ('662', '7', '7', '4', '5', '98');
INSERT INTO `psb_detailbiaya` VALUES ('663', '7', '876', '4', '6', '98');
INSERT INTO `psb_detailbiaya` VALUES ('664', '7', '6876', '4', '7', '98');
INSERT INTO `psb_detailbiaya` VALUES ('665', '7', '78', '4', '9', '98');
INSERT INTO `psb_detailbiaya` VALUES ('666', '7', '876', '4', '10', '98');
INSERT INTO `psb_detailbiaya` VALUES ('667', '8', '800000', '4', '1', '98');
INSERT INTO `psb_detailbiaya` VALUES ('668', '8', '999999999968', '4', '2', '98');
INSERT INTO `psb_detailbiaya` VALUES ('669', '8', '89890', '4', '3', '98');
INSERT INTO `psb_detailbiaya` VALUES ('670', '8', '67', '4', '4', '98');
INSERT INTO `psb_detailbiaya` VALUES ('671', '8', '68', '4', '5', '98');
INSERT INTO `psb_detailbiaya` VALUES ('672', '8', '876', '4', '6', '98');
INSERT INTO `psb_detailbiaya` VALUES ('673', '8', '678', '4', '7', '98');
INSERT INTO `psb_detailbiaya` VALUES ('674', '8', '876', '4', '9', '98');
INSERT INTO `psb_detailbiaya` VALUES ('675', '8', '6876', '4', '10', '98');
INSERT INTO `psb_detailbiaya` VALUES ('676', '4', '12000000', '4', '1', '98');
INSERT INTO `psb_detailbiaya` VALUES ('677', '4', '67', '4', '2', '98');
INSERT INTO `psb_detailbiaya` VALUES ('678', '4', '76', '4', '3', '98');
INSERT INTO `psb_detailbiaya` VALUES ('679', '4', '986', '4', '4', '98');
INSERT INTO `psb_detailbiaya` VALUES ('680', '4', '8', '4', '5', '98');
INSERT INTO `psb_detailbiaya` VALUES ('681', '4', '68', '4', '6', '98');
INSERT INTO `psb_detailbiaya` VALUES ('682', '4', '876', '4', '7', '98');
INSERT INTO `psb_detailbiaya` VALUES ('683', '4', '78978', '4', '9', '98');
INSERT INTO `psb_detailbiaya` VALUES ('684', '4', '687', '4', '10', '98');
INSERT INTO `psb_detailbiaya` VALUES ('685', '3', '0', '5', '1', '98');
INSERT INTO `psb_detailbiaya` VALUES ('686', '3', '0', '5', '2', '98');
INSERT INTO `psb_detailbiaya` VALUES ('687', '3', '0', '5', '3', '98');
INSERT INTO `psb_detailbiaya` VALUES ('688', '3', '0', '5', '4', '98');
INSERT INTO `psb_detailbiaya` VALUES ('689', '3', '0', '5', '5', '98');
INSERT INTO `psb_detailbiaya` VALUES ('690', '3', '0', '5', '6', '98');
INSERT INTO `psb_detailbiaya` VALUES ('691', '3', '0', '5', '7', '98');
INSERT INTO `psb_detailbiaya` VALUES ('692', '3', '0', '5', '9', '98');
INSERT INTO `psb_detailbiaya` VALUES ('693', '3', '0', '5', '10', '98');
INSERT INTO `psb_detailbiaya` VALUES ('694', '7', '0', '5', '1', '98');
INSERT INTO `psb_detailbiaya` VALUES ('695', '7', '0', '5', '2', '98');
INSERT INTO `psb_detailbiaya` VALUES ('696', '7', '0', '5', '3', '98');
INSERT INTO `psb_detailbiaya` VALUES ('697', '7', '0', '5', '4', '98');
INSERT INTO `psb_detailbiaya` VALUES ('698', '7', '0', '5', '5', '98');
INSERT INTO `psb_detailbiaya` VALUES ('699', '7', '0', '5', '6', '98');
INSERT INTO `psb_detailbiaya` VALUES ('700', '7', '0', '5', '7', '98');
INSERT INTO `psb_detailbiaya` VALUES ('701', '7', '0', '5', '9', '98');
INSERT INTO `psb_detailbiaya` VALUES ('702', '7', '0', '5', '10', '98');
INSERT INTO `psb_detailbiaya` VALUES ('703', '8', '0', '5', '1', '98');
INSERT INTO `psb_detailbiaya` VALUES ('704', '8', '0', '5', '2', '98');
INSERT INTO `psb_detailbiaya` VALUES ('705', '8', '0', '5', '3', '98');
INSERT INTO `psb_detailbiaya` VALUES ('706', '8', '0', '5', '4', '98');
INSERT INTO `psb_detailbiaya` VALUES ('707', '8', '0', '5', '5', '98');
INSERT INTO `psb_detailbiaya` VALUES ('708', '8', '0', '5', '6', '98');
INSERT INTO `psb_detailbiaya` VALUES ('709', '8', '0', '5', '7', '98');
INSERT INTO `psb_detailbiaya` VALUES ('710', '8', '0', '5', '9', '98');
INSERT INTO `psb_detailbiaya` VALUES ('711', '8', '0', '5', '10', '98');
INSERT INTO `psb_detailbiaya` VALUES ('712', '4', '0', '5', '1', '98');
INSERT INTO `psb_detailbiaya` VALUES ('713', '4', '0', '5', '2', '98');
INSERT INTO `psb_detailbiaya` VALUES ('714', '4', '0', '5', '3', '98');
INSERT INTO `psb_detailbiaya` VALUES ('715', '4', '0', '5', '4', '98');
INSERT INTO `psb_detailbiaya` VALUES ('716', '4', '0', '5', '5', '98');
INSERT INTO `psb_detailbiaya` VALUES ('717', '4', '0', '5', '6', '98');
INSERT INTO `psb_detailbiaya` VALUES ('718', '4', '0', '5', '7', '98');
INSERT INTO `psb_detailbiaya` VALUES ('719', '4', '0', '5', '9', '98');
INSERT INTO `psb_detailbiaya` VALUES ('720', '4', '0', '5', '10', '98');
INSERT INTO `psb_detailbiaya` VALUES ('721', '3', '0', '6', '1', '98');
INSERT INTO `psb_detailbiaya` VALUES ('722', '3', '0', '6', '2', '98');
INSERT INTO `psb_detailbiaya` VALUES ('723', '3', '0', '6', '3', '98');
INSERT INTO `psb_detailbiaya` VALUES ('724', '3', '0', '6', '4', '98');
INSERT INTO `psb_detailbiaya` VALUES ('725', '3', '0', '6', '5', '98');
INSERT INTO `psb_detailbiaya` VALUES ('726', '3', '0', '6', '6', '98');
INSERT INTO `psb_detailbiaya` VALUES ('727', '3', '0', '6', '7', '98');
INSERT INTO `psb_detailbiaya` VALUES ('728', '3', '0', '6', '9', '98');
INSERT INTO `psb_detailbiaya` VALUES ('729', '3', '0', '6', '10', '98');
INSERT INTO `psb_detailbiaya` VALUES ('730', '7', '0', '6', '1', '98');
INSERT INTO `psb_detailbiaya` VALUES ('731', '7', '0', '6', '2', '98');
INSERT INTO `psb_detailbiaya` VALUES ('732', '7', '0', '6', '3', '98');
INSERT INTO `psb_detailbiaya` VALUES ('733', '7', '0', '6', '4', '98');
INSERT INTO `psb_detailbiaya` VALUES ('734', '7', '0', '6', '5', '98');
INSERT INTO `psb_detailbiaya` VALUES ('735', '7', '0', '6', '6', '98');
INSERT INTO `psb_detailbiaya` VALUES ('736', '7', '0', '6', '7', '98');
INSERT INTO `psb_detailbiaya` VALUES ('737', '7', '0', '6', '9', '98');
INSERT INTO `psb_detailbiaya` VALUES ('738', '7', '0', '6', '10', '98');
INSERT INTO `psb_detailbiaya` VALUES ('739', '8', '0', '6', '1', '98');
INSERT INTO `psb_detailbiaya` VALUES ('740', '8', '0', '6', '2', '98');
INSERT INTO `psb_detailbiaya` VALUES ('741', '8', '0', '6', '3', '98');
INSERT INTO `psb_detailbiaya` VALUES ('742', '8', '0', '6', '4', '98');
INSERT INTO `psb_detailbiaya` VALUES ('743', '8', '0', '6', '5', '98');
INSERT INTO `psb_detailbiaya` VALUES ('744', '8', '0', '6', '6', '98');
INSERT INTO `psb_detailbiaya` VALUES ('745', '8', '0', '6', '7', '98');
INSERT INTO `psb_detailbiaya` VALUES ('746', '8', '0', '6', '9', '98');
INSERT INTO `psb_detailbiaya` VALUES ('747', '8', '0', '6', '10', '98');
INSERT INTO `psb_detailbiaya` VALUES ('748', '4', '0', '6', '1', '98');
INSERT INTO `psb_detailbiaya` VALUES ('749', '4', '0', '6', '2', '98');
INSERT INTO `psb_detailbiaya` VALUES ('750', '4', '0', '6', '3', '98');
INSERT INTO `psb_detailbiaya` VALUES ('751', '4', '0', '6', '4', '98');
INSERT INTO `psb_detailbiaya` VALUES ('752', '4', '0', '6', '5', '98');
INSERT INTO `psb_detailbiaya` VALUES ('753', '4', '0', '6', '6', '98');
INSERT INTO `psb_detailbiaya` VALUES ('754', '4', '0', '6', '7', '98');
INSERT INTO `psb_detailbiaya` VALUES ('755', '4', '0', '6', '9', '98');
INSERT INTO `psb_detailbiaya` VALUES ('756', '4', '0', '6', '10', '98');
INSERT INTO `psb_detailbiaya` VALUES ('757', '3', '0', '7', '1', '98');
INSERT INTO `psb_detailbiaya` VALUES ('758', '3', '0', '7', '2', '98');
INSERT INTO `psb_detailbiaya` VALUES ('759', '3', '0', '7', '3', '98');
INSERT INTO `psb_detailbiaya` VALUES ('760', '3', '0', '7', '4', '98');
INSERT INTO `psb_detailbiaya` VALUES ('761', '3', '0', '7', '5', '98');
INSERT INTO `psb_detailbiaya` VALUES ('762', '3', '0', '7', '6', '98');
INSERT INTO `psb_detailbiaya` VALUES ('763', '3', '0', '7', '7', '98');
INSERT INTO `psb_detailbiaya` VALUES ('764', '3', '0', '7', '9', '98');
INSERT INTO `psb_detailbiaya` VALUES ('765', '3', '0', '7', '10', '98');
INSERT INTO `psb_detailbiaya` VALUES ('766', '7', '0', '7', '1', '98');
INSERT INTO `psb_detailbiaya` VALUES ('767', '7', '0', '7', '2', '98');
INSERT INTO `psb_detailbiaya` VALUES ('768', '7', '0', '7', '3', '98');
INSERT INTO `psb_detailbiaya` VALUES ('769', '7', '0', '7', '4', '98');
INSERT INTO `psb_detailbiaya` VALUES ('770', '7', '0', '7', '5', '98');
INSERT INTO `psb_detailbiaya` VALUES ('771', '7', '0', '7', '6', '98');
INSERT INTO `psb_detailbiaya` VALUES ('772', '7', '0', '7', '7', '98');
INSERT INTO `psb_detailbiaya` VALUES ('773', '7', '0', '7', '9', '98');
INSERT INTO `psb_detailbiaya` VALUES ('774', '7', '0', '7', '10', '98');
INSERT INTO `psb_detailbiaya` VALUES ('775', '8', '0', '7', '1', '98');
INSERT INTO `psb_detailbiaya` VALUES ('776', '8', '0', '7', '2', '98');
INSERT INTO `psb_detailbiaya` VALUES ('777', '8', '0', '7', '3', '98');
INSERT INTO `psb_detailbiaya` VALUES ('778', '8', '0', '7', '4', '98');
INSERT INTO `psb_detailbiaya` VALUES ('779', '8', '0', '7', '5', '98');
INSERT INTO `psb_detailbiaya` VALUES ('780', '8', '0', '7', '6', '98');
INSERT INTO `psb_detailbiaya` VALUES ('781', '8', '0', '7', '7', '98');
INSERT INTO `psb_detailbiaya` VALUES ('782', '8', '0', '7', '9', '98');
INSERT INTO `psb_detailbiaya` VALUES ('783', '8', '0', '7', '10', '98');
INSERT INTO `psb_detailbiaya` VALUES ('784', '4', '0', '7', '1', '98');
INSERT INTO `psb_detailbiaya` VALUES ('785', '4', '0', '7', '2', '98');
INSERT INTO `psb_detailbiaya` VALUES ('786', '4', '0', '7', '3', '98');
INSERT INTO `psb_detailbiaya` VALUES ('787', '4', '0', '7', '4', '98');
INSERT INTO `psb_detailbiaya` VALUES ('788', '4', '0', '7', '5', '98');
INSERT INTO `psb_detailbiaya` VALUES ('789', '4', '0', '7', '6', '98');
INSERT INTO `psb_detailbiaya` VALUES ('790', '4', '0', '7', '7', '98');
INSERT INTO `psb_detailbiaya` VALUES ('791', '4', '0', '7', '9', '98');
INSERT INTO `psb_detailbiaya` VALUES ('792', '4', '0', '7', '10', '98');
INSERT INTO `psb_detailbiaya` VALUES ('793', '3', '0', '8', '1', '98');
INSERT INTO `psb_detailbiaya` VALUES ('794', '3', '0', '8', '2', '98');
INSERT INTO `psb_detailbiaya` VALUES ('795', '3', '0', '8', '3', '98');
INSERT INTO `psb_detailbiaya` VALUES ('796', '3', '0', '8', '4', '98');
INSERT INTO `psb_detailbiaya` VALUES ('797', '3', '0', '8', '5', '98');
INSERT INTO `psb_detailbiaya` VALUES ('798', '3', '0', '8', '6', '98');
INSERT INTO `psb_detailbiaya` VALUES ('799', '3', '0', '8', '7', '98');
INSERT INTO `psb_detailbiaya` VALUES ('800', '3', '0', '8', '9', '98');
INSERT INTO `psb_detailbiaya` VALUES ('801', '3', '0', '8', '10', '98');
INSERT INTO `psb_detailbiaya` VALUES ('802', '7', '0', '8', '1', '98');
INSERT INTO `psb_detailbiaya` VALUES ('803', '7', '0', '8', '2', '98');
INSERT INTO `psb_detailbiaya` VALUES ('804', '7', '0', '8', '3', '98');
INSERT INTO `psb_detailbiaya` VALUES ('805', '7', '0', '8', '4', '98');
INSERT INTO `psb_detailbiaya` VALUES ('806', '7', '0', '8', '5', '98');
INSERT INTO `psb_detailbiaya` VALUES ('807', '7', '0', '8', '6', '98');
INSERT INTO `psb_detailbiaya` VALUES ('808', '7', '0', '8', '7', '98');
INSERT INTO `psb_detailbiaya` VALUES ('809', '7', '0', '8', '9', '98');
INSERT INTO `psb_detailbiaya` VALUES ('810', '7', '0', '8', '10', '98');
INSERT INTO `psb_detailbiaya` VALUES ('811', '8', '0', '8', '1', '98');
INSERT INTO `psb_detailbiaya` VALUES ('812', '8', '0', '8', '2', '98');
INSERT INTO `psb_detailbiaya` VALUES ('813', '8', '0', '8', '3', '98');
INSERT INTO `psb_detailbiaya` VALUES ('814', '8', '0', '8', '4', '98');
INSERT INTO `psb_detailbiaya` VALUES ('815', '8', '0', '8', '5', '98');
INSERT INTO `psb_detailbiaya` VALUES ('816', '8', '0', '8', '6', '98');
INSERT INTO `psb_detailbiaya` VALUES ('817', '8', '0', '8', '7', '98');
INSERT INTO `psb_detailbiaya` VALUES ('818', '8', '0', '8', '9', '98');
INSERT INTO `psb_detailbiaya` VALUES ('819', '8', '0', '8', '10', '98');
INSERT INTO `psb_detailbiaya` VALUES ('820', '4', '0', '8', '1', '98');
INSERT INTO `psb_detailbiaya` VALUES ('821', '4', '0', '8', '2', '98');
INSERT INTO `psb_detailbiaya` VALUES ('822', '4', '0', '8', '3', '98');
INSERT INTO `psb_detailbiaya` VALUES ('823', '4', '0', '8', '4', '98');
INSERT INTO `psb_detailbiaya` VALUES ('824', '4', '0', '8', '5', '98');
INSERT INTO `psb_detailbiaya` VALUES ('825', '4', '0', '8', '6', '98');
INSERT INTO `psb_detailbiaya` VALUES ('826', '4', '0', '8', '7', '98');
INSERT INTO `psb_detailbiaya` VALUES ('827', '4', '0', '8', '9', '98');
INSERT INTO `psb_detailbiaya` VALUES ('828', '4', '0', '8', '10', '98');
INSERT INTO `psb_detailbiaya` VALUES ('829', '3', '0', '9', '1', '98');
INSERT INTO `psb_detailbiaya` VALUES ('830', '3', '0', '9', '2', '98');
INSERT INTO `psb_detailbiaya` VALUES ('831', '3', '0', '9', '3', '98');
INSERT INTO `psb_detailbiaya` VALUES ('832', '3', '0', '9', '4', '98');
INSERT INTO `psb_detailbiaya` VALUES ('833', '3', '0', '9', '5', '98');
INSERT INTO `psb_detailbiaya` VALUES ('834', '3', '0', '9', '6', '98');
INSERT INTO `psb_detailbiaya` VALUES ('835', '3', '0', '9', '7', '98');
INSERT INTO `psb_detailbiaya` VALUES ('836', '3', '0', '9', '9', '98');
INSERT INTO `psb_detailbiaya` VALUES ('837', '3', '0', '9', '10', '98');
INSERT INTO `psb_detailbiaya` VALUES ('838', '7', '0', '9', '1', '98');
INSERT INTO `psb_detailbiaya` VALUES ('839', '7', '0', '9', '2', '98');
INSERT INTO `psb_detailbiaya` VALUES ('840', '7', '0', '9', '3', '98');
INSERT INTO `psb_detailbiaya` VALUES ('841', '7', '0', '9', '4', '98');
INSERT INTO `psb_detailbiaya` VALUES ('842', '7', '0', '9', '5', '98');
INSERT INTO `psb_detailbiaya` VALUES ('843', '7', '0', '9', '6', '98');
INSERT INTO `psb_detailbiaya` VALUES ('844', '7', '0', '9', '7', '98');
INSERT INTO `psb_detailbiaya` VALUES ('845', '7', '0', '9', '9', '98');
INSERT INTO `psb_detailbiaya` VALUES ('846', '7', '0', '9', '10', '98');
INSERT INTO `psb_detailbiaya` VALUES ('847', '8', '0', '9', '1', '98');
INSERT INTO `psb_detailbiaya` VALUES ('848', '8', '0', '9', '2', '98');
INSERT INTO `psb_detailbiaya` VALUES ('849', '8', '0', '9', '3', '98');
INSERT INTO `psb_detailbiaya` VALUES ('850', '8', '0', '9', '4', '98');
INSERT INTO `psb_detailbiaya` VALUES ('851', '8', '0', '9', '5', '98');
INSERT INTO `psb_detailbiaya` VALUES ('852', '8', '0', '9', '6', '98');
INSERT INTO `psb_detailbiaya` VALUES ('853', '8', '0', '9', '7', '98');
INSERT INTO `psb_detailbiaya` VALUES ('854', '8', '0', '9', '9', '98');
INSERT INTO `psb_detailbiaya` VALUES ('855', '8', '0', '9', '10', '98');
INSERT INTO `psb_detailbiaya` VALUES ('856', '4', '0', '9', '1', '98');
INSERT INTO `psb_detailbiaya` VALUES ('857', '4', '0', '9', '2', '98');
INSERT INTO `psb_detailbiaya` VALUES ('858', '4', '0', '9', '3', '98');
INSERT INTO `psb_detailbiaya` VALUES ('859', '4', '0', '9', '4', '98');
INSERT INTO `psb_detailbiaya` VALUES ('860', '4', '0', '9', '5', '98');
INSERT INTO `psb_detailbiaya` VALUES ('861', '4', '0', '9', '6', '98');
INSERT INTO `psb_detailbiaya` VALUES ('862', '4', '0', '9', '7', '98');
INSERT INTO `psb_detailbiaya` VALUES ('863', '4', '0', '9', '9', '98');
INSERT INTO `psb_detailbiaya` VALUES ('864', '4', '0', '9', '10', '98');
INSERT INTO `psb_detailbiaya` VALUES ('865', '3', '0', '10', '1', '98');
INSERT INTO `psb_detailbiaya` VALUES ('866', '3', '0', '10', '2', '98');
INSERT INTO `psb_detailbiaya` VALUES ('867', '3', '0', '10', '3', '98');
INSERT INTO `psb_detailbiaya` VALUES ('868', '3', '0', '10', '4', '98');
INSERT INTO `psb_detailbiaya` VALUES ('869', '3', '0', '10', '5', '98');
INSERT INTO `psb_detailbiaya` VALUES ('870', '3', '0', '10', '6', '98');
INSERT INTO `psb_detailbiaya` VALUES ('871', '3', '0', '10', '7', '98');
INSERT INTO `psb_detailbiaya` VALUES ('872', '3', '0', '10', '9', '98');
INSERT INTO `psb_detailbiaya` VALUES ('873', '3', '0', '10', '10', '98');
INSERT INTO `psb_detailbiaya` VALUES ('874', '7', '0', '10', '1', '98');
INSERT INTO `psb_detailbiaya` VALUES ('875', '7', '0', '10', '2', '98');
INSERT INTO `psb_detailbiaya` VALUES ('876', '7', '0', '10', '3', '98');
INSERT INTO `psb_detailbiaya` VALUES ('877', '7', '0', '10', '4', '98');
INSERT INTO `psb_detailbiaya` VALUES ('878', '7', '0', '10', '5', '98');
INSERT INTO `psb_detailbiaya` VALUES ('879', '7', '0', '10', '6', '98');
INSERT INTO `psb_detailbiaya` VALUES ('880', '7', '0', '10', '7', '98');
INSERT INTO `psb_detailbiaya` VALUES ('881', '7', '0', '10', '9', '98');
INSERT INTO `psb_detailbiaya` VALUES ('882', '7', '0', '10', '10', '98');
INSERT INTO `psb_detailbiaya` VALUES ('883', '8', '0', '10', '1', '98');
INSERT INTO `psb_detailbiaya` VALUES ('884', '8', '0', '10', '2', '98');
INSERT INTO `psb_detailbiaya` VALUES ('885', '8', '0', '10', '3', '98');
INSERT INTO `psb_detailbiaya` VALUES ('886', '8', '0', '10', '4', '98');
INSERT INTO `psb_detailbiaya` VALUES ('887', '8', '0', '10', '5', '98');
INSERT INTO `psb_detailbiaya` VALUES ('888', '8', '0', '10', '6', '98');
INSERT INTO `psb_detailbiaya` VALUES ('889', '8', '0', '10', '7', '98');
INSERT INTO `psb_detailbiaya` VALUES ('890', '8', '0', '10', '9', '98');
INSERT INTO `psb_detailbiaya` VALUES ('891', '8', '0', '10', '10', '98');
INSERT INTO `psb_detailbiaya` VALUES ('892', '4', '0', '10', '1', '98');
INSERT INTO `psb_detailbiaya` VALUES ('893', '4', '0', '10', '2', '98');
INSERT INTO `psb_detailbiaya` VALUES ('894', '4', '0', '10', '3', '98');
INSERT INTO `psb_detailbiaya` VALUES ('895', '4', '0', '10', '4', '98');
INSERT INTO `psb_detailbiaya` VALUES ('896', '4', '0', '10', '5', '98');
INSERT INTO `psb_detailbiaya` VALUES ('897', '4', '0', '10', '6', '98');
INSERT INTO `psb_detailbiaya` VALUES ('898', '4', '0', '10', '7', '98');
INSERT INTO `psb_detailbiaya` VALUES ('899', '4', '0', '10', '9', '98');
INSERT INTO `psb_detailbiaya` VALUES ('900', '4', '0', '10', '10', '98');
INSERT INTO `psb_detailbiaya` VALUES ('901', '3', '0', '11', '1', '98');
INSERT INTO `psb_detailbiaya` VALUES ('902', '3', '0', '11', '2', '98');
INSERT INTO `psb_detailbiaya` VALUES ('903', '3', '0', '11', '3', '98');
INSERT INTO `psb_detailbiaya` VALUES ('904', '3', '0', '11', '4', '98');
INSERT INTO `psb_detailbiaya` VALUES ('905', '3', '0', '11', '5', '98');
INSERT INTO `psb_detailbiaya` VALUES ('906', '3', '0', '11', '6', '98');
INSERT INTO `psb_detailbiaya` VALUES ('907', '3', '0', '11', '7', '98');
INSERT INTO `psb_detailbiaya` VALUES ('908', '3', '0', '11', '9', '98');
INSERT INTO `psb_detailbiaya` VALUES ('909', '3', '0', '11', '10', '98');
INSERT INTO `psb_detailbiaya` VALUES ('910', '7', '0', '11', '1', '98');
INSERT INTO `psb_detailbiaya` VALUES ('911', '7', '0', '11', '2', '98');
INSERT INTO `psb_detailbiaya` VALUES ('912', '7', '0', '11', '3', '98');
INSERT INTO `psb_detailbiaya` VALUES ('913', '7', '0', '11', '4', '98');
INSERT INTO `psb_detailbiaya` VALUES ('914', '7', '0', '11', '5', '98');
INSERT INTO `psb_detailbiaya` VALUES ('915', '7', '0', '11', '6', '98');
INSERT INTO `psb_detailbiaya` VALUES ('916', '7', '0', '11', '7', '98');
INSERT INTO `psb_detailbiaya` VALUES ('917', '7', '0', '11', '9', '98');
INSERT INTO `psb_detailbiaya` VALUES ('918', '7', '0', '11', '10', '98');
INSERT INTO `psb_detailbiaya` VALUES ('919', '8', '0', '11', '1', '98');
INSERT INTO `psb_detailbiaya` VALUES ('920', '8', '0', '11', '2', '98');
INSERT INTO `psb_detailbiaya` VALUES ('921', '8', '0', '11', '3', '98');
INSERT INTO `psb_detailbiaya` VALUES ('922', '8', '0', '11', '4', '98');
INSERT INTO `psb_detailbiaya` VALUES ('923', '8', '0', '11', '5', '98');
INSERT INTO `psb_detailbiaya` VALUES ('924', '8', '0', '11', '6', '98');
INSERT INTO `psb_detailbiaya` VALUES ('925', '8', '0', '11', '7', '98');
INSERT INTO `psb_detailbiaya` VALUES ('926', '8', '0', '11', '9', '98');
INSERT INTO `psb_detailbiaya` VALUES ('927', '8', '0', '11', '10', '98');
INSERT INTO `psb_detailbiaya` VALUES ('928', '4', '0', '11', '1', '98');
INSERT INTO `psb_detailbiaya` VALUES ('929', '4', '0', '11', '2', '98');
INSERT INTO `psb_detailbiaya` VALUES ('930', '4', '0', '11', '3', '98');
INSERT INTO `psb_detailbiaya` VALUES ('931', '4', '0', '11', '4', '98');
INSERT INTO `psb_detailbiaya` VALUES ('932', '4', '0', '11', '5', '98');
INSERT INTO `psb_detailbiaya` VALUES ('933', '4', '0', '11', '6', '98');
INSERT INTO `psb_detailbiaya` VALUES ('934', '4', '0', '11', '7', '98');
INSERT INTO `psb_detailbiaya` VALUES ('935', '4', '0', '11', '9', '98');
INSERT INTO `psb_detailbiaya` VALUES ('936', '4', '0', '11', '10', '98');
INSERT INTO `psb_detailbiaya` VALUES ('937', '3', '0', '12', '1', '98');
INSERT INTO `psb_detailbiaya` VALUES ('938', '3', '0', '12', '2', '98');
INSERT INTO `psb_detailbiaya` VALUES ('939', '3', '0', '12', '3', '98');
INSERT INTO `psb_detailbiaya` VALUES ('940', '3', '0', '12', '4', '98');
INSERT INTO `psb_detailbiaya` VALUES ('941', '3', '0', '12', '5', '98');
INSERT INTO `psb_detailbiaya` VALUES ('942', '3', '0', '12', '6', '98');
INSERT INTO `psb_detailbiaya` VALUES ('943', '3', '0', '12', '7', '98');
INSERT INTO `psb_detailbiaya` VALUES ('944', '3', '0', '12', '9', '98');
INSERT INTO `psb_detailbiaya` VALUES ('945', '3', '0', '12', '10', '98');
INSERT INTO `psb_detailbiaya` VALUES ('946', '7', '0', '12', '1', '98');
INSERT INTO `psb_detailbiaya` VALUES ('947', '7', '0', '12', '2', '98');
INSERT INTO `psb_detailbiaya` VALUES ('948', '7', '0', '12', '3', '98');
INSERT INTO `psb_detailbiaya` VALUES ('949', '7', '0', '12', '4', '98');
INSERT INTO `psb_detailbiaya` VALUES ('950', '7', '0', '12', '5', '98');
INSERT INTO `psb_detailbiaya` VALUES ('951', '7', '0', '12', '6', '98');
INSERT INTO `psb_detailbiaya` VALUES ('952', '7', '0', '12', '7', '98');
INSERT INTO `psb_detailbiaya` VALUES ('953', '7', '0', '12', '9', '98');
INSERT INTO `psb_detailbiaya` VALUES ('954', '7', '0', '12', '10', '98');
INSERT INTO `psb_detailbiaya` VALUES ('955', '8', '0', '12', '1', '98');
INSERT INTO `psb_detailbiaya` VALUES ('956', '8', '0', '12', '2', '98');
INSERT INTO `psb_detailbiaya` VALUES ('957', '8', '0', '12', '3', '98');
INSERT INTO `psb_detailbiaya` VALUES ('958', '8', '0', '12', '4', '98');
INSERT INTO `psb_detailbiaya` VALUES ('959', '8', '0', '12', '5', '98');
INSERT INTO `psb_detailbiaya` VALUES ('960', '8', '0', '12', '6', '98');
INSERT INTO `psb_detailbiaya` VALUES ('961', '8', '0', '12', '7', '98');
INSERT INTO `psb_detailbiaya` VALUES ('962', '8', '0', '12', '9', '98');
INSERT INTO `psb_detailbiaya` VALUES ('963', '8', '0', '12', '10', '98');
INSERT INTO `psb_detailbiaya` VALUES ('964', '4', '0', '12', '1', '98');
INSERT INTO `psb_detailbiaya` VALUES ('965', '4', '0', '12', '2', '98');
INSERT INTO `psb_detailbiaya` VALUES ('966', '4', '0', '12', '3', '98');
INSERT INTO `psb_detailbiaya` VALUES ('967', '4', '0', '12', '4', '98');
INSERT INTO `psb_detailbiaya` VALUES ('968', '4', '0', '12', '5', '98');
INSERT INTO `psb_detailbiaya` VALUES ('969', '4', '0', '12', '6', '98');
INSERT INTO `psb_detailbiaya` VALUES ('970', '4', '0', '12', '7', '98');
INSERT INTO `psb_detailbiaya` VALUES ('971', '4', '0', '12', '9', '98');
INSERT INTO `psb_detailbiaya` VALUES ('972', '4', '0', '12', '10', '98');
INSERT INTO `psb_detailbiaya` VALUES ('973', '3', '0', '13', '1', '98');
INSERT INTO `psb_detailbiaya` VALUES ('974', '3', '0', '13', '2', '98');
INSERT INTO `psb_detailbiaya` VALUES ('975', '3', '0', '13', '3', '98');
INSERT INTO `psb_detailbiaya` VALUES ('976', '3', '0', '13', '4', '98');
INSERT INTO `psb_detailbiaya` VALUES ('977', '3', '0', '13', '5', '98');
INSERT INTO `psb_detailbiaya` VALUES ('978', '3', '0', '13', '6', '98');
INSERT INTO `psb_detailbiaya` VALUES ('979', '3', '0', '13', '7', '98');
INSERT INTO `psb_detailbiaya` VALUES ('980', '3', '0', '13', '9', '98');
INSERT INTO `psb_detailbiaya` VALUES ('981', '3', '0', '13', '10', '98');
INSERT INTO `psb_detailbiaya` VALUES ('982', '7', '0', '13', '1', '98');
INSERT INTO `psb_detailbiaya` VALUES ('983', '7', '0', '13', '2', '98');
INSERT INTO `psb_detailbiaya` VALUES ('984', '7', '0', '13', '3', '98');
INSERT INTO `psb_detailbiaya` VALUES ('985', '7', '0', '13', '4', '98');
INSERT INTO `psb_detailbiaya` VALUES ('986', '7', '0', '13', '5', '98');
INSERT INTO `psb_detailbiaya` VALUES ('987', '7', '0', '13', '6', '98');
INSERT INTO `psb_detailbiaya` VALUES ('988', '7', '0', '13', '7', '98');
INSERT INTO `psb_detailbiaya` VALUES ('989', '7', '0', '13', '9', '98');
INSERT INTO `psb_detailbiaya` VALUES ('990', '7', '0', '13', '10', '98');
INSERT INTO `psb_detailbiaya` VALUES ('991', '8', '0', '13', '1', '98');
INSERT INTO `psb_detailbiaya` VALUES ('992', '8', '0', '13', '2', '98');
INSERT INTO `psb_detailbiaya` VALUES ('993', '8', '0', '13', '3', '98');
INSERT INTO `psb_detailbiaya` VALUES ('994', '8', '0', '13', '4', '98');
INSERT INTO `psb_detailbiaya` VALUES ('995', '8', '0', '13', '5', '98');
INSERT INTO `psb_detailbiaya` VALUES ('996', '8', '0', '13', '6', '98');
INSERT INTO `psb_detailbiaya` VALUES ('997', '8', '0', '13', '7', '98');
INSERT INTO `psb_detailbiaya` VALUES ('998', '8', '0', '13', '9', '98');
INSERT INTO `psb_detailbiaya` VALUES ('999', '8', '0', '13', '10', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1000', '4', '0', '13', '1', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1001', '4', '0', '13', '2', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1002', '4', '0', '13', '3', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1003', '4', '0', '13', '4', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1004', '4', '0', '13', '5', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1005', '4', '0', '13', '6', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1006', '4', '0', '13', '7', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1007', '4', '0', '13', '9', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1008', '4', '0', '13', '10', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1009', '3', '0', '14', '1', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1010', '3', '0', '14', '2', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1011', '3', '0', '14', '3', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1012', '3', '0', '14', '4', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1013', '3', '0', '14', '5', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1014', '3', '0', '14', '6', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1015', '3', '0', '14', '7', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1016', '3', '0', '14', '9', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1017', '3', '0', '14', '10', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1018', '7', '0', '14', '1', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1019', '7', '0', '14', '2', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1020', '7', '0', '14', '3', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1021', '7', '0', '14', '4', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1022', '7', '0', '14', '5', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1023', '7', '0', '14', '6', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1024', '7', '0', '14', '7', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1025', '7', '0', '14', '9', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1026', '7', '0', '14', '10', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1027', '8', '0', '14', '1', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1028', '8', '0', '14', '2', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1029', '8', '0', '14', '3', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1030', '8', '0', '14', '4', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1031', '8', '0', '14', '5', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1032', '8', '0', '14', '6', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1033', '8', '0', '14', '7', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1034', '8', '0', '14', '9', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1035', '8', '0', '14', '10', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1036', '4', '0', '14', '1', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1037', '4', '0', '14', '2', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1038', '4', '0', '14', '3', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1039', '4', '0', '14', '4', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1040', '4', '0', '14', '5', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1041', '4', '0', '14', '6', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1042', '4', '0', '14', '7', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1043', '4', '0', '14', '9', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1044', '4', '0', '14', '10', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1045', '3', '0', '15', '1', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1046', '3', '0', '15', '2', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1047', '3', '0', '15', '3', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1048', '3', '0', '15', '4', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1049', '3', '0', '15', '5', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1050', '3', '0', '15', '6', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1051', '3', '0', '15', '7', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1052', '3', '0', '15', '9', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1053', '3', '0', '15', '10', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1054', '7', '0', '15', '1', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1055', '7', '0', '15', '2', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1056', '7', '0', '15', '3', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1057', '7', '0', '15', '4', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1058', '7', '0', '15', '5', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1059', '7', '0', '15', '6', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1060', '7', '0', '15', '7', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1061', '7', '0', '15', '9', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1062', '7', '0', '15', '10', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1063', '8', '0', '15', '1', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1064', '8', '0', '15', '2', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1065', '8', '0', '15', '3', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1066', '8', '0', '15', '4', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1067', '8', '0', '15', '5', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1068', '8', '0', '15', '6', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1069', '8', '0', '15', '7', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1070', '8', '0', '15', '9', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1071', '8', '0', '15', '10', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1072', '4', '0', '15', '1', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1073', '4', '0', '15', '2', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1074', '4', '0', '15', '3', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1075', '4', '0', '15', '4', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1076', '4', '0', '15', '5', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1077', '4', '0', '15', '6', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1078', '4', '0', '15', '7', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1079', '4', '0', '15', '9', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1080', '4', '0', '15', '10', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1081', '3', '0', '16', '1', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1082', '3', '0', '16', '2', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1083', '3', '0', '16', '3', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1084', '3', '0', '16', '4', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1085', '3', '0', '16', '5', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1086', '3', '0', '16', '6', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1087', '3', '0', '16', '7', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1088', '3', '0', '16', '9', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1089', '3', '0', '16', '10', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1090', '7', '0', '16', '1', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1091', '7', '0', '16', '2', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1092', '7', '0', '16', '3', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1093', '7', '0', '16', '4', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1094', '7', '0', '16', '5', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1095', '7', '0', '16', '6', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1096', '7', '0', '16', '7', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1097', '7', '0', '16', '9', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1098', '7', '0', '16', '10', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1099', '8', '0', '16', '1', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1100', '8', '0', '16', '2', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1101', '8', '0', '16', '3', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1102', '8', '0', '16', '4', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1103', '8', '0', '16', '5', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1104', '8', '0', '16', '6', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1105', '8', '0', '16', '7', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1106', '8', '0', '16', '9', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1107', '8', '0', '16', '10', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1108', '4', '0', '16', '1', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1109', '4', '0', '16', '2', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1110', '4', '0', '16', '3', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1111', '4', '0', '16', '4', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1112', '4', '0', '16', '5', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1113', '4', '0', '16', '6', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1114', '4', '0', '16', '7', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1115', '4', '0', '16', '9', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1116', '4', '0', '16', '10', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1117', '3', '0', '17', '1', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1118', '3', '0', '17', '2', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1119', '3', '0', '17', '3', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1120', '3', '0', '17', '4', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1121', '3', '0', '17', '5', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1122', '3', '0', '17', '6', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1123', '3', '0', '17', '7', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1124', '3', '0', '17', '9', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1125', '3', '0', '17', '10', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1126', '7', '0', '17', '1', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1127', '7', '0', '17', '2', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1128', '7', '0', '17', '3', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1129', '7', '0', '17', '4', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1130', '7', '0', '17', '5', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1131', '7', '0', '17', '6', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1132', '7', '0', '17', '7', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1133', '7', '0', '17', '9', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1134', '7', '0', '17', '10', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1135', '8', '0', '17', '1', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1136', '8', '0', '17', '2', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1137', '8', '0', '17', '3', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1138', '8', '0', '17', '4', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1139', '8', '0', '17', '5', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1140', '8', '0', '17', '6', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1141', '8', '0', '17', '7', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1142', '8', '0', '17', '9', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1143', '8', '0', '17', '10', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1144', '4', '0', '17', '1', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1145', '4', '0', '17', '2', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1146', '4', '0', '17', '3', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1147', '4', '0', '17', '4', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1148', '4', '0', '17', '5', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1149', '4', '0', '17', '6', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1150', '4', '0', '17', '7', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1151', '4', '0', '17', '9', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1152', '4', '0', '17', '10', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1153', '3', '0', '18', '1', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1154', '3', '0', '18', '2', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1155', '3', '0', '18', '3', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1156', '3', '0', '18', '4', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1157', '3', '0', '18', '5', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1158', '3', '0', '18', '6', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1159', '3', '0', '18', '7', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1160', '3', '0', '18', '9', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1161', '3', '0', '18', '10', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1162', '7', '0', '18', '1', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1163', '7', '0', '18', '2', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1164', '7', '0', '18', '3', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1165', '7', '0', '18', '4', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1166', '7', '0', '18', '5', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1167', '7', '0', '18', '6', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1168', '7', '0', '18', '7', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1169', '7', '0', '18', '9', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1170', '7', '0', '18', '10', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1171', '8', '0', '18', '1', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1172', '8', '0', '18', '2', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1173', '8', '0', '18', '3', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1174', '8', '0', '18', '4', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1175', '8', '0', '18', '5', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1176', '8', '0', '18', '6', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1177', '8', '0', '18', '7', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1178', '8', '0', '18', '9', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1179', '8', '0', '18', '10', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1180', '4', '0', '18', '1', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1181', '4', '0', '18', '2', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1182', '4', '0', '18', '3', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1183', '4', '0', '18', '4', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1184', '4', '0', '18', '5', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1185', '4', '0', '18', '6', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1186', '4', '0', '18', '7', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1187', '4', '0', '18', '9', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1188', '4', '0', '18', '10', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1189', '3', '0', '19', '1', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1190', '3', '0', '19', '2', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1191', '3', '0', '19', '3', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1192', '3', '0', '19', '4', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1193', '3', '0', '19', '5', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1194', '3', '0', '19', '6', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1195', '3', '0', '19', '7', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1196', '3', '0', '19', '9', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1197', '3', '0', '19', '10', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1198', '7', '0', '19', '1', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1199', '7', '0', '19', '2', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1200', '7', '0', '19', '3', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1201', '7', '0', '19', '4', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1202', '7', '0', '19', '5', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1203', '7', '0', '19', '6', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1204', '7', '0', '19', '7', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1205', '7', '0', '19', '9', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1206', '7', '0', '19', '10', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1207', '8', '0', '19', '1', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1208', '8', '0', '19', '2', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1209', '8', '0', '19', '3', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1210', '8', '0', '19', '4', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1211', '8', '0', '19', '5', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1212', '8', '0', '19', '6', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1213', '8', '0', '19', '7', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1214', '8', '0', '19', '9', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1215', '8', '0', '19', '10', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1216', '4', '0', '19', '1', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1217', '4', '0', '19', '2', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1218', '4', '0', '19', '3', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1219', '4', '0', '19', '4', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1220', '4', '0', '19', '5', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1221', '4', '0', '19', '6', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1222', '4', '0', '19', '7', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1223', '4', '0', '19', '9', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1224', '4', '0', '19', '10', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1225', '3', '0', '20', '1', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1226', '3', '0', '20', '2', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1227', '3', '0', '20', '3', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1228', '3', '0', '20', '4', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1229', '3', '0', '20', '5', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1230', '3', '0', '20', '6', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1231', '3', '0', '20', '7', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1232', '3', '0', '20', '9', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1233', '3', '0', '20', '10', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1234', '7', '0', '20', '1', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1235', '7', '0', '20', '2', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1236', '7', '0', '20', '3', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1237', '7', '0', '20', '4', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1238', '7', '0', '20', '5', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1239', '7', '0', '20', '6', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1240', '7', '0', '20', '7', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1241', '7', '0', '20', '9', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1242', '7', '0', '20', '10', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1243', '8', '0', '20', '1', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1244', '8', '0', '20', '2', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1245', '8', '0', '20', '3', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1246', '8', '0', '20', '4', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1247', '8', '0', '20', '5', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1248', '8', '0', '20', '6', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1249', '8', '0', '20', '7', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1250', '8', '0', '20', '9', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1251', '8', '0', '20', '10', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1252', '4', '0', '20', '1', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1253', '4', '0', '20', '2', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1254', '4', '0', '20', '3', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1255', '4', '0', '20', '4', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1256', '4', '0', '20', '5', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1257', '4', '0', '20', '6', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1258', '4', '0', '20', '7', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1259', '4', '0', '20', '9', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1260', '4', '0', '20', '10', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1261', '3', '0', '24', '1', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1262', '3', '0', '24', '2', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1263', '3', '0', '24', '3', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1264', '3', '0', '24', '4', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1265', '3', '0', '24', '5', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1266', '3', '0', '24', '6', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1267', '3', '0', '24', '7', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1268', '3', '0', '24', '9', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1269', '3', '0', '24', '10', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1270', '7', '0', '24', '1', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1271', '7', '0', '24', '2', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1272', '7', '0', '24', '3', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1273', '7', '0', '24', '4', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1274', '7', '0', '24', '5', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1275', '7', '0', '24', '6', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1276', '7', '0', '24', '7', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1277', '7', '0', '24', '9', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1278', '7', '0', '24', '10', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1279', '8', '0', '24', '1', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1280', '8', '0', '24', '2', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1281', '8', '0', '24', '3', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1282', '8', '0', '24', '4', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1283', '8', '0', '24', '5', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1284', '8', '0', '24', '6', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1285', '8', '0', '24', '7', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1286', '8', '0', '24', '9', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1287', '8', '0', '24', '10', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1288', '4', '0', '24', '1', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1289', '4', '0', '24', '2', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1290', '4', '0', '24', '3', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1291', '4', '0', '24', '4', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1292', '4', '0', '24', '5', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1293', '4', '0', '24', '6', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1294', '4', '0', '24', '7', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1295', '4', '0', '24', '9', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1296', '4', '0', '24', '10', '98');
INSERT INTO `psb_detailbiaya` VALUES ('1297', '3', '0', '9', '1', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1298', '3', '0', '9', '2', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1299', '3', '0', '9', '3', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1300', '3', '0', '9', '4', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1301', '3', '0', '9', '5', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1302', '3', '0', '9', '6', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1303', '3', '0', '9', '7', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1304', '3', '0', '9', '9', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1305', '3', '0', '9', '10', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1306', '7', '0', '9', '1', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1307', '7', '0', '9', '2', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1308', '7', '0', '9', '3', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1309', '7', '0', '9', '4', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1310', '7', '0', '9', '5', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1311', '7', '0', '9', '6', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1312', '7', '0', '9', '7', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1313', '7', '0', '9', '9', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1314', '7', '0', '9', '10', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1315', '8', '0', '9', '1', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1316', '8', '0', '9', '2', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1317', '8', '0', '9', '3', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1318', '8', '0', '9', '4', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1319', '8', '0', '9', '5', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1320', '8', '0', '9', '6', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1321', '8', '0', '9', '7', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1322', '8', '0', '9', '9', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1323', '8', '0', '9', '10', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1324', '4', '0', '9', '1', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1325', '4', '0', '9', '2', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1326', '4', '0', '9', '3', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1327', '4', '0', '9', '4', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1328', '4', '0', '9', '5', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1329', '4', '0', '9', '6', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1330', '4', '0', '9', '7', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1331', '4', '0', '9', '9', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1332', '4', '0', '9', '10', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1333', '3', '0', '10', '1', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1334', '3', '0', '10', '2', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1335', '3', '0', '10', '3', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1336', '3', '0', '10', '4', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1337', '3', '0', '10', '5', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1338', '3', '0', '10', '6', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1339', '3', '0', '10', '7', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1340', '3', '0', '10', '9', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1341', '3', '0', '10', '10', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1342', '7', '0', '10', '1', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1343', '7', '0', '10', '2', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1344', '7', '0', '10', '3', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1345', '7', '0', '10', '4', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1346', '7', '0', '10', '5', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1347', '7', '0', '10', '6', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1348', '7', '0', '10', '7', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1349', '7', '0', '10', '9', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1350', '7', '0', '10', '10', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1351', '8', '0', '10', '1', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1352', '8', '0', '10', '2', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1353', '8', '0', '10', '3', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1354', '8', '0', '10', '4', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1355', '8', '0', '10', '5', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1356', '8', '0', '10', '6', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1357', '8', '0', '10', '7', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1358', '8', '0', '10', '9', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1359', '8', '0', '10', '10', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1360', '4', '0', '10', '1', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1361', '4', '0', '10', '2', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1362', '4', '0', '10', '3', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1363', '4', '0', '10', '4', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1364', '4', '0', '10', '5', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1365', '4', '0', '10', '6', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1366', '4', '0', '10', '7', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1367', '4', '0', '10', '9', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1368', '4', '0', '10', '10', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1369', '3', '0', '11', '1', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1370', '3', '0', '11', '2', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1371', '3', '0', '11', '3', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1372', '3', '0', '11', '4', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1373', '3', '0', '11', '5', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1374', '3', '0', '11', '6', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1375', '3', '0', '11', '7', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1376', '3', '0', '11', '9', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1377', '3', '0', '11', '10', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1378', '7', '0', '11', '1', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1379', '7', '0', '11', '2', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1380', '7', '0', '11', '3', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1381', '7', '0', '11', '4', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1382', '7', '0', '11', '5', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1383', '7', '0', '11', '6', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1384', '7', '0', '11', '7', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1385', '7', '0', '11', '9', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1386', '7', '0', '11', '10', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1387', '8', '0', '11', '1', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1388', '8', '0', '11', '2', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1389', '8', '0', '11', '3', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1390', '8', '0', '11', '4', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1391', '8', '0', '11', '5', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1392', '8', '0', '11', '6', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1393', '8', '0', '11', '7', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1394', '8', '0', '11', '9', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1395', '8', '0', '11', '10', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1396', '4', '0', '11', '1', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1397', '4', '0', '11', '2', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1398', '4', '0', '11', '3', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1399', '4', '0', '11', '4', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1400', '4', '0', '11', '5', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1401', '4', '0', '11', '6', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1402', '4', '0', '11', '7', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1403', '4', '0', '11', '9', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1404', '4', '0', '11', '10', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1405', '3', '0', '12', '1', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1406', '3', '0', '12', '2', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1407', '3', '0', '12', '3', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1408', '3', '0', '12', '4', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1409', '3', '0', '12', '5', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1410', '3', '0', '12', '6', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1411', '3', '0', '12', '7', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1412', '3', '0', '12', '9', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1413', '3', '0', '12', '10', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1414', '7', '0', '12', '1', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1415', '7', '0', '12', '2', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1416', '7', '0', '12', '3', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1417', '7', '0', '12', '4', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1418', '7', '0', '12', '5', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1419', '7', '0', '12', '6', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1420', '7', '0', '12', '7', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1421', '7', '0', '12', '9', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1422', '7', '0', '12', '10', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1423', '8', '0', '12', '1', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1424', '8', '0', '12', '2', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1425', '8', '0', '12', '3', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1426', '8', '0', '12', '4', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1427', '8', '0', '12', '5', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1428', '8', '0', '12', '6', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1429', '8', '0', '12', '7', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1430', '8', '0', '12', '9', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1431', '8', '0', '12', '10', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1432', '4', '0', '12', '1', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1433', '4', '0', '12', '2', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1434', '4', '0', '12', '3', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1435', '4', '0', '12', '4', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1436', '4', '0', '12', '5', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1437', '4', '0', '12', '6', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1438', '4', '0', '12', '7', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1439', '4', '0', '12', '9', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1440', '4', '0', '12', '10', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1441', '3', '0', '13', '1', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1442', '3', '0', '13', '2', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1443', '3', '0', '13', '3', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1444', '3', '0', '13', '4', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1445', '3', '0', '13', '5', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1446', '3', '0', '13', '6', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1447', '3', '0', '13', '7', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1448', '3', '0', '13', '9', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1449', '3', '0', '13', '10', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1450', '7', '0', '13', '1', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1451', '7', '0', '13', '2', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1452', '7', '0', '13', '3', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1453', '7', '0', '13', '4', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1454', '7', '0', '13', '5', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1455', '7', '0', '13', '6', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1456', '7', '0', '13', '7', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1457', '7', '0', '13', '9', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1458', '7', '0', '13', '10', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1459', '8', '0', '13', '1', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1460', '8', '0', '13', '2', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1461', '8', '0', '13', '3', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1462', '8', '0', '13', '4', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1463', '8', '0', '13', '5', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1464', '8', '0', '13', '6', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1465', '8', '0', '13', '7', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1466', '8', '0', '13', '9', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1467', '8', '0', '13', '10', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1468', '4', '0', '13', '1', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1469', '4', '0', '13', '2', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1470', '4', '0', '13', '3', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1471', '4', '0', '13', '4', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1472', '4', '0', '13', '5', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1473', '4', '0', '13', '6', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1474', '4', '0', '13', '7', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1475', '4', '0', '13', '9', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1476', '4', '0', '13', '10', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1477', '3', '0', '14', '1', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1478', '3', '0', '14', '2', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1479', '3', '0', '14', '3', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1480', '3', '0', '14', '4', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1481', '3', '0', '14', '5', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1482', '3', '0', '14', '6', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1483', '3', '0', '14', '7', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1484', '3', '0', '14', '9', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1485', '3', '0', '14', '10', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1486', '7', '0', '14', '1', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1487', '7', '0', '14', '2', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1488', '7', '0', '14', '3', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1489', '7', '0', '14', '4', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1490', '7', '0', '14', '5', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1491', '7', '0', '14', '6', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1492', '7', '0', '14', '7', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1493', '7', '0', '14', '9', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1494', '7', '0', '14', '10', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1495', '8', '0', '14', '1', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1496', '8', '0', '14', '2', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1497', '8', '0', '14', '3', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1498', '8', '0', '14', '4', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1499', '8', '0', '14', '5', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1500', '8', '0', '14', '6', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1501', '8', '0', '14', '7', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1502', '8', '0', '14', '9', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1503', '8', '0', '14', '10', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1504', '4', '0', '14', '1', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1505', '4', '0', '14', '2', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1506', '4', '0', '14', '3', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1507', '4', '0', '14', '4', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1508', '4', '0', '14', '5', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1509', '4', '0', '14', '6', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1510', '4', '0', '14', '7', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1511', '4', '0', '14', '9', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1512', '4', '0', '14', '10', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1513', '3', '0', '15', '1', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1514', '3', '0', '15', '2', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1515', '3', '0', '15', '3', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1516', '3', '0', '15', '4', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1517', '3', '0', '15', '5', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1518', '3', '0', '15', '6', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1519', '3', '0', '15', '7', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1520', '3', '0', '15', '9', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1521', '3', '0', '15', '10', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1522', '7', '0', '15', '1', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1523', '7', '0', '15', '2', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1524', '7', '0', '15', '3', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1525', '7', '0', '15', '4', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1526', '7', '0', '15', '5', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1527', '7', '0', '15', '6', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1528', '7', '0', '15', '7', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1529', '7', '0', '15', '9', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1530', '7', '0', '15', '10', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1531', '8', '0', '15', '1', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1532', '8', '0', '15', '2', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1533', '8', '0', '15', '3', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1534', '8', '0', '15', '4', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1535', '8', '0', '15', '5', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1536', '8', '0', '15', '6', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1537', '8', '0', '15', '7', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1538', '8', '0', '15', '9', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1539', '8', '0', '15', '10', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1540', '4', '0', '15', '1', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1541', '4', '0', '15', '2', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1542', '4', '0', '15', '3', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1543', '4', '0', '15', '4', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1544', '4', '0', '15', '5', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1545', '4', '0', '15', '6', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1546', '4', '0', '15', '7', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1547', '4', '0', '15', '9', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1548', '4', '0', '15', '10', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1549', '3', '0', '16', '1', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1550', '3', '0', '16', '2', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1551', '3', '0', '16', '3', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1552', '3', '0', '16', '4', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1553', '3', '0', '16', '5', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1554', '3', '0', '16', '6', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1555', '3', '0', '16', '7', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1556', '3', '0', '16', '9', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1557', '3', '0', '16', '10', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1558', '7', '0', '16', '1', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1559', '7', '0', '16', '2', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1560', '7', '0', '16', '3', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1561', '7', '0', '16', '4', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1562', '7', '0', '16', '5', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1563', '7', '0', '16', '6', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1564', '7', '0', '16', '7', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1565', '7', '0', '16', '9', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1566', '7', '0', '16', '10', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1567', '8', '0', '16', '1', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1568', '8', '0', '16', '2', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1569', '8', '0', '16', '3', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1570', '8', '0', '16', '4', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1571', '8', '0', '16', '5', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1572', '8', '0', '16', '6', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1573', '8', '0', '16', '7', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1574', '8', '0', '16', '9', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1575', '8', '0', '16', '10', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1576', '4', '0', '16', '1', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1577', '4', '0', '16', '2', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1578', '4', '0', '16', '3', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1579', '4', '0', '16', '4', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1580', '4', '0', '16', '5', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1581', '4', '0', '16', '6', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1582', '4', '0', '16', '7', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1583', '4', '0', '16', '9', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1584', '4', '0', '16', '10', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1585', '3', '0', '17', '1', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1586', '3', '0', '17', '2', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1587', '3', '0', '17', '3', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1588', '3', '0', '17', '4', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1589', '3', '0', '17', '5', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1590', '3', '0', '17', '6', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1591', '3', '0', '17', '7', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1592', '3', '0', '17', '9', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1593', '3', '0', '17', '10', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1594', '7', '0', '17', '1', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1595', '7', '0', '17', '2', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1596', '7', '0', '17', '3', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1597', '7', '0', '17', '4', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1598', '7', '0', '17', '5', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1599', '7', '0', '17', '6', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1600', '7', '0', '17', '7', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1601', '7', '0', '17', '9', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1602', '7', '0', '17', '10', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1603', '8', '0', '17', '1', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1604', '8', '0', '17', '2', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1605', '8', '0', '17', '3', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1606', '8', '0', '17', '4', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1607', '8', '0', '17', '5', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1608', '8', '0', '17', '6', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1609', '8', '0', '17', '7', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1610', '8', '0', '17', '9', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1611', '8', '0', '17', '10', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1612', '4', '0', '17', '1', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1613', '4', '0', '17', '2', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1614', '4', '0', '17', '3', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1615', '4', '0', '17', '4', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1616', '4', '0', '17', '5', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1617', '4', '0', '17', '6', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1618', '4', '0', '17', '7', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1619', '4', '0', '17', '9', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1620', '4', '0', '17', '10', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1621', '3', '0', '18', '1', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1622', '3', '0', '18', '2', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1623', '3', '0', '18', '3', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1624', '3', '0', '18', '4', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1625', '3', '0', '18', '5', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1626', '3', '0', '18', '6', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1627', '3', '0', '18', '7', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1628', '3', '0', '18', '9', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1629', '3', '0', '18', '10', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1630', '7', '0', '18', '1', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1631', '7', '0', '18', '2', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1632', '7', '0', '18', '3', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1633', '7', '0', '18', '4', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1634', '7', '0', '18', '5', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1635', '7', '0', '18', '6', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1636', '7', '0', '18', '7', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1637', '7', '0', '18', '9', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1638', '7', '0', '18', '10', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1639', '8', '0', '18', '1', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1640', '8', '0', '18', '2', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1641', '8', '0', '18', '3', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1642', '8', '0', '18', '4', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1643', '8', '0', '18', '5', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1644', '8', '0', '18', '6', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1645', '8', '0', '18', '7', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1646', '8', '0', '18', '9', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1647', '8', '0', '18', '10', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1648', '4', '0', '18', '1', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1649', '4', '0', '18', '2', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1650', '4', '0', '18', '3', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1651', '4', '0', '18', '4', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1652', '4', '0', '18', '5', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1653', '4', '0', '18', '6', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1654', '4', '0', '18', '7', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1655', '4', '0', '18', '9', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1656', '4', '0', '18', '10', '99');
INSERT INTO `psb_detailbiaya` VALUES ('1657', '3', '0', '9', '1', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1658', '3', '0', '9', '2', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1659', '3', '0', '9', '3', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1660', '3', '0', '9', '4', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1661', '3', '0', '9', '5', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1662', '3', '0', '9', '6', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1663', '3', '0', '9', '7', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1664', '3', '0', '9', '9', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1665', '3', '0', '9', '10', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1666', '7', '0', '9', '1', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1667', '7', '0', '9', '2', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1668', '7', '0', '9', '3', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1669', '7', '0', '9', '4', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1670', '7', '0', '9', '5', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1671', '7', '0', '9', '6', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1672', '7', '0', '9', '7', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1673', '7', '0', '9', '9', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1674', '7', '0', '9', '10', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1675', '8', '0', '9', '1', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1676', '8', '0', '9', '2', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1677', '8', '0', '9', '3', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1678', '8', '0', '9', '4', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1679', '8', '0', '9', '5', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1680', '8', '0', '9', '6', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1681', '8', '0', '9', '7', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1682', '8', '0', '9', '9', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1683', '8', '0', '9', '10', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1684', '4', '0', '9', '1', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1685', '4', '0', '9', '2', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1686', '4', '0', '9', '3', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1687', '4', '0', '9', '4', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1688', '4', '0', '9', '5', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1689', '4', '0', '9', '6', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1690', '4', '0', '9', '7', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1691', '4', '0', '9', '9', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1692', '4', '0', '9', '10', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1693', '3', '0', '10', '1', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1694', '3', '0', '10', '2', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1695', '3', '0', '10', '3', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1696', '3', '0', '10', '4', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1697', '3', '0', '10', '5', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1698', '3', '0', '10', '6', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1699', '3', '0', '10', '7', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1700', '3', '0', '10', '9', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1701', '3', '0', '10', '10', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1702', '7', '0', '10', '1', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1703', '7', '0', '10', '2', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1704', '7', '0', '10', '3', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1705', '7', '0', '10', '4', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1706', '7', '0', '10', '5', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1707', '7', '0', '10', '6', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1708', '7', '0', '10', '7', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1709', '7', '0', '10', '9', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1710', '7', '0', '10', '10', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1711', '8', '0', '10', '1', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1712', '8', '0', '10', '2', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1713', '8', '0', '10', '3', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1714', '8', '0', '10', '4', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1715', '8', '0', '10', '5', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1716', '8', '0', '10', '6', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1717', '8', '0', '10', '7', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1718', '8', '0', '10', '9', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1719', '8', '0', '10', '10', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1720', '4', '0', '10', '1', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1721', '4', '0', '10', '2', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1722', '4', '0', '10', '3', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1723', '4', '0', '10', '4', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1724', '4', '0', '10', '5', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1725', '4', '0', '10', '6', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1726', '4', '0', '10', '7', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1727', '4', '0', '10', '9', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1728', '4', '0', '10', '10', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1729', '3', '0', '11', '1', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1730', '3', '0', '11', '2', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1731', '3', '0', '11', '3', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1732', '3', '0', '11', '4', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1733', '3', '0', '11', '5', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1734', '3', '0', '11', '6', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1735', '3', '0', '11', '7', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1736', '3', '0', '11', '9', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1737', '3', '0', '11', '10', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1738', '7', '0', '11', '1', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1739', '7', '0', '11', '2', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1740', '7', '0', '11', '3', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1741', '7', '0', '11', '4', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1742', '7', '0', '11', '5', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1743', '7', '0', '11', '6', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1744', '7', '0', '11', '7', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1745', '7', '0', '11', '9', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1746', '7', '0', '11', '10', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1747', '8', '0', '11', '1', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1748', '8', '0', '11', '2', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1749', '8', '0', '11', '3', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1750', '8', '0', '11', '4', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1751', '8', '0', '11', '5', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1752', '8', '0', '11', '6', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1753', '8', '0', '11', '7', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1754', '8', '0', '11', '9', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1755', '8', '0', '11', '10', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1756', '4', '0', '11', '1', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1757', '4', '0', '11', '2', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1758', '4', '0', '11', '3', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1759', '4', '0', '11', '4', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1760', '4', '0', '11', '5', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1761', '4', '0', '11', '6', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1762', '4', '0', '11', '7', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1763', '4', '0', '11', '9', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1764', '4', '0', '11', '10', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1765', '3', '0', '12', '1', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1766', '3', '0', '12', '2', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1767', '3', '0', '12', '3', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1768', '3', '0', '12', '4', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1769', '3', '0', '12', '5', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1770', '3', '0', '12', '6', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1771', '3', '0', '12', '7', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1772', '3', '0', '12', '9', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1773', '3', '0', '12', '10', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1774', '7', '0', '12', '1', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1775', '7', '0', '12', '2', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1776', '7', '0', '12', '3', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1777', '7', '0', '12', '4', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1778', '7', '0', '12', '5', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1779', '7', '0', '12', '6', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1780', '7', '0', '12', '7', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1781', '7', '0', '12', '9', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1782', '7', '0', '12', '10', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1783', '8', '0', '12', '1', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1784', '8', '0', '12', '2', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1785', '8', '0', '12', '3', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1786', '8', '0', '12', '4', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1787', '8', '0', '12', '5', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1788', '8', '0', '12', '6', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1789', '8', '0', '12', '7', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1790', '8', '0', '12', '9', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1791', '8', '0', '12', '10', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1792', '4', '0', '12', '1', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1793', '4', '0', '12', '2', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1794', '4', '0', '12', '3', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1795', '4', '0', '12', '4', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1796', '4', '0', '12', '5', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1797', '4', '0', '12', '6', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1798', '4', '0', '12', '7', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1799', '4', '0', '12', '9', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1800', '4', '0', '12', '10', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1801', '3', '0', '13', '1', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1802', '3', '0', '13', '2', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1803', '3', '0', '13', '3', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1804', '3', '0', '13', '4', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1805', '3', '0', '13', '5', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1806', '3', '0', '13', '6', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1807', '3', '0', '13', '7', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1808', '3', '0', '13', '9', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1809', '3', '0', '13', '10', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1810', '7', '0', '13', '1', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1811', '7', '0', '13', '2', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1812', '7', '0', '13', '3', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1813', '7', '0', '13', '4', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1814', '7', '0', '13', '5', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1815', '7', '0', '13', '6', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1816', '7', '0', '13', '7', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1817', '7', '0', '13', '9', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1818', '7', '0', '13', '10', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1819', '8', '0', '13', '1', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1820', '8', '0', '13', '2', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1821', '8', '0', '13', '3', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1822', '8', '0', '13', '4', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1823', '8', '0', '13', '5', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1824', '8', '0', '13', '6', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1825', '8', '0', '13', '7', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1826', '8', '0', '13', '9', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1827', '8', '0', '13', '10', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1828', '4', '0', '13', '1', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1829', '4', '0', '13', '2', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1830', '4', '0', '13', '3', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1831', '4', '0', '13', '4', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1832', '4', '0', '13', '5', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1833', '4', '0', '13', '6', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1834', '4', '0', '13', '7', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1835', '4', '0', '13', '9', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1836', '4', '0', '13', '10', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1837', '3', '0', '14', '1', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1838', '3', '0', '14', '2', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1839', '3', '0', '14', '3', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1840', '3', '0', '14', '4', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1841', '3', '0', '14', '5', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1842', '3', '0', '14', '6', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1843', '3', '0', '14', '7', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1844', '3', '0', '14', '9', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1845', '3', '0', '14', '10', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1846', '7', '0', '14', '1', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1847', '7', '0', '14', '2', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1848', '7', '0', '14', '3', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1849', '7', '0', '14', '4', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1850', '7', '0', '14', '5', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1851', '7', '0', '14', '6', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1852', '7', '0', '14', '7', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1853', '7', '0', '14', '9', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1854', '7', '0', '14', '10', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1855', '8', '0', '14', '1', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1856', '8', '0', '14', '2', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1857', '8', '0', '14', '3', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1858', '8', '0', '14', '4', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1859', '8', '0', '14', '5', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1860', '8', '0', '14', '6', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1861', '8', '0', '14', '7', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1862', '8', '0', '14', '9', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1863', '8', '0', '14', '10', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1864', '4', '0', '14', '1', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1865', '4', '0', '14', '2', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1866', '4', '0', '14', '3', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1867', '4', '0', '14', '4', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1868', '4', '0', '14', '5', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1869', '4', '0', '14', '6', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1870', '4', '0', '14', '7', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1871', '4', '0', '14', '9', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1872', '4', '0', '14', '10', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1873', '3', '0', '15', '1', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1874', '3', '0', '15', '2', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1875', '3', '0', '15', '3', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1876', '3', '0', '15', '4', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1877', '3', '0', '15', '5', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1878', '3', '0', '15', '6', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1879', '3', '0', '15', '7', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1880', '3', '0', '15', '9', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1881', '3', '0', '15', '10', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1882', '7', '0', '15', '1', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1883', '7', '0', '15', '2', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1884', '7', '0', '15', '3', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1885', '7', '0', '15', '4', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1886', '7', '0', '15', '5', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1887', '7', '0', '15', '6', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1888', '7', '0', '15', '7', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1889', '7', '0', '15', '9', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1890', '7', '0', '15', '10', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1891', '8', '0', '15', '1', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1892', '8', '0', '15', '2', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1893', '8', '0', '15', '3', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1894', '8', '0', '15', '4', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1895', '8', '0', '15', '5', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1896', '8', '0', '15', '6', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1897', '8', '0', '15', '7', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1898', '8', '0', '15', '9', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1899', '8', '0', '15', '10', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1900', '4', '0', '15', '1', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1901', '4', '0', '15', '2', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1902', '4', '0', '15', '3', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1903', '4', '0', '15', '4', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1904', '4', '0', '15', '5', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1905', '4', '0', '15', '6', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1906', '4', '0', '15', '7', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1907', '4', '0', '15', '9', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1908', '4', '0', '15', '10', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1909', '3', '0', '16', '1', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1910', '3', '0', '16', '2', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1911', '3', '0', '16', '3', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1912', '3', '0', '16', '4', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1913', '3', '0', '16', '5', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1914', '3', '0', '16', '6', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1915', '3', '0', '16', '7', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1916', '3', '0', '16', '9', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1917', '3', '0', '16', '10', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1918', '7', '0', '16', '1', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1919', '7', '0', '16', '2', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1920', '7', '0', '16', '3', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1921', '7', '0', '16', '4', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1922', '7', '0', '16', '5', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1923', '7', '0', '16', '6', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1924', '7', '0', '16', '7', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1925', '7', '0', '16', '9', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1926', '7', '0', '16', '10', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1927', '8', '0', '16', '1', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1928', '8', '0', '16', '2', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1929', '8', '0', '16', '3', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1930', '8', '0', '16', '4', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1931', '8', '0', '16', '5', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1932', '8', '0', '16', '6', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1933', '8', '0', '16', '7', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1934', '8', '0', '16', '9', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1935', '8', '0', '16', '10', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1936', '4', '0', '16', '1', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1937', '4', '0', '16', '2', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1938', '4', '0', '16', '3', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1939', '4', '0', '16', '4', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1940', '4', '0', '16', '5', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1941', '4', '0', '16', '6', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1942', '4', '0', '16', '7', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1943', '4', '0', '16', '9', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1944', '4', '0', '16', '10', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1945', '3', '0', '17', '1', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1946', '3', '0', '17', '2', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1947', '3', '0', '17', '3', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1948', '3', '0', '17', '4', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1949', '3', '0', '17', '5', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1950', '3', '0', '17', '6', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1951', '3', '0', '17', '7', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1952', '3', '0', '17', '9', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1953', '3', '0', '17', '10', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1954', '7', '0', '17', '1', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1955', '7', '0', '17', '2', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1956', '7', '0', '17', '3', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1957', '7', '0', '17', '4', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1958', '7', '0', '17', '5', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1959', '7', '0', '17', '6', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1960', '7', '0', '17', '7', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1961', '7', '0', '17', '9', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1962', '7', '0', '17', '10', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1963', '8', '0', '17', '1', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1964', '8', '0', '17', '2', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1965', '8', '0', '17', '3', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1966', '8', '0', '17', '4', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1967', '8', '0', '17', '5', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1968', '8', '0', '17', '6', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1969', '8', '0', '17', '7', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1970', '8', '0', '17', '9', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1971', '8', '0', '17', '10', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1972', '4', '0', '17', '1', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1973', '4', '0', '17', '2', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1974', '4', '0', '17', '3', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1975', '4', '0', '17', '4', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1976', '4', '0', '17', '5', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1977', '4', '0', '17', '6', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1978', '4', '0', '17', '7', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1979', '4', '0', '17', '9', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1980', '4', '0', '17', '10', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1981', '3', '0', '18', '1', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1982', '3', '0', '18', '2', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1983', '3', '0', '18', '3', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1984', '3', '0', '18', '4', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1985', '3', '0', '18', '5', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1986', '3', '0', '18', '6', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1987', '3', '0', '18', '7', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1988', '3', '0', '18', '9', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1989', '3', '0', '18', '10', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1990', '7', '0', '18', '1', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1991', '7', '0', '18', '2', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1992', '7', '0', '18', '3', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1993', '7', '0', '18', '4', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1994', '7', '0', '18', '5', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1995', '7', '0', '18', '6', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1996', '7', '0', '18', '7', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1997', '7', '0', '18', '9', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1998', '7', '0', '18', '10', '100');
INSERT INTO `psb_detailbiaya` VALUES ('1999', '8', '0', '18', '1', '100');
INSERT INTO `psb_detailbiaya` VALUES ('2000', '8', '0', '18', '2', '100');
INSERT INTO `psb_detailbiaya` VALUES ('2001', '8', '0', '18', '3', '100');
INSERT INTO `psb_detailbiaya` VALUES ('2002', '8', '0', '18', '4', '100');
INSERT INTO `psb_detailbiaya` VALUES ('2003', '8', '0', '18', '5', '100');
INSERT INTO `psb_detailbiaya` VALUES ('2004', '8', '0', '18', '6', '100');
INSERT INTO `psb_detailbiaya` VALUES ('2005', '8', '0', '18', '7', '100');
INSERT INTO `psb_detailbiaya` VALUES ('2006', '8', '0', '18', '9', '100');
INSERT INTO `psb_detailbiaya` VALUES ('2007', '8', '0', '18', '10', '100');
INSERT INTO `psb_detailbiaya` VALUES ('2008', '4', '0', '18', '1', '100');
INSERT INTO `psb_detailbiaya` VALUES ('2009', '4', '0', '18', '2', '100');
INSERT INTO `psb_detailbiaya` VALUES ('2010', '4', '0', '18', '3', '100');
INSERT INTO `psb_detailbiaya` VALUES ('2011', '4', '0', '18', '4', '100');
INSERT INTO `psb_detailbiaya` VALUES ('2012', '4', '0', '18', '5', '100');
INSERT INTO `psb_detailbiaya` VALUES ('2013', '4', '0', '18', '6', '100');
INSERT INTO `psb_detailbiaya` VALUES ('2014', '4', '0', '18', '7', '100');
INSERT INTO `psb_detailbiaya` VALUES ('2015', '4', '0', '18', '9', '100');
INSERT INTO `psb_detailbiaya` VALUES ('2016', '4', '0', '18', '10', '100');
INSERT INTO `psb_detailbiaya` VALUES ('2017', '3', '0', '4', '1', '101');
INSERT INTO `psb_detailbiaya` VALUES ('2018', '3', '0', '4', '2', '101');
INSERT INTO `psb_detailbiaya` VALUES ('2019', '3', '0', '4', '3', '101');
INSERT INTO `psb_detailbiaya` VALUES ('2020', '3', '0', '4', '4', '101');
INSERT INTO `psb_detailbiaya` VALUES ('2021', '3', '0', '4', '5', '101');
INSERT INTO `psb_detailbiaya` VALUES ('2022', '3', '0', '4', '6', '101');
INSERT INTO `psb_detailbiaya` VALUES ('2023', '3', '0', '4', '7', '101');
INSERT INTO `psb_detailbiaya` VALUES ('2024', '3', '0', '4', '9', '101');
INSERT INTO `psb_detailbiaya` VALUES ('2025', '3', '0', '4', '10', '101');
INSERT INTO `psb_detailbiaya` VALUES ('2026', '7', '0', '4', '1', '101');
INSERT INTO `psb_detailbiaya` VALUES ('2027', '7', '0', '4', '2', '101');
INSERT INTO `psb_detailbiaya` VALUES ('2028', '7', '0', '4', '3', '101');
INSERT INTO `psb_detailbiaya` VALUES ('2029', '7', '0', '4', '4', '101');
INSERT INTO `psb_detailbiaya` VALUES ('2030', '7', '0', '4', '5', '101');
INSERT INTO `psb_detailbiaya` VALUES ('2031', '7', '0', '4', '6', '101');
INSERT INTO `psb_detailbiaya` VALUES ('2032', '7', '0', '4', '7', '101');
INSERT INTO `psb_detailbiaya` VALUES ('2033', '7', '0', '4', '9', '101');
INSERT INTO `psb_detailbiaya` VALUES ('2034', '7', '0', '4', '10', '101');
INSERT INTO `psb_detailbiaya` VALUES ('2035', '8', '0', '4', '1', '101');
INSERT INTO `psb_detailbiaya` VALUES ('2036', '8', '0', '4', '2', '101');
INSERT INTO `psb_detailbiaya` VALUES ('2037', '8', '0', '4', '3', '101');
INSERT INTO `psb_detailbiaya` VALUES ('2038', '8', '0', '4', '4', '101');
INSERT INTO `psb_detailbiaya` VALUES ('2039', '8', '0', '4', '5', '101');
INSERT INTO `psb_detailbiaya` VALUES ('2040', '8', '0', '4', '6', '101');
INSERT INTO `psb_detailbiaya` VALUES ('2041', '8', '0', '4', '7', '101');
INSERT INTO `psb_detailbiaya` VALUES ('2042', '8', '0', '4', '9', '101');
INSERT INTO `psb_detailbiaya` VALUES ('2043', '8', '0', '4', '10', '101');
INSERT INTO `psb_detailbiaya` VALUES ('2044', '4', '0', '4', '1', '101');
INSERT INTO `psb_detailbiaya` VALUES ('2045', '4', '0', '4', '2', '101');
INSERT INTO `psb_detailbiaya` VALUES ('2046', '4', '0', '4', '3', '101');
INSERT INTO `psb_detailbiaya` VALUES ('2047', '4', '0', '4', '4', '101');
INSERT INTO `psb_detailbiaya` VALUES ('2048', '4', '0', '4', '5', '101');
INSERT INTO `psb_detailbiaya` VALUES ('2049', '4', '0', '4', '6', '101');
INSERT INTO `psb_detailbiaya` VALUES ('2050', '4', '0', '4', '7', '101');
INSERT INTO `psb_detailbiaya` VALUES ('2051', '4', '0', '4', '9', '101');
INSERT INTO `psb_detailbiaya` VALUES ('2052', '4', '0', '4', '10', '101');
INSERT INTO `psb_detailbiaya` VALUES ('2053', '3', '0', '5', '1', '101');
INSERT INTO `psb_detailbiaya` VALUES ('2054', '3', '0', '5', '2', '101');
INSERT INTO `psb_detailbiaya` VALUES ('2055', '3', '0', '5', '3', '101');
INSERT INTO `psb_detailbiaya` VALUES ('2056', '3', '0', '5', '4', '101');
INSERT INTO `psb_detailbiaya` VALUES ('2057', '3', '0', '5', '5', '101');
INSERT INTO `psb_detailbiaya` VALUES ('2058', '3', '0', '5', '6', '101');
INSERT INTO `psb_detailbiaya` VALUES ('2059', '3', '0', '5', '7', '101');
INSERT INTO `psb_detailbiaya` VALUES ('2060', '3', '0', '5', '9', '101');
INSERT INTO `psb_detailbiaya` VALUES ('2061', '3', '0', '5', '10', '101');
INSERT INTO `psb_detailbiaya` VALUES ('2062', '7', '0', '5', '1', '101');
INSERT INTO `psb_detailbiaya` VALUES ('2063', '7', '0', '5', '2', '101');
INSERT INTO `psb_detailbiaya` VALUES ('2064', '7', '0', '5', '3', '101');
INSERT INTO `psb_detailbiaya` VALUES ('2065', '7', '0', '5', '4', '101');
INSERT INTO `psb_detailbiaya` VALUES ('2066', '7', '0', '5', '5', '101');
INSERT INTO `psb_detailbiaya` VALUES ('2067', '7', '0', '5', '6', '101');
INSERT INTO `psb_detailbiaya` VALUES ('2068', '7', '0', '5', '7', '101');
INSERT INTO `psb_detailbiaya` VALUES ('2069', '7', '0', '5', '9', '101');
INSERT INTO `psb_detailbiaya` VALUES ('2070', '7', '0', '5', '10', '101');
INSERT INTO `psb_detailbiaya` VALUES ('2071', '8', '0', '5', '1', '101');
INSERT INTO `psb_detailbiaya` VALUES ('2072', '8', '0', '5', '2', '101');
INSERT INTO `psb_detailbiaya` VALUES ('2073', '8', '0', '5', '3', '101');
INSERT INTO `psb_detailbiaya` VALUES ('2074', '8', '0', '5', '4', '101');
INSERT INTO `psb_detailbiaya` VALUES ('2075', '8', '0', '5', '5', '101');
INSERT INTO `psb_detailbiaya` VALUES ('2076', '8', '0', '5', '6', '101');
INSERT INTO `psb_detailbiaya` VALUES ('2077', '8', '0', '5', '7', '101');
INSERT INTO `psb_detailbiaya` VALUES ('2078', '8', '0', '5', '9', '101');
INSERT INTO `psb_detailbiaya` VALUES ('2079', '8', '0', '5', '10', '101');
INSERT INTO `psb_detailbiaya` VALUES ('2080', '4', '0', '5', '1', '101');
INSERT INTO `psb_detailbiaya` VALUES ('2081', '4', '0', '5', '2', '101');
INSERT INTO `psb_detailbiaya` VALUES ('2082', '4', '0', '5', '3', '101');
INSERT INTO `psb_detailbiaya` VALUES ('2083', '4', '0', '5', '4', '101');
INSERT INTO `psb_detailbiaya` VALUES ('2084', '4', '0', '5', '5', '101');
INSERT INTO `psb_detailbiaya` VALUES ('2085', '4', '0', '5', '6', '101');
INSERT INTO `psb_detailbiaya` VALUES ('2086', '4', '0', '5', '7', '101');
INSERT INTO `psb_detailbiaya` VALUES ('2087', '4', '0', '5', '9', '101');
INSERT INTO `psb_detailbiaya` VALUES ('2088', '4', '0', '5', '10', '101');
INSERT INTO `psb_detailbiaya` VALUES ('2089', '3', '0', '6', '1', '101');
INSERT INTO `psb_detailbiaya` VALUES ('2090', '3', '0', '6', '2', '101');
INSERT INTO `psb_detailbiaya` VALUES ('2091', '3', '0', '6', '3', '101');
INSERT INTO `psb_detailbiaya` VALUES ('2092', '3', '0', '6', '4', '101');
INSERT INTO `psb_detailbiaya` VALUES ('2093', '3', '0', '6', '5', '101');
INSERT INTO `psb_detailbiaya` VALUES ('2094', '3', '0', '6', '6', '101');
INSERT INTO `psb_detailbiaya` VALUES ('2095', '3', '0', '6', '7', '101');
INSERT INTO `psb_detailbiaya` VALUES ('2096', '3', '0', '6', '9', '101');
INSERT INTO `psb_detailbiaya` VALUES ('2097', '3', '0', '6', '10', '101');
INSERT INTO `psb_detailbiaya` VALUES ('2098', '7', '0', '6', '1', '101');
INSERT INTO `psb_detailbiaya` VALUES ('2099', '7', '0', '6', '2', '101');
INSERT INTO `psb_detailbiaya` VALUES ('2100', '7', '0', '6', '3', '101');
INSERT INTO `psb_detailbiaya` VALUES ('2101', '7', '0', '6', '4', '101');
INSERT INTO `psb_detailbiaya` VALUES ('2102', '7', '0', '6', '5', '101');
INSERT INTO `psb_detailbiaya` VALUES ('2103', '7', '0', '6', '6', '101');
INSERT INTO `psb_detailbiaya` VALUES ('2104', '7', '0', '6', '7', '101');
INSERT INTO `psb_detailbiaya` VALUES ('2105', '7', '0', '6', '9', '101');
INSERT INTO `psb_detailbiaya` VALUES ('2106', '7', '0', '6', '10', '101');
INSERT INTO `psb_detailbiaya` VALUES ('2107', '8', '0', '6', '1', '101');
INSERT INTO `psb_detailbiaya` VALUES ('2108', '8', '0', '6', '2', '101');
INSERT INTO `psb_detailbiaya` VALUES ('2109', '8', '0', '6', '3', '101');
INSERT INTO `psb_detailbiaya` VALUES ('2110', '8', '0', '6', '4', '101');
INSERT INTO `psb_detailbiaya` VALUES ('2111', '8', '0', '6', '5', '101');
INSERT INTO `psb_detailbiaya` VALUES ('2112', '8', '0', '6', '6', '101');
INSERT INTO `psb_detailbiaya` VALUES ('2113', '8', '0', '6', '7', '101');
INSERT INTO `psb_detailbiaya` VALUES ('2114', '8', '0', '6', '9', '101');
INSERT INTO `psb_detailbiaya` VALUES ('2115', '8', '0', '6', '10', '101');
INSERT INTO `psb_detailbiaya` VALUES ('2116', '4', '0', '6', '1', '101');
INSERT INTO `psb_detailbiaya` VALUES ('2117', '4', '0', '6', '2', '101');
INSERT INTO `psb_detailbiaya` VALUES ('2118', '4', '0', '6', '3', '101');
INSERT INTO `psb_detailbiaya` VALUES ('2119', '4', '0', '6', '4', '101');
INSERT INTO `psb_detailbiaya` VALUES ('2120', '4', '0', '6', '5', '101');
INSERT INTO `psb_detailbiaya` VALUES ('2121', '4', '0', '6', '6', '101');
INSERT INTO `psb_detailbiaya` VALUES ('2122', '4', '0', '6', '7', '101');
INSERT INTO `psb_detailbiaya` VALUES ('2123', '4', '0', '6', '9', '101');
INSERT INTO `psb_detailbiaya` VALUES ('2124', '4', '0', '6', '10', '101');
INSERT INTO `psb_detailbiaya` VALUES ('2125', '3', '0', '7', '1', '101');
INSERT INTO `psb_detailbiaya` VALUES ('2126', '3', '0', '7', '2', '101');
INSERT INTO `psb_detailbiaya` VALUES ('2127', '3', '0', '7', '3', '101');
INSERT INTO `psb_detailbiaya` VALUES ('2128', '3', '0', '7', '4', '101');
INSERT INTO `psb_detailbiaya` VALUES ('2129', '3', '0', '7', '5', '101');
INSERT INTO `psb_detailbiaya` VALUES ('2130', '3', '0', '7', '6', '101');
INSERT INTO `psb_detailbiaya` VALUES ('2131', '3', '0', '7', '7', '101');
INSERT INTO `psb_detailbiaya` VALUES ('2132', '3', '0', '7', '9', '101');
INSERT INTO `psb_detailbiaya` VALUES ('2133', '3', '0', '7', '10', '101');
INSERT INTO `psb_detailbiaya` VALUES ('2134', '7', '0', '7', '1', '101');
INSERT INTO `psb_detailbiaya` VALUES ('2135', '7', '0', '7', '2', '101');
INSERT INTO `psb_detailbiaya` VALUES ('2136', '7', '0', '7', '3', '101');
INSERT INTO `psb_detailbiaya` VALUES ('2137', '7', '0', '7', '4', '101');
INSERT INTO `psb_detailbiaya` VALUES ('2138', '7', '0', '7', '5', '101');
INSERT INTO `psb_detailbiaya` VALUES ('2139', '7', '0', '7', '6', '101');
INSERT INTO `psb_detailbiaya` VALUES ('2140', '7', '0', '7', '7', '101');
INSERT INTO `psb_detailbiaya` VALUES ('2141', '7', '0', '7', '9', '101');
INSERT INTO `psb_detailbiaya` VALUES ('2142', '7', '0', '7', '10', '101');
INSERT INTO `psb_detailbiaya` VALUES ('2143', '8', '0', '7', '1', '101');
INSERT INTO `psb_detailbiaya` VALUES ('2144', '8', '0', '7', '2', '101');
INSERT INTO `psb_detailbiaya` VALUES ('2145', '8', '0', '7', '3', '101');
INSERT INTO `psb_detailbiaya` VALUES ('2146', '8', '0', '7', '4', '101');
INSERT INTO `psb_detailbiaya` VALUES ('2147', '8', '0', '7', '5', '101');
INSERT INTO `psb_detailbiaya` VALUES ('2148', '8', '0', '7', '6', '101');
INSERT INTO `psb_detailbiaya` VALUES ('2149', '8', '0', '7', '7', '101');
INSERT INTO `psb_detailbiaya` VALUES ('2150', '8', '0', '7', '9', '101');
INSERT INTO `psb_detailbiaya` VALUES ('2151', '8', '0', '7', '10', '101');
INSERT INTO `psb_detailbiaya` VALUES ('2152', '4', '0', '7', '1', '101');
INSERT INTO `psb_detailbiaya` VALUES ('2153', '4', '0', '7', '2', '101');
INSERT INTO `psb_detailbiaya` VALUES ('2154', '4', '0', '7', '3', '101');
INSERT INTO `psb_detailbiaya` VALUES ('2155', '4', '0', '7', '4', '101');
INSERT INTO `psb_detailbiaya` VALUES ('2156', '4', '0', '7', '5', '101');
INSERT INTO `psb_detailbiaya` VALUES ('2157', '4', '0', '7', '6', '101');
INSERT INTO `psb_detailbiaya` VALUES ('2158', '4', '0', '7', '7', '101');
INSERT INTO `psb_detailbiaya` VALUES ('2159', '4', '0', '7', '9', '101');
INSERT INTO `psb_detailbiaya` VALUES ('2160', '4', '0', '7', '10', '101');
INSERT INTO `psb_detailbiaya` VALUES ('2161', '3', '0', '8', '1', '101');
INSERT INTO `psb_detailbiaya` VALUES ('2162', '3', '0', '8', '2', '101');
INSERT INTO `psb_detailbiaya` VALUES ('2163', '3', '0', '8', '3', '101');
INSERT INTO `psb_detailbiaya` VALUES ('2164', '3', '0', '8', '4', '101');
INSERT INTO `psb_detailbiaya` VALUES ('2165', '3', '0', '8', '5', '101');
INSERT INTO `psb_detailbiaya` VALUES ('2166', '3', '0', '8', '6', '101');
INSERT INTO `psb_detailbiaya` VALUES ('2167', '3', '0', '8', '7', '101');
INSERT INTO `psb_detailbiaya` VALUES ('2168', '3', '0', '8', '9', '101');
INSERT INTO `psb_detailbiaya` VALUES ('2169', '3', '0', '8', '10', '101');
INSERT INTO `psb_detailbiaya` VALUES ('2170', '7', '0', '8', '1', '101');
INSERT INTO `psb_detailbiaya` VALUES ('2171', '7', '0', '8', '2', '101');
INSERT INTO `psb_detailbiaya` VALUES ('2172', '7', '0', '8', '3', '101');
INSERT INTO `psb_detailbiaya` VALUES ('2173', '7', '0', '8', '4', '101');
INSERT INTO `psb_detailbiaya` VALUES ('2174', '7', '0', '8', '5', '101');
INSERT INTO `psb_detailbiaya` VALUES ('2175', '7', '0', '8', '6', '101');
INSERT INTO `psb_detailbiaya` VALUES ('2176', '7', '0', '8', '7', '101');
INSERT INTO `psb_detailbiaya` VALUES ('2177', '7', '0', '8', '9', '101');
INSERT INTO `psb_detailbiaya` VALUES ('2178', '7', '0', '8', '10', '101');
INSERT INTO `psb_detailbiaya` VALUES ('2179', '8', '0', '8', '1', '101');
INSERT INTO `psb_detailbiaya` VALUES ('2180', '8', '0', '8', '2', '101');
INSERT INTO `psb_detailbiaya` VALUES ('2181', '8', '0', '8', '3', '101');
INSERT INTO `psb_detailbiaya` VALUES ('2182', '8', '0', '8', '4', '101');
INSERT INTO `psb_detailbiaya` VALUES ('2183', '8', '0', '8', '5', '101');
INSERT INTO `psb_detailbiaya` VALUES ('2184', '8', '0', '8', '6', '101');
INSERT INTO `psb_detailbiaya` VALUES ('2185', '8', '0', '8', '7', '101');
INSERT INTO `psb_detailbiaya` VALUES ('2186', '8', '0', '8', '9', '101');
INSERT INTO `psb_detailbiaya` VALUES ('2187', '8', '0', '8', '10', '101');
INSERT INTO `psb_detailbiaya` VALUES ('2188', '4', '0', '8', '1', '101');
INSERT INTO `psb_detailbiaya` VALUES ('2189', '4', '0', '8', '2', '101');
INSERT INTO `psb_detailbiaya` VALUES ('2190', '4', '0', '8', '3', '101');
INSERT INTO `psb_detailbiaya` VALUES ('2191', '4', '0', '8', '4', '101');
INSERT INTO `psb_detailbiaya` VALUES ('2192', '4', '0', '8', '5', '101');
INSERT INTO `psb_detailbiaya` VALUES ('2193', '4', '0', '8', '6', '101');
INSERT INTO `psb_detailbiaya` VALUES ('2194', '4', '0', '8', '7', '101');
INSERT INTO `psb_detailbiaya` VALUES ('2195', '4', '0', '8', '9', '101');
INSERT INTO `psb_detailbiaya` VALUES ('2196', '4', '0', '8', '10', '101');
INSERT INTO `psb_detailbiaya` VALUES ('2197', '3', '0', '4', '1', '102');
INSERT INTO `psb_detailbiaya` VALUES ('2198', '3', '0', '4', '2', '102');
INSERT INTO `psb_detailbiaya` VALUES ('2199', '3', '0', '4', '3', '102');
INSERT INTO `psb_detailbiaya` VALUES ('2200', '3', '0', '4', '4', '102');
INSERT INTO `psb_detailbiaya` VALUES ('2201', '3', '0', '4', '5', '102');
INSERT INTO `psb_detailbiaya` VALUES ('2202', '3', '0', '4', '6', '102');
INSERT INTO `psb_detailbiaya` VALUES ('2203', '3', '0', '4', '7', '102');
INSERT INTO `psb_detailbiaya` VALUES ('2204', '3', '0', '4', '9', '102');
INSERT INTO `psb_detailbiaya` VALUES ('2205', '3', '0', '4', '10', '102');
INSERT INTO `psb_detailbiaya` VALUES ('2206', '7', '0', '4', '1', '102');
INSERT INTO `psb_detailbiaya` VALUES ('2207', '7', '0', '4', '2', '102');
INSERT INTO `psb_detailbiaya` VALUES ('2208', '7', '0', '4', '3', '102');
INSERT INTO `psb_detailbiaya` VALUES ('2209', '7', '0', '4', '4', '102');
INSERT INTO `psb_detailbiaya` VALUES ('2210', '7', '0', '4', '5', '102');
INSERT INTO `psb_detailbiaya` VALUES ('2211', '7', '0', '4', '6', '102');
INSERT INTO `psb_detailbiaya` VALUES ('2212', '7', '0', '4', '7', '102');
INSERT INTO `psb_detailbiaya` VALUES ('2213', '7', '0', '4', '9', '102');
INSERT INTO `psb_detailbiaya` VALUES ('2214', '7', '0', '4', '10', '102');
INSERT INTO `psb_detailbiaya` VALUES ('2215', '8', '0', '4', '1', '102');
INSERT INTO `psb_detailbiaya` VALUES ('2216', '8', '0', '4', '2', '102');
INSERT INTO `psb_detailbiaya` VALUES ('2217', '8', '0', '4', '3', '102');
INSERT INTO `psb_detailbiaya` VALUES ('2218', '8', '0', '4', '4', '102');
INSERT INTO `psb_detailbiaya` VALUES ('2219', '8', '0', '4', '5', '102');
INSERT INTO `psb_detailbiaya` VALUES ('2220', '8', '0', '4', '6', '102');
INSERT INTO `psb_detailbiaya` VALUES ('2221', '8', '0', '4', '7', '102');
INSERT INTO `psb_detailbiaya` VALUES ('2222', '8', '0', '4', '9', '102');
INSERT INTO `psb_detailbiaya` VALUES ('2223', '8', '0', '4', '10', '102');
INSERT INTO `psb_detailbiaya` VALUES ('2224', '4', '0', '4', '1', '102');
INSERT INTO `psb_detailbiaya` VALUES ('2225', '4', '0', '4', '2', '102');
INSERT INTO `psb_detailbiaya` VALUES ('2226', '4', '0', '4', '3', '102');
INSERT INTO `psb_detailbiaya` VALUES ('2227', '4', '0', '4', '4', '102');
INSERT INTO `psb_detailbiaya` VALUES ('2228', '4', '0', '4', '5', '102');
INSERT INTO `psb_detailbiaya` VALUES ('2229', '4', '0', '4', '6', '102');
INSERT INTO `psb_detailbiaya` VALUES ('2230', '4', '0', '4', '7', '102');
INSERT INTO `psb_detailbiaya` VALUES ('2231', '4', '0', '4', '9', '102');
INSERT INTO `psb_detailbiaya` VALUES ('2232', '4', '0', '4', '10', '102');
INSERT INTO `psb_detailbiaya` VALUES ('2233', '3', '0', '5', '1', '102');
INSERT INTO `psb_detailbiaya` VALUES ('2234', '3', '0', '5', '2', '102');
INSERT INTO `psb_detailbiaya` VALUES ('2235', '3', '0', '5', '3', '102');
INSERT INTO `psb_detailbiaya` VALUES ('2236', '3', '0', '5', '4', '102');
INSERT INTO `psb_detailbiaya` VALUES ('2237', '3', '0', '5', '5', '102');
INSERT INTO `psb_detailbiaya` VALUES ('2238', '3', '0', '5', '6', '102');
INSERT INTO `psb_detailbiaya` VALUES ('2239', '3', '0', '5', '7', '102');
INSERT INTO `psb_detailbiaya` VALUES ('2240', '3', '0', '5', '9', '102');
INSERT INTO `psb_detailbiaya` VALUES ('2241', '3', '0', '5', '10', '102');
INSERT INTO `psb_detailbiaya` VALUES ('2242', '7', '0', '5', '1', '102');
INSERT INTO `psb_detailbiaya` VALUES ('2243', '7', '0', '5', '2', '102');
INSERT INTO `psb_detailbiaya` VALUES ('2244', '7', '0', '5', '3', '102');
INSERT INTO `psb_detailbiaya` VALUES ('2245', '7', '0', '5', '4', '102');
INSERT INTO `psb_detailbiaya` VALUES ('2246', '7', '0', '5', '5', '102');
INSERT INTO `psb_detailbiaya` VALUES ('2247', '7', '0', '5', '6', '102');
INSERT INTO `psb_detailbiaya` VALUES ('2248', '7', '0', '5', '7', '102');
INSERT INTO `psb_detailbiaya` VALUES ('2249', '7', '0', '5', '9', '102');
INSERT INTO `psb_detailbiaya` VALUES ('2250', '7', '0', '5', '10', '102');
INSERT INTO `psb_detailbiaya` VALUES ('2251', '8', '0', '5', '1', '102');
INSERT INTO `psb_detailbiaya` VALUES ('2252', '8', '0', '5', '2', '102');
INSERT INTO `psb_detailbiaya` VALUES ('2253', '8', '0', '5', '3', '102');
INSERT INTO `psb_detailbiaya` VALUES ('2254', '8', '0', '5', '4', '102');
INSERT INTO `psb_detailbiaya` VALUES ('2255', '8', '0', '5', '5', '102');
INSERT INTO `psb_detailbiaya` VALUES ('2256', '8', '0', '5', '6', '102');
INSERT INTO `psb_detailbiaya` VALUES ('2257', '8', '0', '5', '7', '102');
INSERT INTO `psb_detailbiaya` VALUES ('2258', '8', '0', '5', '9', '102');
INSERT INTO `psb_detailbiaya` VALUES ('2259', '8', '0', '5', '10', '102');
INSERT INTO `psb_detailbiaya` VALUES ('2260', '4', '0', '5', '1', '102');
INSERT INTO `psb_detailbiaya` VALUES ('2261', '4', '0', '5', '2', '102');
INSERT INTO `psb_detailbiaya` VALUES ('2262', '4', '0', '5', '3', '102');
INSERT INTO `psb_detailbiaya` VALUES ('2263', '4', '0', '5', '4', '102');
INSERT INTO `psb_detailbiaya` VALUES ('2264', '4', '0', '5', '5', '102');
INSERT INTO `psb_detailbiaya` VALUES ('2265', '4', '0', '5', '6', '102');
INSERT INTO `psb_detailbiaya` VALUES ('2266', '4', '0', '5', '7', '102');
INSERT INTO `psb_detailbiaya` VALUES ('2267', '4', '0', '5', '9', '102');
INSERT INTO `psb_detailbiaya` VALUES ('2268', '4', '0', '5', '10', '102');
INSERT INTO `psb_detailbiaya` VALUES ('2269', '3', '0', '6', '1', '102');
INSERT INTO `psb_detailbiaya` VALUES ('2270', '3', '0', '6', '2', '102');
INSERT INTO `psb_detailbiaya` VALUES ('2271', '3', '0', '6', '3', '102');
INSERT INTO `psb_detailbiaya` VALUES ('2272', '3', '0', '6', '4', '102');
INSERT INTO `psb_detailbiaya` VALUES ('2273', '3', '0', '6', '5', '102');
INSERT INTO `psb_detailbiaya` VALUES ('2274', '3', '0', '6', '6', '102');
INSERT INTO `psb_detailbiaya` VALUES ('2275', '3', '0', '6', '7', '102');
INSERT INTO `psb_detailbiaya` VALUES ('2276', '3', '0', '6', '9', '102');
INSERT INTO `psb_detailbiaya` VALUES ('2277', '3', '0', '6', '10', '102');
INSERT INTO `psb_detailbiaya` VALUES ('2278', '7', '0', '6', '1', '102');
INSERT INTO `psb_detailbiaya` VALUES ('2279', '7', '0', '6', '2', '102');
INSERT INTO `psb_detailbiaya` VALUES ('2280', '7', '0', '6', '3', '102');
INSERT INTO `psb_detailbiaya` VALUES ('2281', '7', '0', '6', '4', '102');
INSERT INTO `psb_detailbiaya` VALUES ('2282', '7', '0', '6', '5', '102');
INSERT INTO `psb_detailbiaya` VALUES ('2283', '7', '0', '6', '6', '102');
INSERT INTO `psb_detailbiaya` VALUES ('2284', '7', '0', '6', '7', '102');
INSERT INTO `psb_detailbiaya` VALUES ('2285', '7', '0', '6', '9', '102');
INSERT INTO `psb_detailbiaya` VALUES ('2286', '7', '0', '6', '10', '102');
INSERT INTO `psb_detailbiaya` VALUES ('2287', '8', '0', '6', '1', '102');
INSERT INTO `psb_detailbiaya` VALUES ('2288', '8', '0', '6', '2', '102');
INSERT INTO `psb_detailbiaya` VALUES ('2289', '8', '0', '6', '3', '102');
INSERT INTO `psb_detailbiaya` VALUES ('2290', '8', '0', '6', '4', '102');
INSERT INTO `psb_detailbiaya` VALUES ('2291', '8', '0', '6', '5', '102');
INSERT INTO `psb_detailbiaya` VALUES ('2292', '8', '0', '6', '6', '102');
INSERT INTO `psb_detailbiaya` VALUES ('2293', '8', '0', '6', '7', '102');
INSERT INTO `psb_detailbiaya` VALUES ('2294', '8', '0', '6', '9', '102');
INSERT INTO `psb_detailbiaya` VALUES ('2295', '8', '0', '6', '10', '102');
INSERT INTO `psb_detailbiaya` VALUES ('2296', '4', '0', '6', '1', '102');
INSERT INTO `psb_detailbiaya` VALUES ('2297', '4', '0', '6', '2', '102');
INSERT INTO `psb_detailbiaya` VALUES ('2298', '4', '0', '6', '3', '102');
INSERT INTO `psb_detailbiaya` VALUES ('2299', '4', '0', '6', '4', '102');
INSERT INTO `psb_detailbiaya` VALUES ('2300', '4', '0', '6', '5', '102');
INSERT INTO `psb_detailbiaya` VALUES ('2301', '4', '0', '6', '6', '102');
INSERT INTO `psb_detailbiaya` VALUES ('2302', '4', '0', '6', '7', '102');
INSERT INTO `psb_detailbiaya` VALUES ('2303', '4', '0', '6', '9', '102');
INSERT INTO `psb_detailbiaya` VALUES ('2304', '4', '0', '6', '10', '102');
INSERT INTO `psb_detailbiaya` VALUES ('2305', '3', '0', '7', '1', '102');
INSERT INTO `psb_detailbiaya` VALUES ('2306', '3', '0', '7', '2', '102');
INSERT INTO `psb_detailbiaya` VALUES ('2307', '3', '0', '7', '3', '102');
INSERT INTO `psb_detailbiaya` VALUES ('2308', '3', '0', '7', '4', '102');
INSERT INTO `psb_detailbiaya` VALUES ('2309', '3', '0', '7', '5', '102');
INSERT INTO `psb_detailbiaya` VALUES ('2310', '3', '0', '7', '6', '102');
INSERT INTO `psb_detailbiaya` VALUES ('2311', '3', '0', '7', '7', '102');
INSERT INTO `psb_detailbiaya` VALUES ('2312', '3', '0', '7', '9', '102');
INSERT INTO `psb_detailbiaya` VALUES ('2313', '3', '0', '7', '10', '102');
INSERT INTO `psb_detailbiaya` VALUES ('2314', '7', '0', '7', '1', '102');
INSERT INTO `psb_detailbiaya` VALUES ('2315', '7', '0', '7', '2', '102');
INSERT INTO `psb_detailbiaya` VALUES ('2316', '7', '0', '7', '3', '102');
INSERT INTO `psb_detailbiaya` VALUES ('2317', '7', '0', '7', '4', '102');
INSERT INTO `psb_detailbiaya` VALUES ('2318', '7', '0', '7', '5', '102');
INSERT INTO `psb_detailbiaya` VALUES ('2319', '7', '0', '7', '6', '102');
INSERT INTO `psb_detailbiaya` VALUES ('2320', '7', '0', '7', '7', '102');
INSERT INTO `psb_detailbiaya` VALUES ('2321', '7', '0', '7', '9', '102');
INSERT INTO `psb_detailbiaya` VALUES ('2322', '7', '0', '7', '10', '102');
INSERT INTO `psb_detailbiaya` VALUES ('2323', '8', '0', '7', '1', '102');
INSERT INTO `psb_detailbiaya` VALUES ('2324', '8', '0', '7', '2', '102');
INSERT INTO `psb_detailbiaya` VALUES ('2325', '8', '0', '7', '3', '102');
INSERT INTO `psb_detailbiaya` VALUES ('2326', '8', '0', '7', '4', '102');
INSERT INTO `psb_detailbiaya` VALUES ('2327', '8', '0', '7', '5', '102');
INSERT INTO `psb_detailbiaya` VALUES ('2328', '8', '0', '7', '6', '102');
INSERT INTO `psb_detailbiaya` VALUES ('2329', '8', '0', '7', '7', '102');
INSERT INTO `psb_detailbiaya` VALUES ('2330', '8', '0', '7', '9', '102');
INSERT INTO `psb_detailbiaya` VALUES ('2331', '8', '0', '7', '10', '102');
INSERT INTO `psb_detailbiaya` VALUES ('2332', '4', '0', '7', '1', '102');
INSERT INTO `psb_detailbiaya` VALUES ('2333', '4', '0', '7', '2', '102');
INSERT INTO `psb_detailbiaya` VALUES ('2334', '4', '0', '7', '3', '102');
INSERT INTO `psb_detailbiaya` VALUES ('2335', '4', '0', '7', '4', '102');
INSERT INTO `psb_detailbiaya` VALUES ('2336', '4', '0', '7', '5', '102');
INSERT INTO `psb_detailbiaya` VALUES ('2337', '4', '0', '7', '6', '102');
INSERT INTO `psb_detailbiaya` VALUES ('2338', '4', '0', '7', '7', '102');
INSERT INTO `psb_detailbiaya` VALUES ('2339', '4', '0', '7', '9', '102');
INSERT INTO `psb_detailbiaya` VALUES ('2340', '4', '0', '7', '10', '102');
INSERT INTO `psb_detailbiaya` VALUES ('2341', '3', '0', '8', '1', '102');
INSERT INTO `psb_detailbiaya` VALUES ('2342', '3', '0', '8', '2', '102');
INSERT INTO `psb_detailbiaya` VALUES ('2343', '3', '0', '8', '3', '102');
INSERT INTO `psb_detailbiaya` VALUES ('2344', '3', '0', '8', '4', '102');
INSERT INTO `psb_detailbiaya` VALUES ('2345', '3', '0', '8', '5', '102');
INSERT INTO `psb_detailbiaya` VALUES ('2346', '3', '0', '8', '6', '102');
INSERT INTO `psb_detailbiaya` VALUES ('2347', '3', '0', '8', '7', '102');
INSERT INTO `psb_detailbiaya` VALUES ('2348', '3', '0', '8', '9', '102');
INSERT INTO `psb_detailbiaya` VALUES ('2349', '3', '0', '8', '10', '102');
INSERT INTO `psb_detailbiaya` VALUES ('2350', '7', '0', '8', '1', '102');
INSERT INTO `psb_detailbiaya` VALUES ('2351', '7', '0', '8', '2', '102');
INSERT INTO `psb_detailbiaya` VALUES ('2352', '7', '0', '8', '3', '102');
INSERT INTO `psb_detailbiaya` VALUES ('2353', '7', '0', '8', '4', '102');
INSERT INTO `psb_detailbiaya` VALUES ('2354', '7', '0', '8', '5', '102');
INSERT INTO `psb_detailbiaya` VALUES ('2355', '7', '0', '8', '6', '102');
INSERT INTO `psb_detailbiaya` VALUES ('2356', '7', '0', '8', '7', '102');
INSERT INTO `psb_detailbiaya` VALUES ('2357', '7', '0', '8', '9', '102');
INSERT INTO `psb_detailbiaya` VALUES ('2358', '7', '0', '8', '10', '102');
INSERT INTO `psb_detailbiaya` VALUES ('2359', '8', '0', '8', '1', '102');
INSERT INTO `psb_detailbiaya` VALUES ('2360', '8', '0', '8', '2', '102');
INSERT INTO `psb_detailbiaya` VALUES ('2361', '8', '0', '8', '3', '102');
INSERT INTO `psb_detailbiaya` VALUES ('2362', '8', '0', '8', '4', '102');
INSERT INTO `psb_detailbiaya` VALUES ('2363', '8', '0', '8', '5', '102');
INSERT INTO `psb_detailbiaya` VALUES ('2364', '8', '0', '8', '6', '102');
INSERT INTO `psb_detailbiaya` VALUES ('2365', '8', '0', '8', '7', '102');
INSERT INTO `psb_detailbiaya` VALUES ('2366', '8', '0', '8', '9', '102');
INSERT INTO `psb_detailbiaya` VALUES ('2367', '8', '0', '8', '10', '102');
INSERT INTO `psb_detailbiaya` VALUES ('2368', '4', '0', '8', '1', '102');
INSERT INTO `psb_detailbiaya` VALUES ('2369', '4', '0', '8', '2', '102');
INSERT INTO `psb_detailbiaya` VALUES ('2370', '4', '0', '8', '3', '102');
INSERT INTO `psb_detailbiaya` VALUES ('2371', '4', '0', '8', '4', '102');
INSERT INTO `psb_detailbiaya` VALUES ('2372', '4', '0', '8', '5', '102');
INSERT INTO `psb_detailbiaya` VALUES ('2373', '4', '0', '8', '6', '102');
INSERT INTO `psb_detailbiaya` VALUES ('2374', '4', '0', '8', '7', '102');
INSERT INTO `psb_detailbiaya` VALUES ('2375', '4', '0', '8', '9', '102');
INSERT INTO `psb_detailbiaya` VALUES ('2376', '4', '0', '8', '10', '102');
INSERT INTO `psb_detailbiaya` VALUES ('2377', '3', '0', '4', '1', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2378', '3', '0', '4', '2', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2379', '3', '0', '4', '3', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2380', '3', '0', '4', '4', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2381', '3', '0', '4', '5', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2382', '3', '0', '4', '6', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2383', '3', '0', '4', '7', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2384', '3', '0', '4', '9', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2385', '3', '0', '4', '10', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2386', '7', '0', '4', '1', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2387', '7', '0', '4', '2', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2388', '7', '0', '4', '3', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2389', '7', '0', '4', '4', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2390', '7', '0', '4', '5', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2391', '7', '0', '4', '6', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2392', '7', '0', '4', '7', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2393', '7', '0', '4', '9', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2394', '7', '0', '4', '10', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2395', '8', '0', '4', '1', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2396', '8', '0', '4', '2', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2397', '8', '0', '4', '3', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2398', '8', '0', '4', '4', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2399', '8', '0', '4', '5', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2400', '8', '0', '4', '6', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2401', '8', '0', '4', '7', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2402', '8', '0', '4', '9', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2403', '8', '0', '4', '10', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2404', '4', '0', '4', '1', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2405', '4', '0', '4', '2', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2406', '4', '0', '4', '3', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2407', '4', '0', '4', '4', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2408', '4', '0', '4', '5', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2409', '4', '0', '4', '6', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2410', '4', '0', '4', '7', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2411', '4', '0', '4', '9', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2412', '4', '0', '4', '10', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2413', '3', '0', '5', '1', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2414', '3', '0', '5', '2', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2415', '3', '0', '5', '3', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2416', '3', '0', '5', '4', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2417', '3', '0', '5', '5', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2418', '3', '0', '5', '6', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2419', '3', '0', '5', '7', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2420', '3', '0', '5', '9', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2421', '3', '0', '5', '10', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2422', '7', '0', '5', '1', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2423', '7', '0', '5', '2', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2424', '7', '0', '5', '3', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2425', '7', '0', '5', '4', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2426', '7', '0', '5', '5', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2427', '7', '0', '5', '6', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2428', '7', '0', '5', '7', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2429', '7', '0', '5', '9', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2430', '7', '0', '5', '10', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2431', '8', '0', '5', '1', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2432', '8', '0', '5', '2', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2433', '8', '0', '5', '3', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2434', '8', '0', '5', '4', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2435', '8', '0', '5', '5', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2436', '8', '0', '5', '6', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2437', '8', '0', '5', '7', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2438', '8', '0', '5', '9', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2439', '8', '0', '5', '10', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2440', '4', '0', '5', '1', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2441', '4', '0', '5', '2', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2442', '4', '0', '5', '3', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2443', '4', '0', '5', '4', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2444', '4', '0', '5', '5', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2445', '4', '0', '5', '6', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2446', '4', '0', '5', '7', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2447', '4', '0', '5', '9', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2448', '4', '0', '5', '10', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2449', '3', '0', '6', '1', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2450', '3', '0', '6', '2', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2451', '3', '0', '6', '3', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2452', '3', '0', '6', '4', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2453', '3', '0', '6', '5', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2454', '3', '0', '6', '6', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2455', '3', '0', '6', '7', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2456', '3', '0', '6', '9', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2457', '3', '0', '6', '10', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2458', '7', '0', '6', '1', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2459', '7', '0', '6', '2', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2460', '7', '0', '6', '3', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2461', '7', '0', '6', '4', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2462', '7', '0', '6', '5', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2463', '7', '0', '6', '6', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2464', '7', '0', '6', '7', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2465', '7', '0', '6', '9', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2466', '7', '0', '6', '10', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2467', '8', '0', '6', '1', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2468', '8', '0', '6', '2', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2469', '8', '0', '6', '3', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2470', '8', '0', '6', '4', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2471', '8', '0', '6', '5', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2472', '8', '0', '6', '6', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2473', '8', '0', '6', '7', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2474', '8', '0', '6', '9', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2475', '8', '0', '6', '10', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2476', '4', '0', '6', '1', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2477', '4', '0', '6', '2', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2478', '4', '0', '6', '3', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2479', '4', '0', '6', '4', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2480', '4', '0', '6', '5', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2481', '4', '0', '6', '6', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2482', '4', '0', '6', '7', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2483', '4', '0', '6', '9', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2484', '4', '0', '6', '10', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2485', '3', '0', '7', '1', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2486', '3', '0', '7', '2', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2487', '3', '0', '7', '3', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2488', '3', '0', '7', '4', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2489', '3', '0', '7', '5', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2490', '3', '0', '7', '6', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2491', '3', '0', '7', '7', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2492', '3', '0', '7', '9', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2493', '3', '0', '7', '10', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2494', '7', '0', '7', '1', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2495', '7', '0', '7', '2', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2496', '7', '0', '7', '3', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2497', '7', '0', '7', '4', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2498', '7', '0', '7', '5', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2499', '7', '0', '7', '6', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2500', '7', '0', '7', '7', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2501', '7', '0', '7', '9', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2502', '7', '0', '7', '10', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2503', '8', '0', '7', '1', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2504', '8', '0', '7', '2', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2505', '8', '0', '7', '3', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2506', '8', '0', '7', '4', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2507', '8', '0', '7', '5', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2508', '8', '0', '7', '6', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2509', '8', '0', '7', '7', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2510', '8', '0', '7', '9', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2511', '8', '0', '7', '10', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2512', '4', '0', '7', '1', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2513', '4', '0', '7', '2', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2514', '4', '0', '7', '3', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2515', '4', '0', '7', '4', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2516', '4', '0', '7', '5', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2517', '4', '0', '7', '6', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2518', '4', '0', '7', '7', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2519', '4', '0', '7', '9', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2520', '4', '0', '7', '10', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2521', '3', '0', '8', '1', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2522', '3', '0', '8', '2', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2523', '3', '0', '8', '3', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2524', '3', '0', '8', '4', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2525', '3', '0', '8', '5', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2526', '3', '0', '8', '6', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2527', '3', '0', '8', '7', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2528', '3', '0', '8', '9', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2529', '3', '0', '8', '10', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2530', '7', '0', '8', '1', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2531', '7', '0', '8', '2', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2532', '7', '0', '8', '3', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2533', '7', '0', '8', '4', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2534', '7', '0', '8', '5', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2535', '7', '0', '8', '6', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2536', '7', '0', '8', '7', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2537', '7', '0', '8', '9', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2538', '7', '0', '8', '10', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2539', '8', '0', '8', '1', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2540', '8', '0', '8', '2', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2541', '8', '0', '8', '3', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2542', '8', '0', '8', '4', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2543', '8', '0', '8', '5', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2544', '8', '0', '8', '6', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2545', '8', '0', '8', '7', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2546', '8', '0', '8', '9', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2547', '8', '0', '8', '10', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2548', '4', '0', '8', '1', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2549', '4', '0', '8', '2', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2550', '4', '0', '8', '3', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2551', '4', '0', '8', '4', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2552', '4', '0', '8', '5', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2553', '4', '0', '8', '6', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2554', '4', '0', '8', '7', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2555', '4', '0', '8', '9', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2556', '4', '0', '8', '10', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2557', '3', '0', '9', '1', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2558', '3', '0', '9', '2', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2559', '3', '0', '9', '3', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2560', '3', '0', '9', '4', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2561', '3', '0', '9', '5', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2562', '3', '0', '9', '6', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2563', '3', '0', '9', '7', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2564', '3', '0', '9', '9', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2565', '3', '0', '9', '10', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2566', '7', '0', '9', '1', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2567', '7', '0', '9', '2', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2568', '7', '0', '9', '3', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2569', '7', '0', '9', '4', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2570', '7', '0', '9', '5', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2571', '7', '0', '9', '6', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2572', '7', '0', '9', '7', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2573', '7', '0', '9', '9', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2574', '7', '0', '9', '10', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2575', '8', '0', '9', '1', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2576', '8', '0', '9', '2', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2577', '8', '0', '9', '3', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2578', '8', '0', '9', '4', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2579', '8', '0', '9', '5', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2580', '8', '0', '9', '6', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2581', '8', '0', '9', '7', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2582', '8', '0', '9', '9', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2583', '8', '0', '9', '10', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2584', '4', '0', '9', '1', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2585', '4', '0', '9', '2', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2586', '4', '0', '9', '3', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2587', '4', '0', '9', '4', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2588', '4', '0', '9', '5', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2589', '4', '0', '9', '6', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2590', '4', '0', '9', '7', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2591', '4', '0', '9', '9', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2592', '4', '0', '9', '10', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2593', '3', '0', '10', '1', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2594', '3', '0', '10', '2', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2595', '3', '0', '10', '3', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2596', '3', '0', '10', '4', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2597', '3', '0', '10', '5', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2598', '3', '0', '10', '6', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2599', '3', '0', '10', '7', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2600', '3', '0', '10', '9', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2601', '3', '0', '10', '10', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2602', '7', '0', '10', '1', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2603', '7', '0', '10', '2', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2604', '7', '0', '10', '3', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2605', '7', '0', '10', '4', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2606', '7', '0', '10', '5', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2607', '7', '0', '10', '6', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2608', '7', '0', '10', '7', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2609', '7', '0', '10', '9', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2610', '7', '0', '10', '10', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2611', '8', '0', '10', '1', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2612', '8', '0', '10', '2', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2613', '8', '0', '10', '3', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2614', '8', '0', '10', '4', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2615', '8', '0', '10', '5', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2616', '8', '0', '10', '6', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2617', '8', '0', '10', '7', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2618', '8', '0', '10', '9', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2619', '8', '0', '10', '10', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2620', '4', '0', '10', '1', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2621', '4', '0', '10', '2', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2622', '4', '0', '10', '3', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2623', '4', '0', '10', '4', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2624', '4', '0', '10', '5', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2625', '4', '0', '10', '6', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2626', '4', '0', '10', '7', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2627', '4', '0', '10', '9', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2628', '4', '0', '10', '10', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2629', '3', '0', '11', '1', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2630', '3', '0', '11', '2', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2631', '3', '0', '11', '3', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2632', '3', '0', '11', '4', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2633', '3', '0', '11', '5', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2634', '3', '0', '11', '6', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2635', '3', '0', '11', '7', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2636', '3', '0', '11', '9', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2637', '3', '0', '11', '10', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2638', '7', '0', '11', '1', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2639', '7', '0', '11', '2', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2640', '7', '0', '11', '3', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2641', '7', '0', '11', '4', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2642', '7', '0', '11', '5', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2643', '7', '0', '11', '6', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2644', '7', '0', '11', '7', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2645', '7', '0', '11', '9', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2646', '7', '0', '11', '10', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2647', '8', '0', '11', '1', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2648', '8', '0', '11', '2', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2649', '8', '0', '11', '3', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2650', '8', '0', '11', '4', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2651', '8', '0', '11', '5', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2652', '8', '0', '11', '6', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2653', '8', '0', '11', '7', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2654', '8', '0', '11', '9', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2655', '8', '0', '11', '10', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2656', '4', '0', '11', '1', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2657', '4', '0', '11', '2', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2658', '4', '0', '11', '3', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2659', '4', '0', '11', '4', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2660', '4', '0', '11', '5', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2661', '4', '0', '11', '6', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2662', '4', '0', '11', '7', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2663', '4', '0', '11', '9', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2664', '4', '0', '11', '10', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2665', '3', '0', '12', '1', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2666', '3', '0', '12', '2', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2667', '3', '0', '12', '3', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2668', '3', '0', '12', '4', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2669', '3', '0', '12', '5', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2670', '3', '0', '12', '6', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2671', '3', '0', '12', '7', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2672', '3', '0', '12', '9', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2673', '3', '0', '12', '10', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2674', '7', '0', '12', '1', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2675', '7', '0', '12', '2', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2676', '7', '0', '12', '3', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2677', '7', '0', '12', '4', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2678', '7', '0', '12', '5', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2679', '7', '0', '12', '6', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2680', '7', '0', '12', '7', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2681', '7', '0', '12', '9', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2682', '7', '0', '12', '10', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2683', '8', '0', '12', '1', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2684', '8', '0', '12', '2', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2685', '8', '0', '12', '3', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2686', '8', '0', '12', '4', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2687', '8', '0', '12', '5', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2688', '8', '0', '12', '6', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2689', '8', '0', '12', '7', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2690', '8', '0', '12', '9', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2691', '8', '0', '12', '10', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2692', '4', '0', '12', '1', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2693', '4', '0', '12', '2', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2694', '4', '0', '12', '3', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2695', '4', '0', '12', '4', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2696', '4', '0', '12', '5', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2697', '4', '0', '12', '6', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2698', '4', '0', '12', '7', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2699', '4', '0', '12', '9', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2700', '4', '0', '12', '10', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2701', '3', '0', '13', '1', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2702', '3', '0', '13', '2', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2703', '3', '0', '13', '3', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2704', '3', '0', '13', '4', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2705', '3', '0', '13', '5', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2706', '3', '0', '13', '6', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2707', '3', '0', '13', '7', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2708', '3', '0', '13', '9', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2709', '3', '0', '13', '10', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2710', '7', '0', '13', '1', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2711', '7', '0', '13', '2', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2712', '7', '0', '13', '3', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2713', '7', '0', '13', '4', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2714', '7', '0', '13', '5', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2715', '7', '0', '13', '6', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2716', '7', '0', '13', '7', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2717', '7', '0', '13', '9', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2718', '7', '0', '13', '10', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2719', '8', '0', '13', '1', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2720', '8', '0', '13', '2', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2721', '8', '0', '13', '3', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2722', '8', '0', '13', '4', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2723', '8', '0', '13', '5', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2724', '8', '0', '13', '6', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2725', '8', '0', '13', '7', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2726', '8', '0', '13', '9', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2727', '8', '0', '13', '10', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2728', '4', '0', '13', '1', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2729', '4', '0', '13', '2', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2730', '4', '0', '13', '3', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2731', '4', '0', '13', '4', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2732', '4', '0', '13', '5', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2733', '4', '0', '13', '6', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2734', '4', '0', '13', '7', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2735', '4', '0', '13', '9', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2736', '4', '0', '13', '10', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2737', '3', '0', '14', '1', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2738', '3', '0', '14', '2', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2739', '3', '0', '14', '3', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2740', '3', '0', '14', '4', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2741', '3', '0', '14', '5', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2742', '3', '0', '14', '6', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2743', '3', '0', '14', '7', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2744', '3', '0', '14', '9', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2745', '3', '0', '14', '10', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2746', '7', '0', '14', '1', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2747', '7', '0', '14', '2', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2748', '7', '0', '14', '3', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2749', '7', '0', '14', '4', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2750', '7', '0', '14', '5', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2751', '7', '0', '14', '6', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2752', '7', '0', '14', '7', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2753', '7', '0', '14', '9', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2754', '7', '0', '14', '10', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2755', '8', '0', '14', '1', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2756', '8', '0', '14', '2', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2757', '8', '0', '14', '3', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2758', '8', '0', '14', '4', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2759', '8', '0', '14', '5', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2760', '8', '0', '14', '6', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2761', '8', '0', '14', '7', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2762', '8', '0', '14', '9', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2763', '8', '0', '14', '10', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2764', '4', '0', '14', '1', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2765', '4', '0', '14', '2', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2766', '4', '0', '14', '3', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2767', '4', '0', '14', '4', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2768', '4', '0', '14', '5', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2769', '4', '0', '14', '6', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2770', '4', '0', '14', '7', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2771', '4', '0', '14', '9', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2772', '4', '0', '14', '10', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2773', '3', '0', '15', '1', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2774', '3', '0', '15', '2', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2775', '3', '0', '15', '3', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2776', '3', '0', '15', '4', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2777', '3', '0', '15', '5', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2778', '3', '0', '15', '6', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2779', '3', '0', '15', '7', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2780', '3', '0', '15', '9', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2781', '3', '0', '15', '10', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2782', '7', '0', '15', '1', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2783', '7', '0', '15', '2', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2784', '7', '0', '15', '3', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2785', '7', '0', '15', '4', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2786', '7', '0', '15', '5', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2787', '7', '0', '15', '6', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2788', '7', '0', '15', '7', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2789', '7', '0', '15', '9', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2790', '7', '0', '15', '10', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2791', '8', '0', '15', '1', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2792', '8', '0', '15', '2', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2793', '8', '0', '15', '3', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2794', '8', '0', '15', '4', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2795', '8', '0', '15', '5', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2796', '8', '0', '15', '6', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2797', '8', '0', '15', '7', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2798', '8', '0', '15', '9', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2799', '8', '0', '15', '10', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2800', '4', '0', '15', '1', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2801', '4', '0', '15', '2', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2802', '4', '0', '15', '3', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2803', '4', '0', '15', '4', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2804', '4', '0', '15', '5', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2805', '4', '0', '15', '6', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2806', '4', '0', '15', '7', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2807', '4', '0', '15', '9', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2808', '4', '0', '15', '10', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2809', '3', '0', '16', '1', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2810', '3', '0', '16', '2', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2811', '3', '0', '16', '3', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2812', '3', '0', '16', '4', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2813', '3', '0', '16', '5', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2814', '3', '0', '16', '6', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2815', '3', '0', '16', '7', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2816', '3', '0', '16', '9', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2817', '3', '0', '16', '10', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2818', '7', '0', '16', '1', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2819', '7', '0', '16', '2', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2820', '7', '0', '16', '3', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2821', '7', '0', '16', '4', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2822', '7', '0', '16', '5', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2823', '7', '0', '16', '6', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2824', '7', '0', '16', '7', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2825', '7', '0', '16', '9', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2826', '7', '0', '16', '10', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2827', '8', '0', '16', '1', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2828', '8', '0', '16', '2', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2829', '8', '0', '16', '3', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2830', '8', '0', '16', '4', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2831', '8', '0', '16', '5', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2832', '8', '0', '16', '6', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2833', '8', '0', '16', '7', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2834', '8', '0', '16', '9', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2835', '8', '0', '16', '10', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2836', '4', '0', '16', '1', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2837', '4', '0', '16', '2', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2838', '4', '0', '16', '3', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2839', '4', '0', '16', '4', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2840', '4', '0', '16', '5', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2841', '4', '0', '16', '6', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2842', '4', '0', '16', '7', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2843', '4', '0', '16', '9', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2844', '4', '0', '16', '10', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2845', '3', '0', '17', '1', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2846', '3', '0', '17', '2', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2847', '3', '0', '17', '3', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2848', '3', '0', '17', '4', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2849', '3', '0', '17', '5', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2850', '3', '0', '17', '6', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2851', '3', '0', '17', '7', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2852', '3', '0', '17', '9', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2853', '3', '0', '17', '10', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2854', '7', '0', '17', '1', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2855', '7', '0', '17', '2', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2856', '7', '0', '17', '3', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2857', '7', '0', '17', '4', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2858', '7', '0', '17', '5', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2859', '7', '0', '17', '6', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2860', '7', '0', '17', '7', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2861', '7', '0', '17', '9', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2862', '7', '0', '17', '10', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2863', '8', '0', '17', '1', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2864', '8', '0', '17', '2', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2865', '8', '0', '17', '3', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2866', '8', '0', '17', '4', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2867', '8', '0', '17', '5', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2868', '8', '0', '17', '6', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2869', '8', '0', '17', '7', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2870', '8', '0', '17', '9', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2871', '8', '0', '17', '10', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2872', '4', '0', '17', '1', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2873', '4', '0', '17', '2', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2874', '4', '0', '17', '3', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2875', '4', '0', '17', '4', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2876', '4', '0', '17', '5', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2877', '4', '0', '17', '6', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2878', '4', '0', '17', '7', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2879', '4', '0', '17', '9', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2880', '4', '0', '17', '10', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2881', '3', '0', '18', '1', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2882', '3', '0', '18', '2', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2883', '3', '0', '18', '3', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2884', '3', '0', '18', '4', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2885', '3', '0', '18', '5', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2886', '3', '0', '18', '6', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2887', '3', '0', '18', '7', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2888', '3', '0', '18', '9', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2889', '3', '0', '18', '10', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2890', '7', '0', '18', '1', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2891', '7', '0', '18', '2', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2892', '7', '0', '18', '3', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2893', '7', '0', '18', '4', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2894', '7', '0', '18', '5', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2895', '7', '0', '18', '6', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2896', '7', '0', '18', '7', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2897', '7', '0', '18', '9', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2898', '7', '0', '18', '10', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2899', '8', '0', '18', '1', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2900', '8', '0', '18', '2', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2901', '8', '0', '18', '3', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2902', '8', '0', '18', '4', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2903', '8', '0', '18', '5', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2904', '8', '0', '18', '6', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2905', '8', '0', '18', '7', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2906', '8', '0', '18', '9', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2907', '8', '0', '18', '10', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2908', '4', '0', '18', '1', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2909', '4', '0', '18', '2', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2910', '4', '0', '18', '3', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2911', '4', '0', '18', '4', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2912', '4', '0', '18', '5', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2913', '4', '0', '18', '6', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2914', '4', '0', '18', '7', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2915', '4', '0', '18', '9', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2916', '4', '0', '18', '10', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2917', '3', '0', '19', '1', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2918', '3', '0', '19', '2', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2919', '3', '0', '19', '3', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2920', '3', '0', '19', '4', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2921', '3', '0', '19', '5', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2922', '3', '0', '19', '6', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2923', '3', '0', '19', '7', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2924', '3', '0', '19', '9', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2925', '3', '0', '19', '10', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2926', '7', '0', '19', '1', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2927', '7', '0', '19', '2', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2928', '7', '0', '19', '3', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2929', '7', '0', '19', '4', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2930', '7', '0', '19', '5', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2931', '7', '0', '19', '6', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2932', '7', '0', '19', '7', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2933', '7', '0', '19', '9', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2934', '7', '0', '19', '10', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2935', '8', '0', '19', '1', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2936', '8', '0', '19', '2', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2937', '8', '0', '19', '3', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2938', '8', '0', '19', '4', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2939', '8', '0', '19', '5', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2940', '8', '0', '19', '6', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2941', '8', '0', '19', '7', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2942', '8', '0', '19', '9', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2943', '8', '0', '19', '10', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2944', '4', '0', '19', '1', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2945', '4', '0', '19', '2', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2946', '4', '0', '19', '3', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2947', '4', '0', '19', '4', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2948', '4', '0', '19', '5', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2949', '4', '0', '19', '6', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2950', '4', '0', '19', '7', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2951', '4', '0', '19', '9', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2952', '4', '0', '19', '10', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2953', '3', '0', '20', '1', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2954', '3', '0', '20', '2', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2955', '3', '0', '20', '3', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2956', '3', '0', '20', '4', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2957', '3', '0', '20', '5', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2958', '3', '0', '20', '6', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2959', '3', '0', '20', '7', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2960', '3', '0', '20', '9', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2961', '3', '0', '20', '10', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2962', '7', '0', '20', '1', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2963', '7', '0', '20', '2', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2964', '7', '0', '20', '3', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2965', '7', '0', '20', '4', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2966', '7', '0', '20', '5', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2967', '7', '0', '20', '6', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2968', '7', '0', '20', '7', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2969', '7', '0', '20', '9', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2970', '7', '0', '20', '10', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2971', '8', '0', '20', '1', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2972', '8', '0', '20', '2', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2973', '8', '0', '20', '3', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2974', '8', '0', '20', '4', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2975', '8', '0', '20', '5', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2976', '8', '0', '20', '6', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2977', '8', '0', '20', '7', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2978', '8', '0', '20', '9', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2979', '8', '0', '20', '10', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2980', '4', '0', '20', '1', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2981', '4', '0', '20', '2', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2982', '4', '0', '20', '3', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2983', '4', '0', '20', '4', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2984', '4', '0', '20', '5', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2985', '4', '0', '20', '6', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2986', '4', '0', '20', '7', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2987', '4', '0', '20', '9', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2988', '4', '0', '20', '10', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2989', '3', '0', '24', '1', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2990', '3', '0', '24', '2', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2991', '3', '0', '24', '3', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2992', '3', '0', '24', '4', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2993', '3', '0', '24', '5', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2994', '3', '0', '24', '6', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2995', '3', '0', '24', '7', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2996', '3', '0', '24', '9', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2997', '3', '0', '24', '10', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2998', '7', '0', '24', '1', '103');
INSERT INTO `psb_detailbiaya` VALUES ('2999', '7', '0', '24', '2', '103');
INSERT INTO `psb_detailbiaya` VALUES ('3000', '7', '0', '24', '3', '103');
INSERT INTO `psb_detailbiaya` VALUES ('3001', '7', '0', '24', '4', '103');
INSERT INTO `psb_detailbiaya` VALUES ('3002', '7', '0', '24', '5', '103');
INSERT INTO `psb_detailbiaya` VALUES ('3003', '7', '0', '24', '6', '103');
INSERT INTO `psb_detailbiaya` VALUES ('3004', '7', '0', '24', '7', '103');
INSERT INTO `psb_detailbiaya` VALUES ('3005', '7', '0', '24', '9', '103');
INSERT INTO `psb_detailbiaya` VALUES ('3006', '7', '0', '24', '10', '103');
INSERT INTO `psb_detailbiaya` VALUES ('3007', '8', '0', '24', '1', '103');
INSERT INTO `psb_detailbiaya` VALUES ('3008', '8', '0', '24', '2', '103');
INSERT INTO `psb_detailbiaya` VALUES ('3009', '8', '0', '24', '3', '103');
INSERT INTO `psb_detailbiaya` VALUES ('3010', '8', '0', '24', '4', '103');
INSERT INTO `psb_detailbiaya` VALUES ('3011', '8', '0', '24', '5', '103');
INSERT INTO `psb_detailbiaya` VALUES ('3012', '8', '0', '24', '6', '103');
INSERT INTO `psb_detailbiaya` VALUES ('3013', '8', '0', '24', '7', '103');
INSERT INTO `psb_detailbiaya` VALUES ('3014', '8', '0', '24', '9', '103');
INSERT INTO `psb_detailbiaya` VALUES ('3015', '8', '0', '24', '10', '103');
INSERT INTO `psb_detailbiaya` VALUES ('3016', '4', '0', '24', '1', '103');
INSERT INTO `psb_detailbiaya` VALUES ('3017', '4', '0', '24', '2', '103');
INSERT INTO `psb_detailbiaya` VALUES ('3018', '4', '0', '24', '3', '103');
INSERT INTO `psb_detailbiaya` VALUES ('3019', '4', '0', '24', '4', '103');
INSERT INTO `psb_detailbiaya` VALUES ('3020', '4', '0', '24', '5', '103');
INSERT INTO `psb_detailbiaya` VALUES ('3021', '4', '0', '24', '6', '103');
INSERT INTO `psb_detailbiaya` VALUES ('3022', '4', '0', '24', '7', '103');
INSERT INTO `psb_detailbiaya` VALUES ('3023', '4', '0', '24', '9', '103');
INSERT INTO `psb_detailbiaya` VALUES ('3024', '4', '0', '24', '10', '103');
INSERT INTO `psb_detailbiaya` VALUES ('3025', '3', '0', '4', '1', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3026', '3', '0', '4', '2', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3027', '3', '0', '4', '3', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3028', '3', '0', '4', '4', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3029', '3', '0', '4', '5', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3030', '3', '0', '4', '6', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3031', '3', '0', '4', '7', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3032', '3', '0', '4', '9', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3033', '3', '0', '4', '10', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3034', '7', '0', '4', '1', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3035', '7', '0', '4', '2', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3036', '7', '0', '4', '3', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3037', '7', '0', '4', '4', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3038', '7', '0', '4', '5', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3039', '7', '0', '4', '6', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3040', '7', '0', '4', '7', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3041', '7', '0', '4', '9', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3042', '7', '0', '4', '10', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3043', '8', '0', '4', '1', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3044', '8', '0', '4', '2', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3045', '8', '0', '4', '3', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3046', '8', '0', '4', '4', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3047', '8', '0', '4', '5', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3048', '8', '0', '4', '6', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3049', '8', '0', '4', '7', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3050', '8', '0', '4', '9', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3051', '8', '0', '4', '10', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3052', '4', '0', '4', '1', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3053', '4', '0', '4', '2', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3054', '4', '0', '4', '3', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3055', '4', '0', '4', '4', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3056', '4', '0', '4', '5', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3057', '4', '0', '4', '6', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3058', '4', '0', '4', '7', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3059', '4', '0', '4', '9', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3060', '4', '0', '4', '10', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3061', '3', '0', '5', '1', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3062', '3', '0', '5', '2', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3063', '3', '0', '5', '3', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3064', '3', '0', '5', '4', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3065', '3', '0', '5', '5', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3066', '3', '0', '5', '6', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3067', '3', '0', '5', '7', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3068', '3', '0', '5', '9', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3069', '3', '0', '5', '10', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3070', '7', '0', '5', '1', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3071', '7', '0', '5', '2', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3072', '7', '0', '5', '3', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3073', '7', '0', '5', '4', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3074', '7', '0', '5', '5', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3075', '7', '0', '5', '6', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3076', '7', '0', '5', '7', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3077', '7', '0', '5', '9', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3078', '7', '0', '5', '10', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3079', '8', '0', '5', '1', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3080', '8', '0', '5', '2', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3081', '8', '0', '5', '3', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3082', '8', '0', '5', '4', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3083', '8', '0', '5', '5', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3084', '8', '0', '5', '6', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3085', '8', '0', '5', '7', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3086', '8', '0', '5', '9', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3087', '8', '0', '5', '10', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3088', '4', '0', '5', '1', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3089', '4', '0', '5', '2', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3090', '4', '0', '5', '3', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3091', '4', '0', '5', '4', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3092', '4', '0', '5', '5', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3093', '4', '0', '5', '6', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3094', '4', '0', '5', '7', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3095', '4', '0', '5', '9', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3096', '4', '0', '5', '10', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3097', '3', '0', '6', '1', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3098', '3', '0', '6', '2', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3099', '3', '0', '6', '3', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3100', '3', '0', '6', '4', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3101', '3', '0', '6', '5', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3102', '3', '0', '6', '6', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3103', '3', '0', '6', '7', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3104', '3', '0', '6', '9', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3105', '3', '0', '6', '10', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3106', '7', '0', '6', '1', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3107', '7', '0', '6', '2', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3108', '7', '0', '6', '3', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3109', '7', '0', '6', '4', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3110', '7', '0', '6', '5', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3111', '7', '0', '6', '6', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3112', '7', '0', '6', '7', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3113', '7', '0', '6', '9', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3114', '7', '0', '6', '10', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3115', '8', '0', '6', '1', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3116', '8', '0', '6', '2', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3117', '8', '0', '6', '3', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3118', '8', '0', '6', '4', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3119', '8', '0', '6', '5', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3120', '8', '0', '6', '6', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3121', '8', '0', '6', '7', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3122', '8', '0', '6', '9', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3123', '8', '0', '6', '10', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3124', '4', '0', '6', '1', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3125', '4', '0', '6', '2', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3126', '4', '0', '6', '3', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3127', '4', '0', '6', '4', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3128', '4', '0', '6', '5', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3129', '4', '0', '6', '6', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3130', '4', '0', '6', '7', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3131', '4', '0', '6', '9', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3132', '4', '0', '6', '10', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3133', '3', '0', '7', '1', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3134', '3', '0', '7', '2', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3135', '3', '0', '7', '3', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3136', '3', '0', '7', '4', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3137', '3', '0', '7', '5', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3138', '3', '0', '7', '6', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3139', '3', '0', '7', '7', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3140', '3', '0', '7', '9', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3141', '3', '0', '7', '10', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3142', '7', '0', '7', '1', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3143', '7', '0', '7', '2', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3144', '7', '0', '7', '3', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3145', '7', '0', '7', '4', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3146', '7', '0', '7', '5', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3147', '7', '0', '7', '6', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3148', '7', '0', '7', '7', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3149', '7', '0', '7', '9', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3150', '7', '0', '7', '10', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3151', '8', '0', '7', '1', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3152', '8', '0', '7', '2', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3153', '8', '0', '7', '3', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3154', '8', '0', '7', '4', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3155', '8', '0', '7', '5', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3156', '8', '0', '7', '6', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3157', '8', '0', '7', '7', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3158', '8', '0', '7', '9', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3159', '8', '0', '7', '10', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3160', '4', '0', '7', '1', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3161', '4', '0', '7', '2', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3162', '4', '0', '7', '3', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3163', '4', '0', '7', '4', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3164', '4', '0', '7', '5', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3165', '4', '0', '7', '6', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3166', '4', '0', '7', '7', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3167', '4', '0', '7', '9', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3168', '4', '0', '7', '10', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3169', '3', '0', '8', '1', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3170', '3', '0', '8', '2', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3171', '3', '0', '8', '3', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3172', '3', '0', '8', '4', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3173', '3', '0', '8', '5', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3174', '3', '0', '8', '6', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3175', '3', '0', '8', '7', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3176', '3', '0', '8', '9', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3177', '3', '0', '8', '10', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3178', '7', '0', '8', '1', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3179', '7', '0', '8', '2', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3180', '7', '0', '8', '3', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3181', '7', '0', '8', '4', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3182', '7', '0', '8', '5', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3183', '7', '0', '8', '6', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3184', '7', '0', '8', '7', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3185', '7', '0', '8', '9', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3186', '7', '0', '8', '10', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3187', '8', '0', '8', '1', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3188', '8', '0', '8', '2', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3189', '8', '0', '8', '3', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3190', '8', '0', '8', '4', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3191', '8', '0', '8', '5', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3192', '8', '0', '8', '6', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3193', '8', '0', '8', '7', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3194', '8', '0', '8', '9', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3195', '8', '0', '8', '10', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3196', '4', '0', '8', '1', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3197', '4', '0', '8', '2', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3198', '4', '0', '8', '3', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3199', '4', '0', '8', '4', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3200', '4', '0', '8', '5', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3201', '4', '0', '8', '6', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3202', '4', '0', '8', '7', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3203', '4', '0', '8', '9', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3204', '4', '0', '8', '10', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3205', '3', '0', '9', '1', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3206', '3', '0', '9', '2', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3207', '3', '0', '9', '3', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3208', '3', '0', '9', '4', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3209', '3', '0', '9', '5', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3210', '3', '0', '9', '6', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3211', '3', '0', '9', '7', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3212', '3', '0', '9', '9', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3213', '3', '0', '9', '10', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3214', '7', '0', '9', '1', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3215', '7', '0', '9', '2', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3216', '7', '0', '9', '3', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3217', '7', '0', '9', '4', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3218', '7', '0', '9', '5', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3219', '7', '0', '9', '6', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3220', '7', '0', '9', '7', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3221', '7', '0', '9', '9', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3222', '7', '0', '9', '10', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3223', '8', '0', '9', '1', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3224', '8', '0', '9', '2', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3225', '8', '0', '9', '3', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3226', '8', '0', '9', '4', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3227', '8', '0', '9', '5', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3228', '8', '0', '9', '6', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3229', '8', '0', '9', '7', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3230', '8', '0', '9', '9', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3231', '8', '0', '9', '10', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3232', '4', '0', '9', '1', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3233', '4', '0', '9', '2', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3234', '4', '0', '9', '3', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3235', '4', '0', '9', '4', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3236', '4', '0', '9', '5', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3237', '4', '0', '9', '6', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3238', '4', '0', '9', '7', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3239', '4', '0', '9', '9', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3240', '4', '0', '9', '10', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3241', '3', '0', '10', '1', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3242', '3', '0', '10', '2', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3243', '3', '0', '10', '3', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3244', '3', '0', '10', '4', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3245', '3', '0', '10', '5', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3246', '3', '0', '10', '6', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3247', '3', '0', '10', '7', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3248', '3', '0', '10', '9', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3249', '3', '0', '10', '10', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3250', '7', '0', '10', '1', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3251', '7', '0', '10', '2', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3252', '7', '0', '10', '3', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3253', '7', '0', '10', '4', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3254', '7', '0', '10', '5', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3255', '7', '0', '10', '6', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3256', '7', '0', '10', '7', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3257', '7', '0', '10', '9', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3258', '7', '0', '10', '10', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3259', '8', '0', '10', '1', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3260', '8', '0', '10', '2', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3261', '8', '0', '10', '3', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3262', '8', '0', '10', '4', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3263', '8', '0', '10', '5', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3264', '8', '0', '10', '6', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3265', '8', '0', '10', '7', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3266', '8', '0', '10', '9', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3267', '8', '0', '10', '10', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3268', '4', '0', '10', '1', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3269', '4', '0', '10', '2', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3270', '4', '0', '10', '3', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3271', '4', '0', '10', '4', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3272', '4', '0', '10', '5', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3273', '4', '0', '10', '6', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3274', '4', '0', '10', '7', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3275', '4', '0', '10', '9', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3276', '4', '0', '10', '10', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3277', '3', '0', '11', '1', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3278', '3', '0', '11', '2', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3279', '3', '0', '11', '3', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3280', '3', '0', '11', '4', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3281', '3', '0', '11', '5', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3282', '3', '0', '11', '6', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3283', '3', '0', '11', '7', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3284', '3', '0', '11', '9', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3285', '3', '0', '11', '10', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3286', '7', '0', '11', '1', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3287', '7', '0', '11', '2', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3288', '7', '0', '11', '3', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3289', '7', '0', '11', '4', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3290', '7', '0', '11', '5', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3291', '7', '0', '11', '6', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3292', '7', '0', '11', '7', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3293', '7', '0', '11', '9', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3294', '7', '0', '11', '10', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3295', '8', '0', '11', '1', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3296', '8', '0', '11', '2', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3297', '8', '0', '11', '3', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3298', '8', '0', '11', '4', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3299', '8', '0', '11', '5', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3300', '8', '0', '11', '6', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3301', '8', '0', '11', '7', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3302', '8', '0', '11', '9', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3303', '8', '0', '11', '10', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3304', '4', '0', '11', '1', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3305', '4', '0', '11', '2', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3306', '4', '0', '11', '3', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3307', '4', '0', '11', '4', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3308', '4', '0', '11', '5', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3309', '4', '0', '11', '6', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3310', '4', '0', '11', '7', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3311', '4', '0', '11', '9', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3312', '4', '0', '11', '10', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3313', '3', '0', '12', '1', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3314', '3', '0', '12', '2', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3315', '3', '0', '12', '3', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3316', '3', '0', '12', '4', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3317', '3', '0', '12', '5', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3318', '3', '0', '12', '6', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3319', '3', '0', '12', '7', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3320', '3', '0', '12', '9', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3321', '3', '0', '12', '10', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3322', '7', '0', '12', '1', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3323', '7', '0', '12', '2', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3324', '7', '0', '12', '3', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3325', '7', '0', '12', '4', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3326', '7', '0', '12', '5', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3327', '7', '0', '12', '6', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3328', '7', '0', '12', '7', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3329', '7', '0', '12', '9', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3330', '7', '0', '12', '10', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3331', '8', '0', '12', '1', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3332', '8', '0', '12', '2', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3333', '8', '0', '12', '3', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3334', '8', '0', '12', '4', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3335', '8', '0', '12', '5', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3336', '8', '0', '12', '6', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3337', '8', '0', '12', '7', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3338', '8', '0', '12', '9', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3339', '8', '0', '12', '10', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3340', '4', '0', '12', '1', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3341', '4', '0', '12', '2', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3342', '4', '0', '12', '3', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3343', '4', '0', '12', '4', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3344', '4', '0', '12', '5', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3345', '4', '0', '12', '6', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3346', '4', '0', '12', '7', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3347', '4', '0', '12', '9', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3348', '4', '0', '12', '10', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3349', '3', '0', '13', '1', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3350', '3', '0', '13', '2', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3351', '3', '0', '13', '3', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3352', '3', '0', '13', '4', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3353', '3', '0', '13', '5', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3354', '3', '0', '13', '6', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3355', '3', '0', '13', '7', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3356', '3', '0', '13', '9', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3357', '3', '0', '13', '10', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3358', '7', '0', '13', '1', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3359', '7', '0', '13', '2', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3360', '7', '0', '13', '3', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3361', '7', '0', '13', '4', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3362', '7', '0', '13', '5', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3363', '7', '0', '13', '6', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3364', '7', '0', '13', '7', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3365', '7', '0', '13', '9', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3366', '7', '0', '13', '10', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3367', '8', '0', '13', '1', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3368', '8', '0', '13', '2', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3369', '8', '0', '13', '3', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3370', '8', '0', '13', '4', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3371', '8', '0', '13', '5', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3372', '8', '0', '13', '6', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3373', '8', '0', '13', '7', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3374', '8', '0', '13', '9', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3375', '8', '0', '13', '10', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3376', '4', '0', '13', '1', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3377', '4', '0', '13', '2', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3378', '4', '0', '13', '3', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3379', '4', '0', '13', '4', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3380', '4', '0', '13', '5', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3381', '4', '0', '13', '6', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3382', '4', '0', '13', '7', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3383', '4', '0', '13', '9', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3384', '4', '0', '13', '10', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3385', '3', '0', '14', '1', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3386', '3', '0', '14', '2', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3387', '3', '0', '14', '3', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3388', '3', '0', '14', '4', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3389', '3', '0', '14', '5', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3390', '3', '0', '14', '6', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3391', '3', '0', '14', '7', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3392', '3', '0', '14', '9', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3393', '3', '0', '14', '10', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3394', '7', '0', '14', '1', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3395', '7', '0', '14', '2', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3396', '7', '0', '14', '3', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3397', '7', '0', '14', '4', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3398', '7', '0', '14', '5', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3399', '7', '0', '14', '6', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3400', '7', '0', '14', '7', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3401', '7', '0', '14', '9', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3402', '7', '0', '14', '10', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3403', '8', '0', '14', '1', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3404', '8', '0', '14', '2', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3405', '8', '0', '14', '3', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3406', '8', '0', '14', '4', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3407', '8', '0', '14', '5', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3408', '8', '0', '14', '6', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3409', '8', '0', '14', '7', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3410', '8', '0', '14', '9', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3411', '8', '0', '14', '10', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3412', '4', '0', '14', '1', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3413', '4', '0', '14', '2', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3414', '4', '0', '14', '3', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3415', '4', '0', '14', '4', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3416', '4', '0', '14', '5', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3417', '4', '0', '14', '6', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3418', '4', '0', '14', '7', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3419', '4', '0', '14', '9', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3420', '4', '0', '14', '10', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3421', '3', '555650', '15', '1', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3422', '3', '0', '15', '2', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3423', '3', '0', '15', '3', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3424', '3', '0', '15', '4', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3425', '3', '0', '15', '5', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3426', '3', '0', '15', '6', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3427', '3', '0', '15', '7', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3428', '3', '0', '15', '9', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3429', '3', '0', '15', '10', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3430', '7', '0', '15', '1', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3431', '7', '0', '15', '2', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3432', '7', '0', '15', '3', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3433', '7', '0', '15', '4', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3434', '7', '0', '15', '5', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3435', '7', '0', '15', '6', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3436', '7', '0', '15', '7', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3437', '7', '0', '15', '9', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3438', '7', '0', '15', '10', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3439', '8', '0', '15', '1', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3440', '8', '0', '15', '2', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3441', '8', '0', '15', '3', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3442', '8', '0', '15', '4', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3443', '8', '0', '15', '5', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3444', '8', '0', '15', '6', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3445', '8', '0', '15', '7', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3446', '8', '0', '15', '9', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3447', '8', '0', '15', '10', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3448', '4', '0', '15', '1', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3449', '4', '0', '15', '2', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3450', '4', '0', '15', '3', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3451', '4', '0', '15', '4', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3452', '4', '0', '15', '5', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3453', '4', '0', '15', '6', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3454', '4', '0', '15', '7', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3455', '4', '0', '15', '9', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3456', '4', '0', '15', '10', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3457', '3', '0', '16', '1', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3458', '3', '0', '16', '2', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3459', '3', '0', '16', '3', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3460', '3', '0', '16', '4', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3461', '3', '0', '16', '5', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3462', '3', '0', '16', '6', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3463', '3', '0', '16', '7', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3464', '3', '0', '16', '9', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3465', '3', '0', '16', '10', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3466', '7', '0', '16', '1', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3467', '7', '0', '16', '2', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3468', '7', '0', '16', '3', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3469', '7', '0', '16', '4', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3470', '7', '0', '16', '5', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3471', '7', '0', '16', '6', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3472', '7', '0', '16', '7', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3473', '7', '0', '16', '9', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3474', '7', '0', '16', '10', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3475', '8', '0', '16', '1', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3476', '8', '0', '16', '2', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3477', '8', '0', '16', '3', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3478', '8', '0', '16', '4', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3479', '8', '0', '16', '5', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3480', '8', '0', '16', '6', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3481', '8', '0', '16', '7', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3482', '8', '0', '16', '9', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3483', '8', '0', '16', '10', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3484', '4', '0', '16', '1', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3485', '4', '0', '16', '2', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3486', '4', '0', '16', '3', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3487', '4', '0', '16', '4', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3488', '4', '0', '16', '5', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3489', '4', '0', '16', '6', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3490', '4', '0', '16', '7', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3491', '4', '0', '16', '9', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3492', '4', '0', '16', '10', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3493', '3', '0', '17', '1', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3494', '3', '0', '17', '2', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3495', '3', '0', '17', '3', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3496', '3', '0', '17', '4', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3497', '3', '0', '17', '5', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3498', '3', '0', '17', '6', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3499', '3', '0', '17', '7', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3500', '3', '0', '17', '9', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3501', '3', '0', '17', '10', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3502', '7', '0', '17', '1', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3503', '7', '0', '17', '2', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3504', '7', '0', '17', '3', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3505', '7', '0', '17', '4', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3506', '7', '0', '17', '5', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3507', '7', '0', '17', '6', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3508', '7', '0', '17', '7', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3509', '7', '0', '17', '9', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3510', '7', '0', '17', '10', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3511', '8', '0', '17', '1', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3512', '8', '0', '17', '2', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3513', '8', '0', '17', '3', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3514', '8', '0', '17', '4', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3515', '8', '0', '17', '5', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3516', '8', '0', '17', '6', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3517', '8', '0', '17', '7', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3518', '8', '0', '17', '9', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3519', '8', '0', '17', '10', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3520', '4', '0', '17', '1', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3521', '4', '0', '17', '2', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3522', '4', '0', '17', '3', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3523', '4', '0', '17', '4', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3524', '4', '0', '17', '5', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3525', '4', '0', '17', '6', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3526', '4', '0', '17', '7', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3527', '4', '0', '17', '9', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3528', '4', '0', '17', '10', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3529', '3', '0', '18', '1', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3530', '3', '0', '18', '2', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3531', '3', '0', '18', '3', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3532', '3', '0', '18', '4', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3533', '3', '0', '18', '5', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3534', '3', '0', '18', '6', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3535', '3', '0', '18', '7', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3536', '3', '0', '18', '9', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3537', '3', '0', '18', '10', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3538', '7', '0', '18', '1', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3539', '7', '0', '18', '2', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3540', '7', '0', '18', '3', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3541', '7', '0', '18', '4', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3542', '7', '0', '18', '5', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3543', '7', '0', '18', '6', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3544', '7', '0', '18', '7', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3545', '7', '0', '18', '9', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3546', '7', '0', '18', '10', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3547', '8', '0', '18', '1', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3548', '8', '0', '18', '2', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3549', '8', '0', '18', '3', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3550', '8', '0', '18', '4', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3551', '8', '0', '18', '5', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3552', '8', '0', '18', '6', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3553', '8', '0', '18', '7', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3554', '8', '0', '18', '9', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3555', '8', '0', '18', '10', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3556', '4', '0', '18', '1', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3557', '4', '0', '18', '2', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3558', '4', '0', '18', '3', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3559', '4', '0', '18', '4', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3560', '4', '0', '18', '5', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3561', '4', '0', '18', '6', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3562', '4', '0', '18', '7', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3563', '4', '0', '18', '9', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3564', '4', '0', '18', '10', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3565', '3', '0', '19', '1', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3566', '3', '0', '19', '2', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3567', '3', '0', '19', '3', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3568', '3', '0', '19', '4', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3569', '3', '0', '19', '5', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3570', '3', '0', '19', '6', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3571', '3', '0', '19', '7', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3572', '3', '0', '19', '9', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3573', '3', '0', '19', '10', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3574', '7', '0', '19', '1', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3575', '7', '0', '19', '2', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3576', '7', '0', '19', '3', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3577', '7', '0', '19', '4', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3578', '7', '0', '19', '5', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3579', '7', '0', '19', '6', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3580', '7', '0', '19', '7', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3581', '7', '0', '19', '9', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3582', '7', '0', '19', '10', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3583', '8', '0', '19', '1', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3584', '8', '0', '19', '2', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3585', '8', '0', '19', '3', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3586', '8', '0', '19', '4', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3587', '8', '0', '19', '5', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3588', '8', '0', '19', '6', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3589', '8', '0', '19', '7', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3590', '8', '0', '19', '9', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3591', '8', '0', '19', '10', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3592', '4', '0', '19', '1', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3593', '4', '0', '19', '2', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3594', '4', '0', '19', '3', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3595', '4', '0', '19', '4', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3596', '4', '0', '19', '5', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3597', '4', '0', '19', '6', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3598', '4', '0', '19', '7', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3599', '4', '0', '19', '9', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3600', '4', '0', '19', '10', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3601', '3', '0', '20', '1', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3602', '3', '0', '20', '2', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3603', '3', '0', '20', '3', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3604', '3', '0', '20', '4', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3605', '3', '0', '20', '5', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3606', '3', '0', '20', '6', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3607', '3', '0', '20', '7', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3608', '3', '0', '20', '9', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3609', '3', '0', '20', '10', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3610', '7', '0', '20', '1', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3611', '7', '0', '20', '2', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3612', '7', '0', '20', '3', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3613', '7', '0', '20', '4', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3614', '7', '0', '20', '5', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3615', '7', '0', '20', '6', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3616', '7', '0', '20', '7', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3617', '7', '0', '20', '9', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3618', '7', '0', '20', '10', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3619', '8', '0', '20', '1', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3620', '8', '0', '20', '2', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3621', '8', '0', '20', '3', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3622', '8', '0', '20', '4', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3623', '8', '0', '20', '5', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3624', '8', '0', '20', '6', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3625', '8', '0', '20', '7', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3626', '8', '0', '20', '9', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3627', '8', '0', '20', '10', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3628', '4', '0', '20', '1', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3629', '4', '0', '20', '2', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3630', '4', '0', '20', '3', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3631', '4', '0', '20', '4', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3632', '4', '0', '20', '5', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3633', '4', '0', '20', '6', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3634', '4', '0', '20', '7', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3635', '4', '0', '20', '9', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3636', '4', '0', '20', '10', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3637', '3', '0', '24', '1', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3638', '3', '0', '24', '2', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3639', '3', '0', '24', '3', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3640', '3', '0', '24', '4', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3641', '3', '0', '24', '5', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3642', '3', '0', '24', '6', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3643', '3', '0', '24', '7', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3644', '3', '0', '24', '9', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3645', '3', '0', '24', '10', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3646', '7', '0', '24', '1', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3647', '7', '0', '24', '2', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3648', '7', '0', '24', '3', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3649', '7', '0', '24', '4', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3650', '7', '0', '24', '5', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3651', '7', '0', '24', '6', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3652', '7', '0', '24', '7', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3653', '7', '0', '24', '9', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3654', '7', '0', '24', '10', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3655', '8', '0', '24', '1', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3656', '8', '0', '24', '2', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3657', '8', '0', '24', '3', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3658', '8', '0', '24', '4', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3659', '8', '0', '24', '5', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3660', '8', '0', '24', '6', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3661', '8', '0', '24', '7', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3662', '8', '0', '24', '9', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3663', '8', '0', '24', '10', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3664', '4', '0', '24', '1', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3665', '4', '0', '24', '2', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3666', '4', '0', '24', '3', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3667', '4', '0', '24', '4', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3668', '4', '0', '24', '5', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3669', '4', '0', '24', '6', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3670', '4', '0', '24', '7', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3671', '4', '0', '24', '9', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3672', '4', '0', '24', '10', '104');
INSERT INTO `psb_detailbiaya` VALUES ('3673', '3', '0', '9', '1', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3674', '3', '0', '9', '2', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3675', '3', '0', '9', '3', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3676', '3', '0', '9', '4', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3677', '3', '0', '9', '5', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3678', '3', '0', '9', '6', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3679', '3', '0', '9', '7', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3680', '3', '0', '9', '9', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3681', '3', '0', '9', '10', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3682', '7', '0', '9', '1', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3683', '7', '0', '9', '2', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3684', '7', '0', '9', '3', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3685', '7', '0', '9', '4', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3686', '7', '0', '9', '5', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3687', '7', '0', '9', '6', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3688', '7', '0', '9', '7', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3689', '7', '0', '9', '9', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3690', '7', '0', '9', '10', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3691', '8', '0', '9', '1', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3692', '8', '0', '9', '2', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3693', '8', '0', '9', '3', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3694', '8', '0', '9', '4', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3695', '8', '0', '9', '5', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3696', '8', '0', '9', '6', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3697', '8', '0', '9', '7', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3698', '8', '0', '9', '9', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3699', '8', '0', '9', '10', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3700', '4', '0', '9', '1', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3701', '4', '0', '9', '2', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3702', '4', '0', '9', '3', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3703', '4', '0', '9', '4', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3704', '4', '0', '9', '5', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3705', '4', '0', '9', '6', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3706', '4', '0', '9', '7', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3707', '4', '0', '9', '9', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3708', '4', '0', '9', '10', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3709', '3', '0', '10', '1', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3710', '3', '0', '10', '2', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3711', '3', '0', '10', '3', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3712', '3', '0', '10', '4', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3713', '3', '0', '10', '5', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3714', '3', '0', '10', '6', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3715', '3', '0', '10', '7', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3716', '3', '0', '10', '9', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3717', '3', '0', '10', '10', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3718', '7', '0', '10', '1', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3719', '7', '0', '10', '2', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3720', '7', '0', '10', '3', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3721', '7', '0', '10', '4', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3722', '7', '0', '10', '5', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3723', '7', '0', '10', '6', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3724', '7', '0', '10', '7', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3725', '7', '0', '10', '9', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3726', '7', '0', '10', '10', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3727', '8', '0', '10', '1', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3728', '8', '0', '10', '2', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3729', '8', '0', '10', '3', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3730', '8', '0', '10', '4', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3731', '8', '0', '10', '5', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3732', '8', '0', '10', '6', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3733', '8', '0', '10', '7', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3734', '8', '0', '10', '9', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3735', '8', '0', '10', '10', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3736', '4', '0', '10', '1', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3737', '4', '0', '10', '2', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3738', '4', '0', '10', '3', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3739', '4', '0', '10', '4', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3740', '4', '0', '10', '5', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3741', '4', '0', '10', '6', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3742', '4', '0', '10', '7', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3743', '4', '0', '10', '9', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3744', '4', '0', '10', '10', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3745', '3', '0', '11', '1', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3746', '3', '0', '11', '2', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3747', '3', '0', '11', '3', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3748', '3', '0', '11', '4', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3749', '3', '0', '11', '5', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3750', '3', '0', '11', '6', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3751', '3', '0', '11', '7', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3752', '3', '0', '11', '9', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3753', '3', '0', '11', '10', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3754', '7', '0', '11', '1', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3755', '7', '0', '11', '2', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3756', '7', '0', '11', '3', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3757', '7', '0', '11', '4', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3758', '7', '0', '11', '5', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3759', '7', '0', '11', '6', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3760', '7', '0', '11', '7', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3761', '7', '0', '11', '9', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3762', '7', '0', '11', '10', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3763', '8', '0', '11', '1', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3764', '8', '0', '11', '2', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3765', '8', '0', '11', '3', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3766', '8', '0', '11', '4', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3767', '8', '0', '11', '5', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3768', '8', '0', '11', '6', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3769', '8', '0', '11', '7', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3770', '8', '0', '11', '9', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3771', '8', '0', '11', '10', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3772', '4', '0', '11', '1', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3773', '4', '0', '11', '2', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3774', '4', '0', '11', '3', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3775', '4', '0', '11', '4', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3776', '4', '0', '11', '5', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3777', '4', '0', '11', '6', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3778', '4', '0', '11', '7', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3779', '4', '0', '11', '9', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3780', '4', '0', '11', '10', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3781', '3', '0', '12', '1', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3782', '3', '0', '12', '2', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3783', '3', '0', '12', '3', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3784', '3', '0', '12', '4', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3785', '3', '0', '12', '5', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3786', '3', '0', '12', '6', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3787', '3', '0', '12', '7', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3788', '3', '0', '12', '9', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3789', '3', '0', '12', '10', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3790', '7', '0', '12', '1', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3791', '7', '0', '12', '2', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3792', '7', '0', '12', '3', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3793', '7', '0', '12', '4', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3794', '7', '0', '12', '5', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3795', '7', '0', '12', '6', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3796', '7', '0', '12', '7', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3797', '7', '0', '12', '9', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3798', '7', '0', '12', '10', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3799', '8', '0', '12', '1', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3800', '8', '0', '12', '2', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3801', '8', '0', '12', '3', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3802', '8', '0', '12', '4', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3803', '8', '0', '12', '5', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3804', '8', '0', '12', '6', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3805', '8', '0', '12', '7', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3806', '8', '0', '12', '9', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3807', '8', '0', '12', '10', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3808', '4', '0', '12', '1', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3809', '4', '0', '12', '2', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3810', '4', '0', '12', '3', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3811', '4', '0', '12', '4', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3812', '4', '0', '12', '5', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3813', '4', '0', '12', '6', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3814', '4', '0', '12', '7', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3815', '4', '0', '12', '9', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3816', '4', '0', '12', '10', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3817', '3', '0', '13', '1', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3818', '3', '0', '13', '2', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3819', '3', '0', '13', '3', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3820', '3', '0', '13', '4', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3821', '3', '0', '13', '5', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3822', '3', '0', '13', '6', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3823', '3', '0', '13', '7', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3824', '3', '0', '13', '9', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3825', '3', '0', '13', '10', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3826', '7', '0', '13', '1', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3827', '7', '0', '13', '2', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3828', '7', '0', '13', '3', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3829', '7', '0', '13', '4', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3830', '7', '0', '13', '5', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3831', '7', '0', '13', '6', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3832', '7', '0', '13', '7', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3833', '7', '0', '13', '9', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3834', '7', '0', '13', '10', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3835', '8', '0', '13', '1', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3836', '8', '0', '13', '2', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3837', '8', '0', '13', '3', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3838', '8', '0', '13', '4', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3839', '8', '0', '13', '5', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3840', '8', '0', '13', '6', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3841', '8', '0', '13', '7', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3842', '8', '0', '13', '9', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3843', '8', '0', '13', '10', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3844', '4', '0', '13', '1', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3845', '4', '0', '13', '2', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3846', '4', '0', '13', '3', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3847', '4', '0', '13', '4', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3848', '4', '0', '13', '5', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3849', '4', '0', '13', '6', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3850', '4', '0', '13', '7', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3851', '4', '0', '13', '9', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3852', '4', '0', '13', '10', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3853', '3', '0', '14', '1', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3854', '3', '0', '14', '2', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3855', '3', '0', '14', '3', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3856', '3', '0', '14', '4', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3857', '3', '0', '14', '5', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3858', '3', '0', '14', '6', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3859', '3', '0', '14', '7', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3860', '3', '0', '14', '9', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3861', '3', '0', '14', '10', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3862', '7', '0', '14', '1', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3863', '7', '0', '14', '2', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3864', '7', '0', '14', '3', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3865', '7', '0', '14', '4', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3866', '7', '0', '14', '5', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3867', '7', '0', '14', '6', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3868', '7', '0', '14', '7', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3869', '7', '0', '14', '9', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3870', '7', '0', '14', '10', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3871', '8', '0', '14', '1', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3872', '8', '0', '14', '2', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3873', '8', '0', '14', '3', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3874', '8', '0', '14', '4', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3875', '8', '0', '14', '5', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3876', '8', '0', '14', '6', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3877', '8', '0', '14', '7', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3878', '8', '0', '14', '9', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3879', '8', '0', '14', '10', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3880', '4', '0', '14', '1', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3881', '4', '0', '14', '2', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3882', '4', '0', '14', '3', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3883', '4', '0', '14', '4', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3884', '4', '0', '14', '5', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3885', '4', '0', '14', '6', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3886', '4', '0', '14', '7', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3887', '4', '0', '14', '9', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3888', '4', '0', '14', '10', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3889', '3', '4500000', '15', '1', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3890', '3', '0', '15', '2', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3891', '3', '0', '15', '3', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3892', '3', '0', '15', '4', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3893', '3', '0', '15', '5', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3894', '3', '0', '15', '6', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3895', '3', '0', '15', '7', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3896', '3', '0', '15', '9', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3897', '3', '0', '15', '10', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3898', '7', '0', '15', '1', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3899', '7', '0', '15', '2', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3900', '7', '0', '15', '3', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3901', '7', '0', '15', '4', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3902', '7', '0', '15', '5', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3903', '7', '0', '15', '6', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3904', '7', '0', '15', '7', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3905', '7', '0', '15', '9', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3906', '7', '0', '15', '10', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3907', '8', '0', '15', '1', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3908', '8', '0', '15', '2', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3909', '8', '0', '15', '3', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3910', '8', '0', '15', '4', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3911', '8', '0', '15', '5', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3912', '8', '0', '15', '6', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3913', '8', '0', '15', '7', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3914', '8', '0', '15', '9', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3915', '8', '0', '15', '10', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3916', '4', '9000000', '15', '1', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3917', '4', '0', '15', '2', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3918', '4', '0', '15', '3', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3919', '4', '0', '15', '4', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3920', '4', '0', '15', '5', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3921', '4', '0', '15', '6', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3922', '4', '0', '15', '7', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3923', '4', '0', '15', '9', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3924', '4', '0', '15', '10', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3925', '3', '0', '16', '1', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3926', '3', '0', '16', '2', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3927', '3', '0', '16', '3', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3928', '3', '0', '16', '4', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3929', '3', '0', '16', '5', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3930', '3', '0', '16', '6', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3931', '3', '0', '16', '7', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3932', '3', '0', '16', '9', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3933', '3', '0', '16', '10', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3934', '7', '0', '16', '1', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3935', '7', '0', '16', '2', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3936', '7', '0', '16', '3', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3937', '7', '0', '16', '4', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3938', '7', '0', '16', '5', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3939', '7', '0', '16', '6', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3940', '7', '0', '16', '7', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3941', '7', '0', '16', '9', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3942', '7', '0', '16', '10', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3943', '8', '0', '16', '1', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3944', '8', '0', '16', '2', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3945', '8', '0', '16', '3', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3946', '8', '0', '16', '4', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3947', '8', '0', '16', '5', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3948', '8', '0', '16', '6', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3949', '8', '0', '16', '7', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3950', '8', '0', '16', '9', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3951', '8', '0', '16', '10', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3952', '4', '90000', '16', '1', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3953', '4', '0', '16', '2', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3954', '4', '0', '16', '3', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3955', '4', '0', '16', '4', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3956', '4', '0', '16', '5', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3957', '4', '0', '16', '6', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3958', '4', '0', '16', '7', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3959', '4', '0', '16', '9', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3960', '4', '0', '16', '10', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3961', '3', '0', '17', '1', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3962', '3', '0', '17', '2', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3963', '3', '0', '17', '3', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3964', '3', '0', '17', '4', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3965', '3', '0', '17', '5', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3966', '3', '0', '17', '6', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3967', '3', '0', '17', '7', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3968', '3', '0', '17', '9', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3969', '3', '0', '17', '10', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3970', '7', '0', '17', '1', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3971', '7', '0', '17', '2', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3972', '7', '0', '17', '3', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3973', '7', '0', '17', '4', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3974', '7', '0', '17', '5', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3975', '7', '0', '17', '6', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3976', '7', '0', '17', '7', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3977', '7', '0', '17', '9', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3978', '7', '0', '17', '10', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3979', '8', '0', '17', '1', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3980', '8', '0', '17', '2', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3981', '8', '0', '17', '3', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3982', '8', '0', '17', '4', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3983', '8', '0', '17', '5', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3984', '8', '0', '17', '6', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3985', '8', '0', '17', '7', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3986', '8', '0', '17', '9', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3987', '8', '0', '17', '10', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3988', '4', '0', '17', '1', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3989', '4', '0', '17', '2', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3990', '4', '0', '17', '3', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3991', '4', '0', '17', '4', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3992', '4', '0', '17', '5', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3993', '4', '0', '17', '6', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3994', '4', '0', '17', '7', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3995', '4', '0', '17', '9', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3996', '4', '0', '17', '10', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3997', '3', '0', '18', '1', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3998', '3', '0', '18', '2', '105');
INSERT INTO `psb_detailbiaya` VALUES ('3999', '3', '0', '18', '3', '105');
INSERT INTO `psb_detailbiaya` VALUES ('4000', '3', '0', '18', '4', '105');
INSERT INTO `psb_detailbiaya` VALUES ('4001', '3', '0', '18', '5', '105');
INSERT INTO `psb_detailbiaya` VALUES ('4002', '3', '0', '18', '6', '105');
INSERT INTO `psb_detailbiaya` VALUES ('4003', '3', '0', '18', '7', '105');
INSERT INTO `psb_detailbiaya` VALUES ('4004', '3', '0', '18', '9', '105');
INSERT INTO `psb_detailbiaya` VALUES ('4005', '3', '0', '18', '10', '105');
INSERT INTO `psb_detailbiaya` VALUES ('4006', '7', '0', '18', '1', '105');
INSERT INTO `psb_detailbiaya` VALUES ('4007', '7', '0', '18', '2', '105');
INSERT INTO `psb_detailbiaya` VALUES ('4008', '7', '0', '18', '3', '105');
INSERT INTO `psb_detailbiaya` VALUES ('4009', '7', '0', '18', '4', '105');
INSERT INTO `psb_detailbiaya` VALUES ('4010', '7', '0', '18', '5', '105');
INSERT INTO `psb_detailbiaya` VALUES ('4011', '7', '0', '18', '6', '105');
INSERT INTO `psb_detailbiaya` VALUES ('4012', '7', '0', '18', '7', '105');
INSERT INTO `psb_detailbiaya` VALUES ('4013', '7', '0', '18', '9', '105');
INSERT INTO `psb_detailbiaya` VALUES ('4014', '7', '0', '18', '10', '105');
INSERT INTO `psb_detailbiaya` VALUES ('4015', '8', '0', '18', '1', '105');
INSERT INTO `psb_detailbiaya` VALUES ('4016', '8', '0', '18', '2', '105');
INSERT INTO `psb_detailbiaya` VALUES ('4017', '8', '0', '18', '3', '105');
INSERT INTO `psb_detailbiaya` VALUES ('4018', '8', '0', '18', '4', '105');
INSERT INTO `psb_detailbiaya` VALUES ('4019', '8', '0', '18', '5', '105');
INSERT INTO `psb_detailbiaya` VALUES ('4020', '8', '0', '18', '6', '105');
INSERT INTO `psb_detailbiaya` VALUES ('4021', '8', '0', '18', '7', '105');
INSERT INTO `psb_detailbiaya` VALUES ('4022', '8', '0', '18', '9', '105');
INSERT INTO `psb_detailbiaya` VALUES ('4023', '8', '0', '18', '10', '105');
INSERT INTO `psb_detailbiaya` VALUES ('4024', '4', '0', '18', '1', '105');
INSERT INTO `psb_detailbiaya` VALUES ('4025', '4', '0', '18', '2', '105');
INSERT INTO `psb_detailbiaya` VALUES ('4026', '4', '0', '18', '3', '105');
INSERT INTO `psb_detailbiaya` VALUES ('4027', '4', '0', '18', '4', '105');
INSERT INTO `psb_detailbiaya` VALUES ('4028', '4', '0', '18', '5', '105');
INSERT INTO `psb_detailbiaya` VALUES ('4029', '4', '0', '18', '6', '105');
INSERT INTO `psb_detailbiaya` VALUES ('4030', '4', '0', '18', '7', '105');
INSERT INTO `psb_detailbiaya` VALUES ('4031', '4', '0', '18', '9', '105');
INSERT INTO `psb_detailbiaya` VALUES ('4032', '4', '0', '18', '10', '105');
INSERT INTO `psb_detailbiaya` VALUES ('4033', '3', '0', '9', '1', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4034', '3', '0', '9', '2', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4035', '3', '0', '9', '3', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4036', '3', '0', '9', '4', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4037', '3', '0', '9', '5', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4038', '3', '0', '9', '6', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4039', '3', '0', '9', '7', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4040', '3', '0', '9', '9', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4041', '3', '0', '9', '10', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4042', '7', '0', '9', '1', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4043', '7', '0', '9', '2', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4044', '7', '0', '9', '3', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4045', '7', '0', '9', '4', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4046', '7', '0', '9', '5', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4047', '7', '0', '9', '6', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4048', '7', '0', '9', '7', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4049', '7', '0', '9', '9', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4050', '7', '0', '9', '10', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4051', '8', '0', '9', '1', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4052', '8', '0', '9', '2', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4053', '8', '0', '9', '3', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4054', '8', '0', '9', '4', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4055', '8', '0', '9', '5', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4056', '8', '0', '9', '6', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4057', '8', '0', '9', '7', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4058', '8', '0', '9', '9', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4059', '8', '0', '9', '10', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4060', '4', '0', '9', '1', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4061', '4', '0', '9', '2', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4062', '4', '0', '9', '3', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4063', '4', '0', '9', '4', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4064', '4', '0', '9', '5', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4065', '4', '0', '9', '6', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4066', '4', '0', '9', '7', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4067', '4', '0', '9', '9', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4068', '4', '0', '9', '10', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4069', '3', '0', '10', '1', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4070', '3', '0', '10', '2', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4071', '3', '0', '10', '3', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4072', '3', '0', '10', '4', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4073', '3', '0', '10', '5', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4074', '3', '0', '10', '6', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4075', '3', '0', '10', '7', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4076', '3', '0', '10', '9', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4077', '3', '0', '10', '10', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4078', '7', '0', '10', '1', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4079', '7', '0', '10', '2', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4080', '7', '0', '10', '3', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4081', '7', '0', '10', '4', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4082', '7', '0', '10', '5', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4083', '7', '0', '10', '6', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4084', '7', '0', '10', '7', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4085', '7', '0', '10', '9', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4086', '7', '0', '10', '10', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4087', '8', '0', '10', '1', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4088', '8', '0', '10', '2', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4089', '8', '0', '10', '3', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4090', '8', '0', '10', '4', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4091', '8', '0', '10', '5', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4092', '8', '0', '10', '6', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4093', '8', '0', '10', '7', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4094', '8', '0', '10', '9', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4095', '8', '0', '10', '10', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4096', '4', '0', '10', '1', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4097', '4', '0', '10', '2', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4098', '4', '0', '10', '3', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4099', '4', '0', '10', '4', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4100', '4', '0', '10', '5', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4101', '4', '0', '10', '6', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4102', '4', '0', '10', '7', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4103', '4', '0', '10', '9', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4104', '4', '0', '10', '10', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4105', '3', '0', '11', '1', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4106', '3', '0', '11', '2', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4107', '3', '0', '11', '3', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4108', '3', '0', '11', '4', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4109', '3', '0', '11', '5', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4110', '3', '0', '11', '6', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4111', '3', '0', '11', '7', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4112', '3', '0', '11', '9', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4113', '3', '0', '11', '10', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4114', '7', '0', '11', '1', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4115', '7', '0', '11', '2', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4116', '7', '0', '11', '3', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4117', '7', '0', '11', '4', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4118', '7', '0', '11', '5', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4119', '7', '0', '11', '6', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4120', '7', '0', '11', '7', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4121', '7', '0', '11', '9', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4122', '7', '0', '11', '10', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4123', '8', '0', '11', '1', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4124', '8', '0', '11', '2', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4125', '8', '0', '11', '3', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4126', '8', '0', '11', '4', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4127', '8', '0', '11', '5', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4128', '8', '0', '11', '6', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4129', '8', '0', '11', '7', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4130', '8', '0', '11', '9', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4131', '8', '0', '11', '10', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4132', '4', '0', '11', '1', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4133', '4', '0', '11', '2', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4134', '4', '0', '11', '3', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4135', '4', '0', '11', '4', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4136', '4', '0', '11', '5', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4137', '4', '0', '11', '6', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4138', '4', '0', '11', '7', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4139', '4', '0', '11', '9', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4140', '4', '0', '11', '10', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4141', '3', '0', '12', '1', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4142', '3', '0', '12', '2', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4143', '3', '0', '12', '3', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4144', '3', '0', '12', '4', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4145', '3', '0', '12', '5', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4146', '3', '0', '12', '6', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4147', '3', '0', '12', '7', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4148', '3', '0', '12', '9', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4149', '3', '0', '12', '10', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4150', '7', '0', '12', '1', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4151', '7', '0', '12', '2', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4152', '7', '0', '12', '3', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4153', '7', '0', '12', '4', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4154', '7', '0', '12', '5', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4155', '7', '0', '12', '6', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4156', '7', '0', '12', '7', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4157', '7', '0', '12', '9', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4158', '7', '0', '12', '10', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4159', '8', '0', '12', '1', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4160', '8', '0', '12', '2', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4161', '8', '0', '12', '3', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4162', '8', '0', '12', '4', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4163', '8', '0', '12', '5', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4164', '8', '0', '12', '6', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4165', '8', '0', '12', '7', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4166', '8', '0', '12', '9', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4167', '8', '0', '12', '10', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4168', '4', '0', '12', '1', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4169', '4', '0', '12', '2', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4170', '4', '0', '12', '3', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4171', '4', '0', '12', '4', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4172', '4', '0', '12', '5', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4173', '4', '0', '12', '6', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4174', '4', '0', '12', '7', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4175', '4', '0', '12', '9', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4176', '4', '0', '12', '10', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4177', '3', '0', '13', '1', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4178', '3', '0', '13', '2', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4179', '3', '0', '13', '3', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4180', '3', '0', '13', '4', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4181', '3', '0', '13', '5', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4182', '3', '0', '13', '6', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4183', '3', '0', '13', '7', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4184', '3', '0', '13', '9', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4185', '3', '0', '13', '10', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4186', '7', '0', '13', '1', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4187', '7', '0', '13', '2', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4188', '7', '0', '13', '3', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4189', '7', '0', '13', '4', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4190', '7', '0', '13', '5', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4191', '7', '0', '13', '6', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4192', '7', '0', '13', '7', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4193', '7', '0', '13', '9', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4194', '7', '0', '13', '10', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4195', '8', '0', '13', '1', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4196', '8', '0', '13', '2', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4197', '8', '0', '13', '3', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4198', '8', '0', '13', '4', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4199', '8', '0', '13', '5', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4200', '8', '0', '13', '6', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4201', '8', '0', '13', '7', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4202', '8', '0', '13', '9', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4203', '8', '0', '13', '10', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4204', '4', '0', '13', '1', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4205', '4', '0', '13', '2', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4206', '4', '0', '13', '3', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4207', '4', '0', '13', '4', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4208', '4', '0', '13', '5', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4209', '4', '0', '13', '6', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4210', '4', '0', '13', '7', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4211', '4', '0', '13', '9', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4212', '4', '0', '13', '10', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4213', '3', '0', '14', '1', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4214', '3', '0', '14', '2', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4215', '3', '0', '14', '3', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4216', '3', '0', '14', '4', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4217', '3', '0', '14', '5', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4218', '3', '0', '14', '6', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4219', '3', '0', '14', '7', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4220', '3', '0', '14', '9', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4221', '3', '0', '14', '10', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4222', '7', '0', '14', '1', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4223', '7', '0', '14', '2', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4224', '7', '0', '14', '3', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4225', '7', '0', '14', '4', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4226', '7', '0', '14', '5', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4227', '7', '0', '14', '6', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4228', '7', '0', '14', '7', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4229', '7', '0', '14', '9', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4230', '7', '0', '14', '10', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4231', '8', '0', '14', '1', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4232', '8', '0', '14', '2', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4233', '8', '0', '14', '3', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4234', '8', '0', '14', '4', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4235', '8', '0', '14', '5', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4236', '8', '0', '14', '6', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4237', '8', '0', '14', '7', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4238', '8', '0', '14', '9', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4239', '8', '0', '14', '10', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4240', '4', '0', '14', '1', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4241', '4', '0', '14', '2', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4242', '4', '0', '14', '3', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4243', '4', '0', '14', '4', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4244', '4', '0', '14', '5', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4245', '4', '0', '14', '6', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4246', '4', '0', '14', '7', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4247', '4', '0', '14', '9', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4248', '4', '0', '14', '10', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4249', '3', '0', '15', '1', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4250', '3', '0', '15', '2', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4251', '3', '0', '15', '3', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4252', '3', '0', '15', '4', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4253', '3', '0', '15', '5', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4254', '3', '0', '15', '6', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4255', '3', '0', '15', '7', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4256', '3', '0', '15', '9', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4257', '3', '0', '15', '10', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4258', '7', '0', '15', '1', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4259', '7', '0', '15', '2', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4260', '7', '0', '15', '3', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4261', '7', '0', '15', '4', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4262', '7', '0', '15', '5', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4263', '7', '0', '15', '6', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4264', '7', '0', '15', '7', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4265', '7', '0', '15', '9', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4266', '7', '0', '15', '10', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4267', '8', '0', '15', '1', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4268', '8', '0', '15', '2', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4269', '8', '0', '15', '3', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4270', '8', '0', '15', '4', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4271', '8', '0', '15', '5', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4272', '8', '0', '15', '6', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4273', '8', '0', '15', '7', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4274', '8', '0', '15', '9', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4275', '8', '0', '15', '10', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4276', '4', '0', '15', '1', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4277', '4', '0', '15', '2', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4278', '4', '0', '15', '3', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4279', '4', '0', '15', '4', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4280', '4', '0', '15', '5', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4281', '4', '0', '15', '6', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4282', '4', '0', '15', '7', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4283', '4', '0', '15', '9', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4284', '4', '0', '15', '10', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4285', '3', '0', '16', '1', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4286', '3', '0', '16', '2', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4287', '3', '0', '16', '3', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4288', '3', '0', '16', '4', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4289', '3', '0', '16', '5', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4290', '3', '0', '16', '6', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4291', '3', '0', '16', '7', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4292', '3', '0', '16', '9', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4293', '3', '0', '16', '10', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4294', '7', '0', '16', '1', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4295', '7', '0', '16', '2', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4296', '7', '0', '16', '3', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4297', '7', '0', '16', '4', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4298', '7', '0', '16', '5', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4299', '7', '0', '16', '6', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4300', '7', '0', '16', '7', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4301', '7', '0', '16', '9', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4302', '7', '0', '16', '10', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4303', '8', '0', '16', '1', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4304', '8', '0', '16', '2', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4305', '8', '0', '16', '3', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4306', '8', '0', '16', '4', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4307', '8', '0', '16', '5', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4308', '8', '0', '16', '6', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4309', '8', '0', '16', '7', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4310', '8', '0', '16', '9', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4311', '8', '0', '16', '10', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4312', '4', '0', '16', '1', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4313', '4', '0', '16', '2', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4314', '4', '0', '16', '3', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4315', '4', '0', '16', '4', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4316', '4', '0', '16', '5', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4317', '4', '0', '16', '6', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4318', '4', '0', '16', '7', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4319', '4', '0', '16', '9', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4320', '4', '0', '16', '10', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4321', '3', '0', '17', '1', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4322', '3', '0', '17', '2', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4323', '3', '0', '17', '3', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4324', '3', '0', '17', '4', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4325', '3', '0', '17', '5', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4326', '3', '0', '17', '6', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4327', '3', '0', '17', '7', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4328', '3', '0', '17', '9', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4329', '3', '0', '17', '10', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4330', '7', '0', '17', '1', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4331', '7', '0', '17', '2', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4332', '7', '0', '17', '3', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4333', '7', '0', '17', '4', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4334', '7', '0', '17', '5', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4335', '7', '0', '17', '6', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4336', '7', '0', '17', '7', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4337', '7', '0', '17', '9', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4338', '7', '0', '17', '10', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4339', '8', '0', '17', '1', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4340', '8', '0', '17', '2', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4341', '8', '0', '17', '3', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4342', '8', '0', '17', '4', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4343', '8', '0', '17', '5', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4344', '8', '0', '17', '6', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4345', '8', '0', '17', '7', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4346', '8', '0', '17', '9', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4347', '8', '0', '17', '10', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4348', '4', '0', '17', '1', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4349', '4', '0', '17', '2', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4350', '4', '0', '17', '3', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4351', '4', '0', '17', '4', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4352', '4', '0', '17', '5', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4353', '4', '0', '17', '6', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4354', '4', '0', '17', '7', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4355', '4', '0', '17', '9', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4356', '4', '0', '17', '10', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4357', '3', '0', '18', '1', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4358', '3', '0', '18', '2', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4359', '3', '0', '18', '3', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4360', '3', '0', '18', '4', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4361', '3', '0', '18', '5', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4362', '3', '0', '18', '6', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4363', '3', '0', '18', '7', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4364', '3', '0', '18', '9', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4365', '3', '0', '18', '10', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4366', '7', '0', '18', '1', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4367', '7', '0', '18', '2', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4368', '7', '0', '18', '3', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4369', '7', '0', '18', '4', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4370', '7', '0', '18', '5', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4371', '7', '0', '18', '6', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4372', '7', '0', '18', '7', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4373', '7', '0', '18', '9', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4374', '7', '0', '18', '10', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4375', '8', '0', '18', '1', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4376', '8', '0', '18', '2', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4377', '8', '0', '18', '3', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4378', '8', '0', '18', '4', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4379', '8', '0', '18', '5', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4380', '8', '0', '18', '6', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4381', '8', '0', '18', '7', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4382', '8', '0', '18', '9', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4383', '8', '0', '18', '10', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4384', '4', '0', '18', '1', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4385', '4', '0', '18', '2', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4386', '4', '0', '18', '3', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4387', '4', '0', '18', '4', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4388', '4', '0', '18', '5', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4389', '4', '0', '18', '6', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4390', '4', '0', '18', '7', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4391', '4', '0', '18', '9', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4392', '4', '0', '18', '10', '106');
INSERT INTO `psb_detailbiaya` VALUES ('4393', '3', '0', '4', '1', '107');
INSERT INTO `psb_detailbiaya` VALUES ('4394', '3', '0', '4', '2', '107');
INSERT INTO `psb_detailbiaya` VALUES ('4395', '3', '0', '4', '3', '107');
INSERT INTO `psb_detailbiaya` VALUES ('4396', '3', '0', '4', '4', '107');
INSERT INTO `psb_detailbiaya` VALUES ('4397', '3', '0', '4', '5', '107');
INSERT INTO `psb_detailbiaya` VALUES ('4398', '3', '0', '4', '6', '107');
INSERT INTO `psb_detailbiaya` VALUES ('4399', '3', '0', '4', '7', '107');
INSERT INTO `psb_detailbiaya` VALUES ('4400', '3', '0', '4', '9', '107');
INSERT INTO `psb_detailbiaya` VALUES ('4401', '3', '0', '4', '10', '107');
INSERT INTO `psb_detailbiaya` VALUES ('4402', '7', '0', '4', '1', '107');
INSERT INTO `psb_detailbiaya` VALUES ('4403', '7', '0', '4', '2', '107');
INSERT INTO `psb_detailbiaya` VALUES ('4404', '7', '0', '4', '3', '107');
INSERT INTO `psb_detailbiaya` VALUES ('4405', '7', '0', '4', '4', '107');
INSERT INTO `psb_detailbiaya` VALUES ('4406', '7', '0', '4', '5', '107');
INSERT INTO `psb_detailbiaya` VALUES ('4407', '7', '0', '4', '6', '107');
INSERT INTO `psb_detailbiaya` VALUES ('4408', '7', '0', '4', '7', '107');
INSERT INTO `psb_detailbiaya` VALUES ('4409', '7', '0', '4', '9', '107');
INSERT INTO `psb_detailbiaya` VALUES ('4410', '7', '0', '4', '10', '107');
INSERT INTO `psb_detailbiaya` VALUES ('4411', '8', '0', '4', '1', '107');
INSERT INTO `psb_detailbiaya` VALUES ('4412', '8', '0', '4', '2', '107');
INSERT INTO `psb_detailbiaya` VALUES ('4413', '8', '0', '4', '3', '107');
INSERT INTO `psb_detailbiaya` VALUES ('4414', '8', '0', '4', '4', '107');
INSERT INTO `psb_detailbiaya` VALUES ('4415', '8', '0', '4', '5', '107');
INSERT INTO `psb_detailbiaya` VALUES ('4416', '8', '0', '4', '6', '107');
INSERT INTO `psb_detailbiaya` VALUES ('4417', '8', '0', '4', '7', '107');
INSERT INTO `psb_detailbiaya` VALUES ('4418', '8', '0', '4', '9', '107');
INSERT INTO `psb_detailbiaya` VALUES ('4419', '8', '0', '4', '10', '107');
INSERT INTO `psb_detailbiaya` VALUES ('4420', '4', '0', '4', '1', '107');
INSERT INTO `psb_detailbiaya` VALUES ('4421', '4', '0', '4', '2', '107');
INSERT INTO `psb_detailbiaya` VALUES ('4422', '4', '0', '4', '3', '107');
INSERT INTO `psb_detailbiaya` VALUES ('4423', '4', '0', '4', '4', '107');
INSERT INTO `psb_detailbiaya` VALUES ('4424', '4', '0', '4', '5', '107');
INSERT INTO `psb_detailbiaya` VALUES ('4425', '4', '0', '4', '6', '107');
INSERT INTO `psb_detailbiaya` VALUES ('4426', '4', '0', '4', '7', '107');
INSERT INTO `psb_detailbiaya` VALUES ('4427', '4', '0', '4', '9', '107');
INSERT INTO `psb_detailbiaya` VALUES ('4428', '4', '0', '4', '10', '107');
INSERT INTO `psb_detailbiaya` VALUES ('4429', '3', '0', '5', '1', '107');
INSERT INTO `psb_detailbiaya` VALUES ('4430', '3', '0', '5', '2', '107');
INSERT INTO `psb_detailbiaya` VALUES ('4431', '3', '0', '5', '3', '107');
INSERT INTO `psb_detailbiaya` VALUES ('4432', '3', '0', '5', '4', '107');
INSERT INTO `psb_detailbiaya` VALUES ('4433', '3', '0', '5', '5', '107');
INSERT INTO `psb_detailbiaya` VALUES ('4434', '3', '0', '5', '6', '107');
INSERT INTO `psb_detailbiaya` VALUES ('4435', '3', '0', '5', '7', '107');
INSERT INTO `psb_detailbiaya` VALUES ('4436', '3', '0', '5', '9', '107');
INSERT INTO `psb_detailbiaya` VALUES ('4437', '3', '0', '5', '10', '107');
INSERT INTO `psb_detailbiaya` VALUES ('4438', '7', '0', '5', '1', '107');
INSERT INTO `psb_detailbiaya` VALUES ('4439', '7', '0', '5', '2', '107');
INSERT INTO `psb_detailbiaya` VALUES ('4440', '7', '0', '5', '3', '107');
INSERT INTO `psb_detailbiaya` VALUES ('4441', '7', '0', '5', '4', '107');
INSERT INTO `psb_detailbiaya` VALUES ('4442', '7', '0', '5', '5', '107');
INSERT INTO `psb_detailbiaya` VALUES ('4443', '7', '0', '5', '6', '107');
INSERT INTO `psb_detailbiaya` VALUES ('4444', '7', '0', '5', '7', '107');
INSERT INTO `psb_detailbiaya` VALUES ('4445', '7', '0', '5', '9', '107');
INSERT INTO `psb_detailbiaya` VALUES ('4446', '7', '0', '5', '10', '107');
INSERT INTO `psb_detailbiaya` VALUES ('4447', '8', '0', '5', '1', '107');
INSERT INTO `psb_detailbiaya` VALUES ('4448', '8', '0', '5', '2', '107');
INSERT INTO `psb_detailbiaya` VALUES ('4449', '8', '0', '5', '3', '107');
INSERT INTO `psb_detailbiaya` VALUES ('4450', '8', '0', '5', '4', '107');
INSERT INTO `psb_detailbiaya` VALUES ('4451', '8', '0', '5', '5', '107');
INSERT INTO `psb_detailbiaya` VALUES ('4452', '8', '0', '5', '6', '107');
INSERT INTO `psb_detailbiaya` VALUES ('4453', '8', '0', '5', '7', '107');
INSERT INTO `psb_detailbiaya` VALUES ('4454', '8', '0', '5', '9', '107');
INSERT INTO `psb_detailbiaya` VALUES ('4455', '8', '0', '5', '10', '107');
INSERT INTO `psb_detailbiaya` VALUES ('4456', '4', '0', '5', '1', '107');
INSERT INTO `psb_detailbiaya` VALUES ('4457', '4', '0', '5', '2', '107');
INSERT INTO `psb_detailbiaya` VALUES ('4458', '4', '0', '5', '3', '107');
INSERT INTO `psb_detailbiaya` VALUES ('4459', '4', '0', '5', '4', '107');
INSERT INTO `psb_detailbiaya` VALUES ('4460', '4', '0', '5', '5', '107');
INSERT INTO `psb_detailbiaya` VALUES ('4461', '4', '0', '5', '6', '107');
INSERT INTO `psb_detailbiaya` VALUES ('4462', '4', '0', '5', '7', '107');
INSERT INTO `psb_detailbiaya` VALUES ('4463', '4', '0', '5', '9', '107');
INSERT INTO `psb_detailbiaya` VALUES ('4464', '4', '0', '5', '10', '107');
INSERT INTO `psb_detailbiaya` VALUES ('4465', '3', '0', '6', '1', '107');
INSERT INTO `psb_detailbiaya` VALUES ('4466', '3', '0', '6', '2', '107');
INSERT INTO `psb_detailbiaya` VALUES ('4467', '3', '0', '6', '3', '107');
INSERT INTO `psb_detailbiaya` VALUES ('4468', '3', '0', '6', '4', '107');
INSERT INTO `psb_detailbiaya` VALUES ('4469', '3', '0', '6', '5', '107');
INSERT INTO `psb_detailbiaya` VALUES ('4470', '3', '0', '6', '6', '107');
INSERT INTO `psb_detailbiaya` VALUES ('4471', '3', '0', '6', '7', '107');
INSERT INTO `psb_detailbiaya` VALUES ('4472', '3', '0', '6', '9', '107');
INSERT INTO `psb_detailbiaya` VALUES ('4473', '3', '0', '6', '10', '107');
INSERT INTO `psb_detailbiaya` VALUES ('4474', '7', '0', '6', '1', '107');
INSERT INTO `psb_detailbiaya` VALUES ('4475', '7', '0', '6', '2', '107');
INSERT INTO `psb_detailbiaya` VALUES ('4476', '7', '0', '6', '3', '107');
INSERT INTO `psb_detailbiaya` VALUES ('4477', '7', '0', '6', '4', '107');
INSERT INTO `psb_detailbiaya` VALUES ('4478', '7', '0', '6', '5', '107');
INSERT INTO `psb_detailbiaya` VALUES ('4479', '7', '0', '6', '6', '107');
INSERT INTO `psb_detailbiaya` VALUES ('4480', '7', '0', '6', '7', '107');
INSERT INTO `psb_detailbiaya` VALUES ('4481', '7', '0', '6', '9', '107');
INSERT INTO `psb_detailbiaya` VALUES ('4482', '7', '0', '6', '10', '107');
INSERT INTO `psb_detailbiaya` VALUES ('4483', '8', '0', '6', '1', '107');
INSERT INTO `psb_detailbiaya` VALUES ('4484', '8', '0', '6', '2', '107');
INSERT INTO `psb_detailbiaya` VALUES ('4485', '8', '0', '6', '3', '107');
INSERT INTO `psb_detailbiaya` VALUES ('4486', '8', '0', '6', '4', '107');
INSERT INTO `psb_detailbiaya` VALUES ('4487', '8', '0', '6', '5', '107');
INSERT INTO `psb_detailbiaya` VALUES ('4488', '8', '0', '6', '6', '107');
INSERT INTO `psb_detailbiaya` VALUES ('4489', '8', '0', '6', '7', '107');
INSERT INTO `psb_detailbiaya` VALUES ('4490', '8', '0', '6', '9', '107');
INSERT INTO `psb_detailbiaya` VALUES ('4491', '8', '0', '6', '10', '107');
INSERT INTO `psb_detailbiaya` VALUES ('4492', '4', '0', '6', '1', '107');
INSERT INTO `psb_detailbiaya` VALUES ('4493', '4', '0', '6', '2', '107');
INSERT INTO `psb_detailbiaya` VALUES ('4494', '4', '0', '6', '3', '107');
INSERT INTO `psb_detailbiaya` VALUES ('4495', '4', '0', '6', '4', '107');
INSERT INTO `psb_detailbiaya` VALUES ('4496', '4', '0', '6', '5', '107');
INSERT INTO `psb_detailbiaya` VALUES ('4497', '4', '0', '6', '6', '107');
INSERT INTO `psb_detailbiaya` VALUES ('4498', '4', '0', '6', '7', '107');
INSERT INTO `psb_detailbiaya` VALUES ('4499', '4', '0', '6', '9', '107');
INSERT INTO `psb_detailbiaya` VALUES ('4500', '4', '0', '6', '10', '107');
INSERT INTO `psb_detailbiaya` VALUES ('4501', '3', '0', '7', '1', '107');
INSERT INTO `psb_detailbiaya` VALUES ('4502', '3', '0', '7', '2', '107');
INSERT INTO `psb_detailbiaya` VALUES ('4503', '3', '0', '7', '3', '107');
INSERT INTO `psb_detailbiaya` VALUES ('4504', '3', '0', '7', '4', '107');
INSERT INTO `psb_detailbiaya` VALUES ('4505', '3', '0', '7', '5', '107');
INSERT INTO `psb_detailbiaya` VALUES ('4506', '3', '0', '7', '6', '107');
INSERT INTO `psb_detailbiaya` VALUES ('4507', '3', '0', '7', '7', '107');
INSERT INTO `psb_detailbiaya` VALUES ('4508', '3', '0', '7', '9', '107');
INSERT INTO `psb_detailbiaya` VALUES ('4509', '3', '0', '7', '10', '107');
INSERT INTO `psb_detailbiaya` VALUES ('4510', '7', '0', '7', '1', '107');
INSERT INTO `psb_detailbiaya` VALUES ('4511', '7', '0', '7', '2', '107');
INSERT INTO `psb_detailbiaya` VALUES ('4512', '7', '0', '7', '3', '107');
INSERT INTO `psb_detailbiaya` VALUES ('4513', '7', '0', '7', '4', '107');
INSERT INTO `psb_detailbiaya` VALUES ('4514', '7', '0', '7', '5', '107');
INSERT INTO `psb_detailbiaya` VALUES ('4515', '7', '0', '7', '6', '107');
INSERT INTO `psb_detailbiaya` VALUES ('4516', '7', '0', '7', '7', '107');
INSERT INTO `psb_detailbiaya` VALUES ('4517', '7', '0', '7', '9', '107');
INSERT INTO `psb_detailbiaya` VALUES ('4518', '7', '0', '7', '10', '107');
INSERT INTO `psb_detailbiaya` VALUES ('4519', '8', '0', '7', '1', '107');
INSERT INTO `psb_detailbiaya` VALUES ('4520', '8', '0', '7', '2', '107');
INSERT INTO `psb_detailbiaya` VALUES ('4521', '8', '0', '7', '3', '107');
INSERT INTO `psb_detailbiaya` VALUES ('4522', '8', '0', '7', '4', '107');
INSERT INTO `psb_detailbiaya` VALUES ('4523', '8', '0', '7', '5', '107');
INSERT INTO `psb_detailbiaya` VALUES ('4524', '8', '0', '7', '6', '107');
INSERT INTO `psb_detailbiaya` VALUES ('4525', '8', '0', '7', '7', '107');
INSERT INTO `psb_detailbiaya` VALUES ('4526', '8', '0', '7', '9', '107');
INSERT INTO `psb_detailbiaya` VALUES ('4527', '8', '0', '7', '10', '107');
INSERT INTO `psb_detailbiaya` VALUES ('4528', '4', '0', '7', '1', '107');
INSERT INTO `psb_detailbiaya` VALUES ('4529', '4', '0', '7', '2', '107');
INSERT INTO `psb_detailbiaya` VALUES ('4530', '4', '0', '7', '3', '107');
INSERT INTO `psb_detailbiaya` VALUES ('4531', '4', '0', '7', '4', '107');
INSERT INTO `psb_detailbiaya` VALUES ('4532', '4', '0', '7', '5', '107');
INSERT INTO `psb_detailbiaya` VALUES ('4533', '4', '0', '7', '6', '107');
INSERT INTO `psb_detailbiaya` VALUES ('4534', '4', '0', '7', '7', '107');
INSERT INTO `psb_detailbiaya` VALUES ('4535', '4', '0', '7', '9', '107');
INSERT INTO `psb_detailbiaya` VALUES ('4536', '4', '0', '7', '10', '107');
INSERT INTO `psb_detailbiaya` VALUES ('4537', '3', '0', '8', '1', '107');
INSERT INTO `psb_detailbiaya` VALUES ('4538', '3', '0', '8', '2', '107');
INSERT INTO `psb_detailbiaya` VALUES ('4539', '3', '0', '8', '3', '107');
INSERT INTO `psb_detailbiaya` VALUES ('4540', '3', '0', '8', '4', '107');
INSERT INTO `psb_detailbiaya` VALUES ('4541', '3', '0', '8', '5', '107');
INSERT INTO `psb_detailbiaya` VALUES ('4542', '3', '0', '8', '6', '107');
INSERT INTO `psb_detailbiaya` VALUES ('4543', '3', '0', '8', '7', '107');
INSERT INTO `psb_detailbiaya` VALUES ('4544', '3', '0', '8', '9', '107');
INSERT INTO `psb_detailbiaya` VALUES ('4545', '3', '0', '8', '10', '107');
INSERT INTO `psb_detailbiaya` VALUES ('4546', '7', '0', '8', '1', '107');
INSERT INTO `psb_detailbiaya` VALUES ('4547', '7', '0', '8', '2', '107');
INSERT INTO `psb_detailbiaya` VALUES ('4548', '7', '0', '8', '3', '107');
INSERT INTO `psb_detailbiaya` VALUES ('4549', '7', '0', '8', '4', '107');
INSERT INTO `psb_detailbiaya` VALUES ('4550', '7', '0', '8', '5', '107');
INSERT INTO `psb_detailbiaya` VALUES ('4551', '7', '0', '8', '6', '107');
INSERT INTO `psb_detailbiaya` VALUES ('4552', '7', '0', '8', '7', '107');
INSERT INTO `psb_detailbiaya` VALUES ('4553', '7', '0', '8', '9', '107');
INSERT INTO `psb_detailbiaya` VALUES ('4554', '7', '0', '8', '10', '107');
INSERT INTO `psb_detailbiaya` VALUES ('4555', '8', '0', '8', '1', '107');
INSERT INTO `psb_detailbiaya` VALUES ('4556', '8', '0', '8', '2', '107');
INSERT INTO `psb_detailbiaya` VALUES ('4557', '8', '0', '8', '3', '107');
INSERT INTO `psb_detailbiaya` VALUES ('4558', '8', '0', '8', '4', '107');
INSERT INTO `psb_detailbiaya` VALUES ('4559', '8', '0', '8', '5', '107');
INSERT INTO `psb_detailbiaya` VALUES ('4560', '8', '0', '8', '6', '107');
INSERT INTO `psb_detailbiaya` VALUES ('4561', '8', '0', '8', '7', '107');
INSERT INTO `psb_detailbiaya` VALUES ('4562', '8', '0', '8', '9', '107');
INSERT INTO `psb_detailbiaya` VALUES ('4563', '8', '0', '8', '10', '107');
INSERT INTO `psb_detailbiaya` VALUES ('4564', '4', '0', '8', '1', '107');
INSERT INTO `psb_detailbiaya` VALUES ('4565', '4', '0', '8', '2', '107');
INSERT INTO `psb_detailbiaya` VALUES ('4566', '4', '0', '8', '3', '107');
INSERT INTO `psb_detailbiaya` VALUES ('4567', '4', '0', '8', '4', '107');
INSERT INTO `psb_detailbiaya` VALUES ('4568', '4', '0', '8', '5', '107');
INSERT INTO `psb_detailbiaya` VALUES ('4569', '4', '0', '8', '6', '107');
INSERT INTO `psb_detailbiaya` VALUES ('4570', '4', '0', '8', '7', '107');
INSERT INTO `psb_detailbiaya` VALUES ('4571', '4', '0', '8', '9', '107');
INSERT INTO `psb_detailbiaya` VALUES ('4572', '4', '0', '8', '10', '107');
INSERT INTO `psb_detailbiaya` VALUES ('4573', '3', '0', '4', '1', '108');
INSERT INTO `psb_detailbiaya` VALUES ('4574', '3', '0', '4', '2', '108');
INSERT INTO `psb_detailbiaya` VALUES ('4575', '3', '0', '4', '3', '108');
INSERT INTO `psb_detailbiaya` VALUES ('4576', '3', '0', '4', '4', '108');
INSERT INTO `psb_detailbiaya` VALUES ('4577', '3', '0', '4', '5', '108');
INSERT INTO `psb_detailbiaya` VALUES ('4578', '3', '0', '4', '6', '108');
INSERT INTO `psb_detailbiaya` VALUES ('4579', '3', '0', '4', '7', '108');
INSERT INTO `psb_detailbiaya` VALUES ('4580', '3', '0', '4', '9', '108');
INSERT INTO `psb_detailbiaya` VALUES ('4581', '3', '0', '4', '10', '108');
INSERT INTO `psb_detailbiaya` VALUES ('4582', '7', '0', '4', '1', '108');
INSERT INTO `psb_detailbiaya` VALUES ('4583', '7', '0', '4', '2', '108');
INSERT INTO `psb_detailbiaya` VALUES ('4584', '7', '0', '4', '3', '108');
INSERT INTO `psb_detailbiaya` VALUES ('4585', '7', '0', '4', '4', '108');
INSERT INTO `psb_detailbiaya` VALUES ('4586', '7', '0', '4', '5', '108');
INSERT INTO `psb_detailbiaya` VALUES ('4587', '7', '0', '4', '6', '108');
INSERT INTO `psb_detailbiaya` VALUES ('4588', '7', '0', '4', '7', '108');
INSERT INTO `psb_detailbiaya` VALUES ('4589', '7', '0', '4', '9', '108');
INSERT INTO `psb_detailbiaya` VALUES ('4590', '7', '0', '4', '10', '108');
INSERT INTO `psb_detailbiaya` VALUES ('4591', '8', '0', '4', '1', '108');
INSERT INTO `psb_detailbiaya` VALUES ('4592', '8', '0', '4', '2', '108');
INSERT INTO `psb_detailbiaya` VALUES ('4593', '8', '0', '4', '3', '108');
INSERT INTO `psb_detailbiaya` VALUES ('4594', '8', '0', '4', '4', '108');
INSERT INTO `psb_detailbiaya` VALUES ('4595', '8', '0', '4', '5', '108');
INSERT INTO `psb_detailbiaya` VALUES ('4596', '8', '0', '4', '6', '108');
INSERT INTO `psb_detailbiaya` VALUES ('4597', '8', '0', '4', '7', '108');
INSERT INTO `psb_detailbiaya` VALUES ('4598', '8', '0', '4', '9', '108');
INSERT INTO `psb_detailbiaya` VALUES ('4599', '8', '0', '4', '10', '108');
INSERT INTO `psb_detailbiaya` VALUES ('4600', '4', '0', '4', '1', '108');
INSERT INTO `psb_detailbiaya` VALUES ('4601', '4', '0', '4', '2', '108');
INSERT INTO `psb_detailbiaya` VALUES ('4602', '4', '0', '4', '3', '108');
INSERT INTO `psb_detailbiaya` VALUES ('4603', '4', '0', '4', '4', '108');
INSERT INTO `psb_detailbiaya` VALUES ('4604', '4', '0', '4', '5', '108');
INSERT INTO `psb_detailbiaya` VALUES ('4605', '4', '0', '4', '6', '108');
INSERT INTO `psb_detailbiaya` VALUES ('4606', '4', '0', '4', '7', '108');
INSERT INTO `psb_detailbiaya` VALUES ('4607', '4', '0', '4', '9', '108');
INSERT INTO `psb_detailbiaya` VALUES ('4608', '4', '0', '4', '10', '108');
INSERT INTO `psb_detailbiaya` VALUES ('4609', '3', '0', '5', '1', '108');
INSERT INTO `psb_detailbiaya` VALUES ('4610', '3', '0', '5', '2', '108');
INSERT INTO `psb_detailbiaya` VALUES ('4611', '3', '0', '5', '3', '108');
INSERT INTO `psb_detailbiaya` VALUES ('4612', '3', '0', '5', '4', '108');
INSERT INTO `psb_detailbiaya` VALUES ('4613', '3', '0', '5', '5', '108');
INSERT INTO `psb_detailbiaya` VALUES ('4614', '3', '0', '5', '6', '108');
INSERT INTO `psb_detailbiaya` VALUES ('4615', '3', '0', '5', '7', '108');
INSERT INTO `psb_detailbiaya` VALUES ('4616', '3', '0', '5', '9', '108');
INSERT INTO `psb_detailbiaya` VALUES ('4617', '3', '0', '5', '10', '108');
INSERT INTO `psb_detailbiaya` VALUES ('4618', '7', '0', '5', '1', '108');
INSERT INTO `psb_detailbiaya` VALUES ('4619', '7', '0', '5', '2', '108');
INSERT INTO `psb_detailbiaya` VALUES ('4620', '7', '0', '5', '3', '108');
INSERT INTO `psb_detailbiaya` VALUES ('4621', '7', '0', '5', '4', '108');
INSERT INTO `psb_detailbiaya` VALUES ('4622', '7', '0', '5', '5', '108');
INSERT INTO `psb_detailbiaya` VALUES ('4623', '7', '0', '5', '6', '108');
INSERT INTO `psb_detailbiaya` VALUES ('4624', '7', '0', '5', '7', '108');
INSERT INTO `psb_detailbiaya` VALUES ('4625', '7', '0', '5', '9', '108');
INSERT INTO `psb_detailbiaya` VALUES ('4626', '7', '0', '5', '10', '108');
INSERT INTO `psb_detailbiaya` VALUES ('4627', '8', '0', '5', '1', '108');
INSERT INTO `psb_detailbiaya` VALUES ('4628', '8', '0', '5', '2', '108');
INSERT INTO `psb_detailbiaya` VALUES ('4629', '8', '0', '5', '3', '108');
INSERT INTO `psb_detailbiaya` VALUES ('4630', '8', '0', '5', '4', '108');
INSERT INTO `psb_detailbiaya` VALUES ('4631', '8', '0', '5', '5', '108');
INSERT INTO `psb_detailbiaya` VALUES ('4632', '8', '0', '5', '6', '108');
INSERT INTO `psb_detailbiaya` VALUES ('4633', '8', '0', '5', '7', '108');
INSERT INTO `psb_detailbiaya` VALUES ('4634', '8', '0', '5', '9', '108');
INSERT INTO `psb_detailbiaya` VALUES ('4635', '8', '0', '5', '10', '108');
INSERT INTO `psb_detailbiaya` VALUES ('4636', '4', '0', '5', '1', '108');
INSERT INTO `psb_detailbiaya` VALUES ('4637', '4', '0', '5', '2', '108');
INSERT INTO `psb_detailbiaya` VALUES ('4638', '4', '0', '5', '3', '108');
INSERT INTO `psb_detailbiaya` VALUES ('4639', '4', '0', '5', '4', '108');
INSERT INTO `psb_detailbiaya` VALUES ('4640', '4', '0', '5', '5', '108');
INSERT INTO `psb_detailbiaya` VALUES ('4641', '4', '0', '5', '6', '108');
INSERT INTO `psb_detailbiaya` VALUES ('4642', '4', '0', '5', '7', '108');
INSERT INTO `psb_detailbiaya` VALUES ('4643', '4', '0', '5', '9', '108');
INSERT INTO `psb_detailbiaya` VALUES ('4644', '4', '0', '5', '10', '108');
INSERT INTO `psb_detailbiaya` VALUES ('4645', '3', '0', '6', '1', '108');
INSERT INTO `psb_detailbiaya` VALUES ('4646', '3', '0', '6', '2', '108');
INSERT INTO `psb_detailbiaya` VALUES ('4647', '3', '0', '6', '3', '108');
INSERT INTO `psb_detailbiaya` VALUES ('4648', '3', '0', '6', '4', '108');
INSERT INTO `psb_detailbiaya` VALUES ('4649', '3', '0', '6', '5', '108');
INSERT INTO `psb_detailbiaya` VALUES ('4650', '3', '0', '6', '6', '108');
INSERT INTO `psb_detailbiaya` VALUES ('4651', '3', '0', '6', '7', '108');
INSERT INTO `psb_detailbiaya` VALUES ('4652', '3', '0', '6', '9', '108');
INSERT INTO `psb_detailbiaya` VALUES ('4653', '3', '0', '6', '10', '108');
INSERT INTO `psb_detailbiaya` VALUES ('4654', '7', '0', '6', '1', '108');
INSERT INTO `psb_detailbiaya` VALUES ('4655', '7', '0', '6', '2', '108');
INSERT INTO `psb_detailbiaya` VALUES ('4656', '7', '0', '6', '3', '108');
INSERT INTO `psb_detailbiaya` VALUES ('4657', '7', '0', '6', '4', '108');
INSERT INTO `psb_detailbiaya` VALUES ('4658', '7', '0', '6', '5', '108');
INSERT INTO `psb_detailbiaya` VALUES ('4659', '7', '0', '6', '6', '108');
INSERT INTO `psb_detailbiaya` VALUES ('4660', '7', '0', '6', '7', '108');
INSERT INTO `psb_detailbiaya` VALUES ('4661', '7', '0', '6', '9', '108');
INSERT INTO `psb_detailbiaya` VALUES ('4662', '7', '0', '6', '10', '108');
INSERT INTO `psb_detailbiaya` VALUES ('4663', '8', '0', '6', '1', '108');
INSERT INTO `psb_detailbiaya` VALUES ('4664', '8', '0', '6', '2', '108');
INSERT INTO `psb_detailbiaya` VALUES ('4665', '8', '0', '6', '3', '108');
INSERT INTO `psb_detailbiaya` VALUES ('4666', '8', '0', '6', '4', '108');
INSERT INTO `psb_detailbiaya` VALUES ('4667', '8', '0', '6', '5', '108');
INSERT INTO `psb_detailbiaya` VALUES ('4668', '8', '0', '6', '6', '108');
INSERT INTO `psb_detailbiaya` VALUES ('4669', '8', '0', '6', '7', '108');
INSERT INTO `psb_detailbiaya` VALUES ('4670', '8', '0', '6', '9', '108');
INSERT INTO `psb_detailbiaya` VALUES ('4671', '8', '0', '6', '10', '108');
INSERT INTO `psb_detailbiaya` VALUES ('4672', '4', '0', '6', '1', '108');
INSERT INTO `psb_detailbiaya` VALUES ('4673', '4', '0', '6', '2', '108');
INSERT INTO `psb_detailbiaya` VALUES ('4674', '4', '0', '6', '3', '108');
INSERT INTO `psb_detailbiaya` VALUES ('4675', '4', '0', '6', '4', '108');
INSERT INTO `psb_detailbiaya` VALUES ('4676', '4', '0', '6', '5', '108');
INSERT INTO `psb_detailbiaya` VALUES ('4677', '4', '0', '6', '6', '108');
INSERT INTO `psb_detailbiaya` VALUES ('4678', '4', '0', '6', '7', '108');
INSERT INTO `psb_detailbiaya` VALUES ('4679', '4', '0', '6', '9', '108');
INSERT INTO `psb_detailbiaya` VALUES ('4680', '4', '0', '6', '10', '108');
INSERT INTO `psb_detailbiaya` VALUES ('4681', '3', '0', '7', '1', '108');
INSERT INTO `psb_detailbiaya` VALUES ('4682', '3', '0', '7', '2', '108');
INSERT INTO `psb_detailbiaya` VALUES ('4683', '3', '0', '7', '3', '108');
INSERT INTO `psb_detailbiaya` VALUES ('4684', '3', '0', '7', '4', '108');
INSERT INTO `psb_detailbiaya` VALUES ('4685', '3', '0', '7', '5', '108');
INSERT INTO `psb_detailbiaya` VALUES ('4686', '3', '0', '7', '6', '108');
INSERT INTO `psb_detailbiaya` VALUES ('4687', '3', '0', '7', '7', '108');
INSERT INTO `psb_detailbiaya` VALUES ('4688', '3', '0', '7', '9', '108');
INSERT INTO `psb_detailbiaya` VALUES ('4689', '3', '0', '7', '10', '108');
INSERT INTO `psb_detailbiaya` VALUES ('4690', '7', '0', '7', '1', '108');
INSERT INTO `psb_detailbiaya` VALUES ('4691', '7', '0', '7', '2', '108');
INSERT INTO `psb_detailbiaya` VALUES ('4692', '7', '0', '7', '3', '108');
INSERT INTO `psb_detailbiaya` VALUES ('4693', '7', '0', '7', '4', '108');
INSERT INTO `psb_detailbiaya` VALUES ('4694', '7', '0', '7', '5', '108');
INSERT INTO `psb_detailbiaya` VALUES ('4695', '7', '0', '7', '6', '108');
INSERT INTO `psb_detailbiaya` VALUES ('4696', '7', '0', '7', '7', '108');
INSERT INTO `psb_detailbiaya` VALUES ('4697', '7', '0', '7', '9', '108');
INSERT INTO `psb_detailbiaya` VALUES ('4698', '7', '0', '7', '10', '108');
INSERT INTO `psb_detailbiaya` VALUES ('4699', '8', '0', '7', '1', '108');
INSERT INTO `psb_detailbiaya` VALUES ('4700', '8', '0', '7', '2', '108');
INSERT INTO `psb_detailbiaya` VALUES ('4701', '8', '0', '7', '3', '108');
INSERT INTO `psb_detailbiaya` VALUES ('4702', '8', '0', '7', '4', '108');
INSERT INTO `psb_detailbiaya` VALUES ('4703', '8', '0', '7', '5', '108');
INSERT INTO `psb_detailbiaya` VALUES ('4704', '8', '0', '7', '6', '108');
INSERT INTO `psb_detailbiaya` VALUES ('4705', '8', '0', '7', '7', '108');
INSERT INTO `psb_detailbiaya` VALUES ('4706', '8', '0', '7', '9', '108');
INSERT INTO `psb_detailbiaya` VALUES ('4707', '8', '0', '7', '10', '108');
INSERT INTO `psb_detailbiaya` VALUES ('4708', '4', '0', '7', '1', '108');
INSERT INTO `psb_detailbiaya` VALUES ('4709', '4', '0', '7', '2', '108');
INSERT INTO `psb_detailbiaya` VALUES ('4710', '4', '0', '7', '3', '108');
INSERT INTO `psb_detailbiaya` VALUES ('4711', '4', '0', '7', '4', '108');
INSERT INTO `psb_detailbiaya` VALUES ('4712', '4', '0', '7', '5', '108');
INSERT INTO `psb_detailbiaya` VALUES ('4713', '4', '0', '7', '6', '108');
INSERT INTO `psb_detailbiaya` VALUES ('4714', '4', '0', '7', '7', '108');
INSERT INTO `psb_detailbiaya` VALUES ('4715', '4', '0', '7', '9', '108');
INSERT INTO `psb_detailbiaya` VALUES ('4716', '4', '0', '7', '10', '108');
INSERT INTO `psb_detailbiaya` VALUES ('4717', '3', '0', '8', '1', '108');
INSERT INTO `psb_detailbiaya` VALUES ('4718', '3', '0', '8', '2', '108');
INSERT INTO `psb_detailbiaya` VALUES ('4719', '3', '0', '8', '3', '108');
INSERT INTO `psb_detailbiaya` VALUES ('4720', '3', '0', '8', '4', '108');
INSERT INTO `psb_detailbiaya` VALUES ('4721', '3', '0', '8', '5', '108');
INSERT INTO `psb_detailbiaya` VALUES ('4722', '3', '0', '8', '6', '108');
INSERT INTO `psb_detailbiaya` VALUES ('4723', '3', '0', '8', '7', '108');
INSERT INTO `psb_detailbiaya` VALUES ('4724', '3', '0', '8', '9', '108');
INSERT INTO `psb_detailbiaya` VALUES ('4725', '3', '0', '8', '10', '108');
INSERT INTO `psb_detailbiaya` VALUES ('4726', '7', '0', '8', '1', '108');
INSERT INTO `psb_detailbiaya` VALUES ('4727', '7', '0', '8', '2', '108');
INSERT INTO `psb_detailbiaya` VALUES ('4728', '7', '0', '8', '3', '108');
INSERT INTO `psb_detailbiaya` VALUES ('4729', '7', '0', '8', '4', '108');
INSERT INTO `psb_detailbiaya` VALUES ('4730', '7', '0', '8', '5', '108');
INSERT INTO `psb_detailbiaya` VALUES ('4731', '7', '0', '8', '6', '108');
INSERT INTO `psb_detailbiaya` VALUES ('4732', '7', '0', '8', '7', '108');
INSERT INTO `psb_detailbiaya` VALUES ('4733', '7', '0', '8', '9', '108');
INSERT INTO `psb_detailbiaya` VALUES ('4734', '7', '0', '8', '10', '108');
INSERT INTO `psb_detailbiaya` VALUES ('4735', '8', '0', '8', '1', '108');
INSERT INTO `psb_detailbiaya` VALUES ('4736', '8', '0', '8', '2', '108');
INSERT INTO `psb_detailbiaya` VALUES ('4737', '8', '0', '8', '3', '108');
INSERT INTO `psb_detailbiaya` VALUES ('4738', '8', '0', '8', '4', '108');
INSERT INTO `psb_detailbiaya` VALUES ('4739', '8', '0', '8', '5', '108');
INSERT INTO `psb_detailbiaya` VALUES ('4740', '8', '0', '8', '6', '108');
INSERT INTO `psb_detailbiaya` VALUES ('4741', '8', '0', '8', '7', '108');
INSERT INTO `psb_detailbiaya` VALUES ('4742', '8', '0', '8', '9', '108');
INSERT INTO `psb_detailbiaya` VALUES ('4743', '8', '0', '8', '10', '108');
INSERT INTO `psb_detailbiaya` VALUES ('4744', '4', '0', '8', '1', '108');
INSERT INTO `psb_detailbiaya` VALUES ('4745', '4', '0', '8', '2', '108');
INSERT INTO `psb_detailbiaya` VALUES ('4746', '4', '0', '8', '3', '108');
INSERT INTO `psb_detailbiaya` VALUES ('4747', '4', '0', '8', '4', '108');
INSERT INTO `psb_detailbiaya` VALUES ('4748', '4', '0', '8', '5', '108');
INSERT INTO `psb_detailbiaya` VALUES ('4749', '4', '0', '8', '6', '108');
INSERT INTO `psb_detailbiaya` VALUES ('4750', '4', '0', '8', '7', '108');
INSERT INTO `psb_detailbiaya` VALUES ('4751', '4', '0', '8', '9', '108');
INSERT INTO `psb_detailbiaya` VALUES ('4752', '4', '0', '8', '10', '108');

-- ----------------------------
-- Table structure for psb_detaildiskon
-- ----------------------------
DROP TABLE IF EXISTS `psb_detaildiskon`;
CREATE TABLE `psb_detaildiskon` (
  `replid` int(11) NOT NULL AUTO_INCREMENT,
  `diskon` int(11) NOT NULL DEFAULT '0',
  `nilai` float(5,0) NOT NULL,
  `tahunajaran` int(11) NOT NULL,
  `isAktif` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`replid`),
  KEY `tahunajaran` (`tahunajaran`) USING BTREE,
  KEY `diskon` (`diskon`) USING BTREE,
  CONSTRAINT `diskonFK` FOREIGN KEY (`diskon`) REFERENCES `psb_diskon` (`replid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tahunajaranFK` FOREIGN KEY (`tahunajaran`) REFERENCES `aka_tahunajaran` (`replid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of psb_detaildiskon
-- ----------------------------
INSERT INTO `psb_detaildiskon` VALUES ('1', '32', '0', '3', '1');
INSERT INTO `psb_detaildiskon` VALUES ('2', '32', '20', '5', '1');
INSERT INTO `psb_detaildiskon` VALUES ('3', '33', '0', '3', '1');
INSERT INTO `psb_detaildiskon` VALUES ('4', '33', '0', '5', '1');
INSERT INTO `psb_detaildiskon` VALUES ('5', '34', '0', '3', '1');
INSERT INTO `psb_detaildiskon` VALUES ('6', '34', '0', '5', '1');
INSERT INTO `psb_detaildiskon` VALUES ('7', '35', '0', '3', '1');
INSERT INTO `psb_detaildiskon` VALUES ('8', '35', '30', '5', '1');
INSERT INTO `psb_detaildiskon` VALUES ('9', '36', '0', '3', '1');
INSERT INTO `psb_detaildiskon` VALUES ('10', '36', '0', '5', '1');
INSERT INTO `psb_detaildiskon` VALUES ('11', '37', '0', '3', '1');
INSERT INTO `psb_detaildiskon` VALUES ('12', '37', '10', '5', '1');
INSERT INTO `psb_detaildiskon` VALUES ('13', '38', '0', '3', '1');
INSERT INTO `psb_detaildiskon` VALUES ('14', '38', '20', '5', '1');
INSERT INTO `psb_detaildiskon` VALUES ('15', '39', '0', '3', '1');
INSERT INTO `psb_detaildiskon` VALUES ('16', '39', '0', '5', '1');
INSERT INTO `psb_detaildiskon` VALUES ('19', '41', '0', '3', '1');
INSERT INTO `psb_detaildiskon` VALUES ('20', '41', '0', '5', '1');
INSERT INTO `psb_detaildiskon` VALUES ('21', '42', '0', '3', '1');
INSERT INTO `psb_detaildiskon` VALUES ('22', '42', '5', '5', '1');
INSERT INTO `psb_detaildiskon` VALUES ('23', '43', '0', '3', '1');
INSERT INTO `psb_detaildiskon` VALUES ('24', '43', '0', '5', '1');
INSERT INTO `psb_detaildiskon` VALUES ('25', '44', '0', '3', '1');
INSERT INTO `psb_detaildiskon` VALUES ('26', '44', '15', '5', '1');
INSERT INTO `psb_detaildiskon` VALUES ('27', '45', '0', '3', '1');
INSERT INTO `psb_detaildiskon` VALUES ('28', '45', '0', '5', '1');
INSERT INTO `psb_detaildiskon` VALUES ('29', '46', '0', '3', '1');
INSERT INTO `psb_detaildiskon` VALUES ('30', '46', '25', '5', '1');
INSERT INTO `psb_detaildiskon` VALUES ('31', '47', '0', '3', '1');
INSERT INTO `psb_detaildiskon` VALUES ('32', '47', '0', '5', '1');
INSERT INTO `psb_detaildiskon` VALUES ('33', '48', '0', '3', '1');
INSERT INTO `psb_detaildiskon` VALUES ('34', '48', '20', '5', '1');
INSERT INTO `psb_detaildiskon` VALUES ('35', '49', '0', '3', '1');
INSERT INTO `psb_detaildiskon` VALUES ('36', '49', '10', '5', '1');

-- ----------------------------
-- Table structure for psb_detailgelombang
-- ----------------------------
DROP TABLE IF EXISTS `psb_detailgelombang`;
CREATE TABLE `psb_detailgelombang` (
  `replid` int(11) NOT NULL AUTO_INCREMENT,
  `gelombang` int(11) NOT NULL,
  `departemen` int(11) NOT NULL,
  `tahunajaran` int(11) NOT NULL,
  `tglmulai` date NOT NULL DEFAULT '0000-00-00',
  `tglselesai` date NOT NULL DEFAULT '0000-00-00',
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`replid`),
  KEY `gelombang` (`gelombang`) USING BTREE,
  KEY `departemen` (`departemen`) USING BTREE,
  KEY `tahunajaran` (`tahunajaran`) USING BTREE,
  KEY `tahunajaran_2` (`tahunajaran`),
  KEY `departemen_2` (`departemen`),
  CONSTRAINT `departemenFK` FOREIGN KEY (`departemen`) REFERENCES `departemen` (`replid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `gelombangFK` FOREIGN KEY (`gelombang`) REFERENCES `psb_gelombang` (`replid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tahunajaranFK3` FOREIGN KEY (`tahunajaran`) REFERENCES `aka_tahunajaran` (`replid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of psb_detailgelombang
-- ----------------------------
INSERT INTO `psb_detailgelombang` VALUES ('97', '1', '1', '3', '0000-00-00', '0000-00-00', '2015-09-02 06:00:59');
INSERT INTO `psb_detailgelombang` VALUES ('98', '1', '1', '5', '0000-00-00', '0000-00-00', '2015-09-02 06:00:59');
INSERT INTO `psb_detailgelombang` VALUES ('99', '1', '2', '3', '0000-00-00', '0000-00-00', '2015-09-02 06:00:59');
INSERT INTO `psb_detailgelombang` VALUES ('100', '1', '2', '5', '0000-00-00', '0000-00-00', '2015-09-02 06:00:59');
INSERT INTO `psb_detailgelombang` VALUES ('101', '1', '3', '3', '0000-00-00', '0000-00-00', '2015-09-02 06:00:59');
INSERT INTO `psb_detailgelombang` VALUES ('102', '1', '3', '5', '0000-00-00', '0000-00-00', '2015-09-02 06:00:59');
INSERT INTO `psb_detailgelombang` VALUES ('103', '2', '1', '3', '0000-00-00', '0000-00-00', '2015-09-02 06:14:20');
INSERT INTO `psb_detailgelombang` VALUES ('104', '2', '1', '5', '0000-00-00', '0000-00-00', '2015-09-02 06:14:20');
INSERT INTO `psb_detailgelombang` VALUES ('105', '2', '2', '3', '0000-00-00', '0000-00-00', '2015-09-02 06:14:20');
INSERT INTO `psb_detailgelombang` VALUES ('106', '2', '2', '5', '0000-00-00', '0000-00-00', '2015-09-02 06:14:20');
INSERT INTO `psb_detailgelombang` VALUES ('107', '2', '3', '3', '0000-00-00', '0000-00-00', '2015-09-02 06:14:20');
INSERT INTO `psb_detailgelombang` VALUES ('108', '2', '3', '5', '0000-00-00', '0000-00-00', '2015-09-02 06:14:20');

-- ----------------------------
-- Table structure for psb_diskon
-- ----------------------------
DROP TABLE IF EXISTS `psb_diskon`;
CREATE TABLE `psb_diskon` (
  `replid` int(11) NOT NULL AUTO_INCREMENT,
  `departemen` int(11) NOT NULL,
  `biaya` int(11) NOT NULL,
  `diskon` varchar(50) NOT NULL DEFAULT '',
  `keterangan` text NOT NULL,
  PRIMARY KEY (`replid`),
  KEY `departemen` (`departemen`) USING BTREE,
  KEY `biaya` (`biaya`) USING BTREE,
  CONSTRAINT `biayaFK4` FOREIGN KEY (`biaya`) REFERENCES `psb_biaya` (`replid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `departemenFK3` FOREIGN KEY (`departemen`) REFERENCES `departemen` (`replid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of psb_diskon
-- ----------------------------
INSERT INTO `psb_diskon` VALUES ('32', '1', '4', 'jemaat GKA', 'second intake');
INSERT INTO `psb_diskon` VALUES ('33', '1', '7', 'anak ke-3', 'untuk anak ke 3 berdasarkan urutan kelahiran');
INSERT INTO `psb_diskon` VALUES ('34', '1', '7', 'jemaat GKA Elyon', '- anak ke 3 berdasarkan urutan kelahiran \r\n- ortu jemaat aktif GKA Elyon \r\n- anak sekolah minggu aktif GKA Elyon');
INSERT INTO `psb_diskon` VALUES ('35', '1', '4', 'anak ke-2', 'anak ke 2 berdasarkan urutan kelahiran dan selanjutnya ');
INSERT INTO `psb_diskon` VALUES ('36', '1', '7', 'anak ke-2', 'untuk urutan kelahiran anak ke-2 dst');
INSERT INTO `psb_diskon` VALUES ('37', '1', '4', 'hamba Tuhan', '- hamba Tuhan di selain GKA Elyon\r\n- Calon Siswa Baru Secondary\r\n- Guru full timer,staff,Kepsek, dengan masa kerja kurang dari 2 th');
INSERT INTO `psb_diskon` VALUES ('38', '1', '4', 'anak ke-4', '- First Intake\r\n- Siswa Baru High School ');
INSERT INTO `psb_diskon` VALUES ('39', '1', '7', 'anak ke-4', '- anak ke 4 sesuai urutan kelahiran\r\n- High School 2 th ajaran\r\n- secondary suko 1 th ajaran');
INSERT INTO `psb_diskon` VALUES ('41', '1', '7', 'first intake naik tingkat', 'first intake naik tingkat');
INSERT INTO `psb_diskon` VALUES ('42', '1', '4', 'Jarpres', 'siswa jalur prestasi');
INSERT INTO `psb_diskon` VALUES ('43', '1', '7', 'jarpres', 'siswa jalur prestasi');
INSERT INTO `psb_diskon` VALUES ('44', '1', '4', 'pengurus', 'pengurus PPK Elyon, Hamba Tuhan GKA Elyon, Guru Full Timer, Staff, Kepsek');
INSERT INTO `psb_diskon` VALUES ('45', '1', '7', 'pengurus', 'pengurus PPK Elyon, Hamba Tuhan GKA Elyon, Guru Full Timer, Staff, Kepsek');
INSERT INTO `psb_diskon` VALUES ('46', '1', '4', 'second intake', 'second intake untuk siswa dalam ');
INSERT INTO `psb_diskon` VALUES ('47', '1', '7', 'diskon xxx', '- ortu jemaat \r\n- anak sekolah minggu ELYON\r\n- secondary rungkut 2 th ajaran \r\n- Permohonan khusus melalui disposisi untuk siswa baru yg memiliki sibling');
INSERT INTO `psb_diskon` VALUES ('48', '1', '8', 'anak ke-2', 'ok');
INSERT INTO `psb_diskon` VALUES ('49', '1', '8', 'anak ke-4', 'sip');

-- ----------------------------
-- Table structure for psb_dokumen
-- ----------------------------
DROP TABLE IF EXISTS `psb_dokumen`;
CREATE TABLE `psb_dokumen` (
  `replid` int(11) NOT NULL AUTO_INCREMENT,
  `dokumen` text NOT NULL,
  PRIMARY KEY (`replid`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of psb_dokumen
-- ----------------------------
INSERT INTO `psb_dokumen` VALUES ('11', 'Fotokopi Kartu Keluarga (KK) ortu');
INSERT INTO `psb_dokumen` VALUES ('12', 'Fotokopi KTP (ayah/ibu)');
INSERT INTO `psb_dokumen` VALUES ('13', 'Copy Rapor :\r\n- Calon KG-A -&gt; PG (jika ada)\r\n- Calon KG-B -&gt; KG-A\r\n- Calon Primary 1 -&gt; KG ');
INSERT INTO `psb_dokumen` VALUES ('14', 'Rapor asli bagi siswa mutasi ');

-- ----------------------------
-- Table structure for psb_gelombang
-- ----------------------------
DROP TABLE IF EXISTS `psb_gelombang`;
CREATE TABLE `psb_gelombang` (
  `replid` int(11) NOT NULL AUTO_INCREMENT,
  `gelombang` varchar(100) NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `urutan` int(11) NOT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`replid`),
  KEY `IX_kelompokcalonsiswa_ts` (`ts`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of psb_gelombang
-- ----------------------------
INSERT INTO `psb_gelombang` VALUES ('1', 'First Intake', 'gelombang pendaftaran pertama ', '1', '2015-09-02 06:00:59');
INSERT INTO `psb_gelombang` VALUES ('2', 'Second Intake', 'gelombang pendaftaran kedua', '2', '2015-09-02 06:14:20');

-- ----------------------------
-- Table structure for psb_golongan
-- ----------------------------
DROP TABLE IF EXISTS `psb_golongan`;
CREATE TABLE `psb_golongan` (
  `replid` int(11) NOT NULL AUTO_INCREMENT,
  `golongan` varchar(150) DEFAULT NULL,
  `keterangan` varchar(250) DEFAULT NULL,
  `urutan` int(10) unsigned DEFAULT '1',
  UNIQUE KEY `replid` (`replid`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of psb_golongan
-- ----------------------------
INSERT INTO `psb_golongan` VALUES ('1', 'Anak Guru &amp; Staf ', 'Anak guru, staf, karyawan aktif Elyon dengan masa kerja lebih dari 2 tahun ', '1');
INSERT INTO `psb_golongan` VALUES ('2', 'Umum', 'Masyarakat umum', '2');
INSERT INTO `psb_golongan` VALUES ('3', 'Ortu Jemaat Elyon', 'Anggota jemaat GKA Elyon', '3');
INSERT INTO `psb_golongan` VALUES ('4', 'Anak Hamba Tuhan', 'Anak hamba Tuhan, Pendeta aktif dari gereja lain.', '4');
INSERT INTO `psb_golongan` VALUES ('5', 'Anak Pengurus PPKE', 'Anak Pengurus aktif dari Perhimpunan Pendidikan Kristen Elyon', '5');
INSERT INTO `psb_golongan` VALUES ('6', 'Jalur Prestasi', 'Akademik, sports, musik', '6');
INSERT INTO `psb_golongan` VALUES ('7', 'Anak Guru & Staf', 'Anak guru, staf, karyawan aktif Elyon dengan masa kerja kurang dan sama dengan 2 tahun', '7');
INSERT INTO `psb_golongan` VALUES ('9', 'Anak SM Elyon', 'Anggota jemaat GKA Elyon', '8');
INSERT INTO `psb_golongan` VALUES ('10', 'Ortu &amp; Anak Jemaat Elyon', 'Anggota jemaat GKA Elyon', '9');

-- ----------------------------
-- Table structure for psb_jenistagihan
-- ----------------------------
DROP TABLE IF EXISTS `psb_jenistagihan`;
CREATE TABLE `psb_jenistagihan` (
  `replid` int(11) NOT NULL AUTO_INCREMENT,
  `jenistagihan` varchar(100) NOT NULL,
  `keterangan` text NOT NULL,
  `urutan` int(11) NOT NULL,
  PRIMARY KEY (`replid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of psb_jenistagihan
-- ----------------------------
INSERT INTO `psb_jenistagihan` VALUES ('1', 'sekali', 'sekali', '1');
INSERT INTO `psb_jenistagihan` VALUES ('2', 'hari', 'per hari', '2');
INSERT INTO `psb_jenistagihan` VALUES ('3', 'minggu', 'per minggu', '3');
INSERT INTO `psb_jenistagihan` VALUES ('4', 'bulan', 'per bulan', '4');
INSERT INTO `psb_jenistagihan` VALUES ('5', 'semester', 'per semester', '5');
INSERT INTO `psb_jenistagihan` VALUES ('6', 'tahun', 'per tahun', '6');

-- ----------------------------
-- Table structure for psb_kondisisiswa
-- ----------------------------
DROP TABLE IF EXISTS `psb_kondisisiswa`;
CREATE TABLE `psb_kondisisiswa` (
  `replid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `kondisi` varchar(100) NOT NULL,
  `urutan` tinyint(2) unsigned NOT NULL,
  PRIMARY KEY (`replid`),
  UNIQUE KEY `UX_kondisisiswa` (`replid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of psb_kondisisiswa
-- ----------------------------

-- ----------------------------
-- Table structure for psb_kriteria
-- ----------------------------
DROP TABLE IF EXISTS `psb_kriteria`;
CREATE TABLE `psb_kriteria` (
  `replid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `kriteria` varchar(150) DEFAULT NULL,
  `keterangan` varchar(250) DEFAULT NULL,
  `urut` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`replid`),
  UNIQUE KEY `replid` (`replid`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of psb_kriteria
-- ----------------------------
INSERT INTO `psb_kriteria` VALUES ('1', 'Toddler', 'Usia diatas 1 tahun', '1');
INSERT INTO `psb_kriteria` VALUES ('23', 'High School 2', 'Usia 16 Tahun', '1');
INSERT INTO `psb_kriteria` VALUES ('5', 'Secondary 3', 'Usia 14 tahun', '1');
INSERT INTO `psb_kriteria` VALUES ('6', 'Secondary 2', 'Usia 13 tahun', '1');
INSERT INTO `psb_kriteria` VALUES ('7', 'Secondary 1', 'Usia 12', '1');
INSERT INTO `psb_kriteria` VALUES ('8', 'Primary 6', 'Usia 11 tahun', '1');
INSERT INTO `psb_kriteria` VALUES ('9', 'Primary 5', 'Usia 10 tahun', '1');
INSERT INTO `psb_kriteria` VALUES ('10', 'Primary 4', 'Usia 9 tahun', '1');
INSERT INTO `psb_kriteria` VALUES ('12', 'Primary 3', 'Usia 8 tahun', '1');
INSERT INTO `psb_kriteria` VALUES ('13', 'Primary 2', 'Usia 7 tahun', '1');
INSERT INTO `psb_kriteria` VALUES ('14', 'Primary 1', 'Usia 6 tahun', '1');
INSERT INTO `psb_kriteria` VALUES ('15', 'Kindergarten B', 'Usia 5 tahun', '1');
INSERT INTO `psb_kriteria` VALUES ('16', 'Kindergarten A', 'Usia 4 tahun', '1');
INSERT INTO `psb_kriteria` VALUES ('17', 'Playgroup B', 'Usia 3 tahun', '1');
INSERT INTO `psb_kriteria` VALUES ('22', 'High School 1', 'Usia 15 Tahun', '1');
INSERT INTO `psb_kriteria` VALUES ('25', 'Playgroup A', 'Usia 2 tahun', '1');

-- ----------------------------
-- Table structure for psb_photo
-- ----------------------------
DROP TABLE IF EXISTS `psb_photo`;
CREATE TABLE `psb_photo` (
  `dcid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `calonsiswa` int(10) unsigned NOT NULL,
  `photo` mediumblob NOT NULL,
  PRIMARY KEY (`dcid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of psb_photo
-- ----------------------------

-- ----------------------------
-- Table structure for psb_proses
-- ----------------------------
DROP TABLE IF EXISTS `psb_proses`;
CREATE TABLE `psb_proses` (
  `replid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `proses` varchar(100) NOT NULL,
  `kodeawalan` varchar(10) NOT NULL,
  `angkatan` int(10) unsigned NOT NULL DEFAULT '0',
  `tglmulai` date NOT NULL DEFAULT '0000-00-00',
  `tglselesai` date NOT NULL DEFAULT '0000-00-00',
  `kapasitas` int(11) NOT NULL DEFAULT '0',
  `departemen` int(10) unsigned NOT NULL,
  `aktif` enum('1','0') NOT NULL DEFAULT '1',
  `keterangan` varchar(255) DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `tahunajaran` int(11) DEFAULT NULL,
  PRIMARY KEY (`replid`),
  KEY `FK_prosespenerimaansiswa_departemen` (`departemen`),
  KEY `IX_prosespenerimaansiswa_ts` (`ts`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of psb_proses
-- ----------------------------
INSERT INTO `psb_proses` VALUES ('2', 'Tahun Ajaran 2014-2015 (asli)', 'PMB2014', '2', '0000-00-00', '0000-00-00', '1000', '1', '1', '', '2014-03-19 03:56:34', '1');
INSERT INTO `psb_proses` VALUES ('3', 'Tahun Ajaran 2014-2015', 'PMB2014', '3', '0000-00-00', '0000-00-00', '200', '2', '1', '', '2014-03-19 05:47:48', '1');
INSERT INTO `psb_proses` VALUES ('6', 'Tahun Ajaran 2015-2016', 'PMB2015', '7', '0000-00-00', '0000-00-00', '100', '1', '0', '', '2014-12-09 03:09:22', null);
INSERT INTO `psb_proses` VALUES ('7', '2015-2016', 'PMB2016', '4', '0000-00-00', '0000-00-00', '500', '2', '1', '', '2015-01-26 02:35:28', null);
INSERT INTO `psb_proses` VALUES ('8', 'Tahun Ajaran 2015-2016', 'PMB2015', '11', '0000-00-00', '0000-00-00', '20', '3', '0', '', '2015-01-26 02:43:28', null);
INSERT INTO `psb_proses` VALUES ('9', '2016 - 2017', 'PMB2016', '4', '0000-00-00', '0000-00-00', '60', '2', '1', '', '2015-01-30 01:38:12', null);
INSERT INTO `psb_proses` VALUES ('10', 'Tahun Ajaran 2014-2015', 'PMB2014', '6', '0000-00-00', '0000-00-00', '100', '3', '1', 'ok (epii)', '2015-02-03 09:53:49', null);

-- ----------------------------
-- Table structure for psb_satuanjumlah
-- ----------------------------
DROP TABLE IF EXISTS `psb_satuanjumlah`;
CREATE TABLE `psb_satuanjumlah` (
  `replid` int(11) NOT NULL AUTO_INCREMENT,
  `satuanjumlah` varchar(100) NOT NULL,
  `keterangan` text NOT NULL,
  PRIMARY KEY (`replid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of psb_satuanjumlah
-- ----------------------------
INSERT INTO `psb_satuanjumlah` VALUES ('1', 'lbr', 'lembar');
INSERT INTO `psb_satuanjumlah` VALUES ('2', 'set', 'set');

-- ----------------------------
-- Table structure for psb_siswa
-- ----------------------------
DROP TABLE IF EXISTS `psb_siswa`;
CREATE TABLE `psb_siswa` (
  `replid` int(11) NOT NULL AUTO_INCREMENT,
  `nopendaftaran` varchar(20) NOT NULL,
  `noformulir` varchar(20) DEFAULT NULL,
  `namasiswa` varchar(100) NOT NULL,
  `nis` varchar(100) NOT NULL DEFAULT '',
  `nisn` varchar(100) NOT NULL DEFAULT '',
  `panggilansiswa` varchar(30) DEFAULT NULL,
  `aktif` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `sekolahasalsiswa` varchar(100) NOT NULL,
  `sukusiswa` int(10) unsigned NOT NULL DEFAULT '0',
  `agamasiswa` int(11) NOT NULL DEFAULT '0',
  `status` enum('0','1','2') NOT NULL DEFAULT '0',
  `jkelaminsiswa` enum('L','P') NOT NULL,
  `tempatlahirsiswa` varchar(50) NOT NULL,
  `tanggallahirsiswa` date NOT NULL,
  `warganegarasiswa` varchar(20) NOT NULL,
  `anakke` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `beratsiswa` decimal(4,1) unsigned NOT NULL DEFAULT '0.0',
  `tinggisiswa` decimal(4,1) unsigned NOT NULL DEFAULT '0.0',
  `darahsiswa` enum('A','B','AB','O') NOT NULL,
  `photosiswa` longtext NOT NULL,
  `alamatsiswa` varchar(255) NOT NULL,
  `kodepossiswa` varchar(8) NOT NULL,
  `telponsiswa` varchar(20) NOT NULL,
  `pinbbsiswa` varchar(20) NOT NULL,
  `emailsiswa` varchar(100) NOT NULL,
  `penyakitsiswa` varchar(300) NOT NULL,
  `hpsiswa` varchar(15) NOT NULL,
  `catatankesehatansiswa` text NOT NULL,
  `kotasiswa` varchar(25) NOT NULL,
  `kotasekolahasalsiswa` varchar(25) NOT NULL,
  `negarasekolahasalsiswa` varchar(25) NOT NULL,
  `ijazahsiswa` varchar(55) NOT NULL,
  `keterangansiswa` text,
  `bahasasiswa1` varchar(20) NOT NULL,
  `bahasasiswa2` varchar(20) NOT NULL,
  `diasuh` enum('1','2','3','4') NOT NULL DEFAULT '1' COMMENT '1=ayah+ibu, 2=ayah, 3=ibu, 4=wali',
  PRIMARY KEY (`replid`),
  UNIQUE KEY `UX_calonsiswa_replid` (`replid`),
  KEY `FK_calonsiswa_suku` (`sukusiswa`),
  KEY `FK_calonsiswa_agama` (`agamasiswa`),
  KEY `FK_calonsiswa_statusiswa` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=141 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of psb_siswa
-- ----------------------------
INSERT INTO `psb_siswa` VALUES ('140', '', null, 'andi noya', '', '', '', '1', '', '0', '0', '0', 'L', '', '0000-00-00', '', '0', '0.0', '0.0', '', '60_16fe7db130.png', '', '', '', '', '', '', '', '', '', '', '', '', null, '', '', '1');

-- ----------------------------
-- Table structure for psb_siswa_copy
-- ----------------------------
DROP TABLE IF EXISTS `psb_siswa_copy`;
CREATE TABLE `psb_siswa_copy` (
  `replid` int(11) NOT NULL AUTO_INCREMENT,
  `nopendaftaran` varchar(20) NOT NULL,
  `noformulir` varchar(20) DEFAULT NULL,
  `nama` varchar(100) NOT NULL,
  `nis` varchar(100) NOT NULL DEFAULT '',
  `nisn` varchar(100) NOT NULL DEFAULT '',
  `panggilan` varchar(30) DEFAULT NULL,
  `aktif` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `sekolahasal` varchar(100) NOT NULL,
  `suku` int(10) unsigned NOT NULL DEFAULT '0',
  `agama` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `kelamin` enum('L','P') NOT NULL,
  `tmplahir` varchar(50) NOT NULL,
  `tgllahir` date NOT NULL,
  `warganegara` varchar(20) NOT NULL,
  `anakke` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `berat` decimal(4,1) unsigned NOT NULL DEFAULT '0.0',
  `tinggi` decimal(4,1) unsigned NOT NULL DEFAULT '0.0',
  `darah` enum('A','B','AB','O') DEFAULT NULL,
  `photo` longtext NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `kodepos` varchar(8) NOT NULL,
  `telpon` varchar(20) NOT NULL,
  `pinbb` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `penyakit` varchar(300) DEFAULT NULL,
  `hp` varchar(15) DEFAULT NULL,
  `catatankesehatan` text NOT NULL,
  `kotasekolahasal` varchar(25) DEFAULT NULL,
  `negarasekolahasal` varchar(25) DEFAULT NULL,
  `ijazah` varchar(55) DEFAULT NULL,
  `keterangan` text,
  `setbiaya` int(10) NOT NULL DEFAULT '0',
  `bahasa2` varchar(20) NOT NULL,
  `bahasa1` varchar(20) NOT NULL,
  `namabank` varchar(100) NOT NULL,
  `rekening` varchar(50) NOT NULL,
  `diasuh` enum('1','2','3','4') NOT NULL DEFAULT '1' COMMENT '1=ayah+ibu, 2=ayah, 3=ibu, 4=wali',
  PRIMARY KEY (`replid`),
  UNIQUE KEY `UX_calonsiswa_replid` (`replid`),
  KEY `FK_calonsiswa_suku` (`suku`),
  KEY `FK_calonsiswa_agama` (`agama`),
  KEY `FK_calonsiswa_statusiswa` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=1018 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of psb_siswa_copy
-- ----------------------------
INSERT INTO `psb_siswa_copy` VALUES ('7', 'PMB2014140007', null, 'Trevor Yongnardi', '222', '', null, '1', 'Bumble Bee', '0', '5', '0', 'L', '', '2011-10-10', '', '0', '0.0', '0.0', '', '', 'Darmo Indah Timur G59', '', '085731316399', null, null, '', null, '', null, null, null, null, '1', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('8', 'PMB2014140008', null, 'Sean Kennard Sebastian Ho', '333', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2012-05-07', '', '0', '0.0', '0.0', '', '', 'Ngagel Jaya Selatan E28 Surabaya', '', '085706331688', null, null, '', null, '', null, null, null, null, '1', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('9', 'PMB2014140009', null, 'Chelsey Felicia Sugianto', '', '', null, '1', '', '0', '5', '1', 'P', 'Surabaya', '2008-02-18', '', '0', '0.0', '0.0', '', '', 'Satelit Timur II Blok JJ-12', '', '5320745', null, null, '', null, '', null, null, null, null, '1', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('11', 'PMB2014140010', null, 'Kayla Aprillia Tanujaya', '444', '', null, '1', '', '0', '5', '1', 'P', 'Surabaya', '2012-04-22', '', '0', '0.0', '0.0', '', '', 'Satelit Indah IX/GN-18', '', '70109151', null, null, '', null, '', null, null, null, null, '1', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('14', 'PMB2014140014', null, 'Luke Caesar Njoto Imanuel', '555', '', null, '1', '', '0', '5', '0', 'L', 'Surabaya', '2012-05-14', '', '0', '0.0', '0.0', '', '', 'Petemon I/97 Surabaya', '', '70704437', null, null, '', null, '', null, null, null, null, '1', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('15', 'PMB2014140015', null, 'Ezell Dean Nugroho', '666', '', null, '1', '', '0', '5', '0', 'L', 'Surabaya', '2011-09-28', '', '0', '0.0', '0.0', '', '', 'Woodland WL II no.70 Citraland', '', '', null, null, '', null, '', null, null, null, null, '1', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('16', 'PMB2014140016', null, 'Kate Massey Tunggala', '777', '', null, '1', '', '0', '5', '0', 'P', 'Surabaya', '2011-08-29', '', '0', '0.0', '0.0', '', '', 'Donowati V/43', '', '081333666000', null, null, '', null, '', null, null, null, null, '1', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('17', 'PMB2014140017', null, 'Florence Christalyn Tansah', '888', '', null, '1', '', '0', '5', '0', 'P', 'Surabaya', '2011-08-03', '', '0', '0.0', '0.0', '', '', 'Puri Sentra Raya PS1 / 53E Citraland', '', '082333378888', null, null, '', null, '', null, null, null, null, '1', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('18', 'PMB2014140018', null, 'Helena Serafi Xue', '999', '', null, '1', '', '0', '5', '0', 'P', 'Surabaya', '2011-09-24', '', '0', '0.0', '0.0', '', '', 'Darmo Green Garden B9', '', '7324908', null, null, '', null, '', null, null, null, null, '1', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('19', 'PMB2014140019', null, 'Joel Fabrizio Hanjaya', '', '', null, '1', '', '0', '5', '0', 'L', 'Surabaya', '2011-02-18', '', '0', '0.0', '0.0', '', '', 'Darmo Permai Utara XI / 18', '', '7317577', null, null, '', null, '', null, null, null, null, '1', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('20', 'PMB2014140020', null, 'Jayden Anthony Theios', '', '', null, '1', '', '0', '5', '0', 'L', 'Surabaya', '2011-10-24', '', '0', '0.0', '0.0', '', '', 'Banyu Urip Wetan 5/95', '', '5676091', null, null, '', null, '', null, null, null, null, '1', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('21', 'PMB2014140021', null, 'Haven Mae Sutiono', '', '', null, '1', 'Gracia Preschool Citraraya', '0', '5', '0', 'L', 'Surabaya', '2011-10-26', '', '0', '0.0', '0.0', '', '', 'Pakis Argosari VII/51', '', '5685314', null, null, '', null, '', null, null, null, null, '1', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('22', 'PMB2014140022', null, 'Genevieve Ganda', '', '', null, '1', '', '0', '5', '0', 'P', 'Surabaya', '2010-06-01', '', '0', '0.0', '0.0', '', '', 'Graha Family N47', '', '0818320768', null, null, '', null, '', null, null, null, null, '1', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('23', 'PMB2014140023', null, 'Megan Wu', '', '', null, '1', '', '0', '5', '0', 'P', 'Surabaya', '2011-10-01', '', '0', '0.0', '0.0', '', '', 'Tanjungsari Baru I/12', '', '081934626676', null, null, '', null, '', null, null, null, null, '1', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('24', 'PMB2014140024', null, 'Aishlyn Arianna Tejakusuma', '', '', null, '1', '', '0', '5', '0', 'P', 'Surabaya', '2011-07-21', '', '0', '0.0', '0.0', '', '', 'Satelit Indah 3 LN 5', '', '081703434393', null, null, '', null, '', null, null, null, null, '1', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('25', 'PMB2014140025', null, 'Raelene Michelina Budiman', '', '', null, '1', '', '0', '4', '0', 'P', 'Surabaya', '2011-06-21', '', '0', '0.0', '0.0', '', '', 'Taman Puspa Raya B6/19 Citraland Surabaya', '', '70581663', null, null, '', null, '', null, null, null, null, '1', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('27', 'PMB2014140027', null, 'Frederick Sutendy', '', '', null, '1', '', '0', '5', '0', 'L', 'Surabaya', '2010-05-03', '', '0', '0.0', '0.0', '', '', 'Dupak 17 Blok B14 Komplek Ruko Pasifik Megah, Surabaya', '', '', null, null, '', null, '', null, null, null, null, '1', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('28', 'PMB2014140028', null, 'Victor Fu', '', '', null, '1', '', '0', '5', '0', 'L', 'Surabaya', '2010-08-24', '', '0', '0.0', '0.0', '', '', 'Royal Residence B9-187', '', '08121631513', null, null, '', null, '', null, null, null, null, '266', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('29', 'PMB2014140029', null, 'Hizkia Debharim Xue', '', '', null, '1', 'Great Crystal International School', '0', '5', '0', 'L', 'Surabaya', '2009-05-22', '', '0', '0.0', '0.0', '', '', 'Darmo Green Garden B9', '', '087822212573', null, null, '', null, '', null, null, null, null, '1', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('30', 'PMB2014140030', null, 'Kiersten Jane Priatman', '', '', null, '1', 'Sun Surabaya Montessori School', '0', '5', '0', 'P', 'Arcadia, A.S.', '2009-02-09', '', '0', '0.0', '0.0', '', '', 'Graha Family T70', '', '0817584826', null, null, '', null, '', null, null, null, null, '1', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('32', 'PMB2014140031', null, 'wang yu xin', '', '', null, '1', '', '0', '0', '0', 'L', '', '0000-00-00', '', '0', '0.0', '0.0', '', '', '', '', '', null, null, '', null, '', null, null, null, null, '1', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('36', 'PMB2014140033', null, 'Kiyora Asami Prasetyo', '', '', null, '1', 'Lollypop Preschool', '0', '5', '1', 'P', '', '2008-08-08', '', '0', '0.0', '0.0', '', '', 'Jl. Tulung Agung 3/39', '', '0817335288', null, null, '', null, '', null, null, null, null, '1', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('37', 'PMB2014140037', null, 'Ferlyne Gabrielly Thie', '', '', null, '1', 'Lollypop Preschool', '0', '0', '1', 'P', '', '2008-04-24', '', '0', '0.0', '0.0', '', '', 'Pakuwon Indah the Mansion PF 4 No 8', '', '081357226181', null, null, '', null, '', null, null, null, null, '1', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('38', 'PMB2014140038', null, 'Colin Cristo Harianto', '', '', null, '1', 'Merlion', '0', '0', '1', 'L', '', '2008-01-19', '', '0', '0.0', '0.0', '', '', 'Wisata Bukit Mas E3/10', '', '0818372591', null, null, '', null, '', null, null, null, null, '1', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('39', 'PMB2014140039', null, 'Hacken Wunadi', '', '', null, '1', 'Happy Family School', '0', '0', '1', 'L', '', '2008-09-07', '', '0', '0.0', '0.0', '', '', 'Graha Family R179A', '', '081233775900', null, null, '', null, '', null, null, null, null, '1', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('40', 'PMB2014140040', null, 'Josevine Angeline Musa', '', '', null, '1', 'Stepping stones', '0', '0', '1', 'P', '', '2008-04-02', '', '0', '0.0', '0.0', '', '', 'Darmo permai Selatan XI/18', '', '70178869', null, null, '', null, '', null, null, null, null, '1', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('41', 'PMB2014140041', null, 'Sharon A. Soempiet', '', '', null, '1', 'Cambridge School', '0', '5', '1', 'P', '', '2008-01-09', '', '0', '0.0', '0.0', '', '', 'Royal Residence B3-52A', '', '71227601', null, null, '', null, '', null, null, null, null, '1', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('42', 'PMB2014140042', null, 'Michelle Tanaya', '', '', null, '1', '', '0', '0', '1', 'P', '', '2008-07-28', '', '0', '0.0', '0.0', '', '', 'Jl. Tulung Agung 3/6', '', '59319420', null, null, '', null, '', null, null, null, null, '1', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('43', 'PMB2014140043', null, 'Jenevieve Clairine', '', '', null, '1', 'JAC', '0', '0', '1', 'P', '', '2008-07-14', '', '0', '0.0', '0.0', '', '', 'Taman Darmo Harapan II/GG II-C', '', '7317042', null, null, '', null, '', null, null, null, null, '1', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('44', 'PMB2014140044', null, 'Calista Gracious Susanto', '', '', null, '1', 'Ivy School', '0', '0', '1', 'P', '', '2008-07-13', '', '0', '0.0', '0.0', '', '', 'Wisata Bukit Indah C1-8', '', '70603754', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('45', 'PMB2014140045', null, 'Grace Caroline Cahyono', '', '', null, '1', 'Vita School', '0', '0', '1', 'P', '', '2008-07-12', '', '0', '0.0', '0.0', '', '', 'San Diego M6-28 Pakuwon City', '', '08575506888', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('46', 'PMB2014140046', null, 'Noel Nelson Felix', '', '', null, '1', 'Town for kids', '0', '0', '1', 'L', '', '2008-01-02', '', '0', '0.0', '0.0', '', '', 'Perum Darmo sentosa Raya Blok i-38', '', '71616111', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('47', 'PMB2014140047', null, 'Filbert Wellington', '', '', null, '1', 'Xin Zhong', '0', '0', '1', 'L', '', '2008-05-14', '', '0', '0.0', '0.0', '', '', 'The Mansion PF-5/22', '', '71047493', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('48', 'PMB2014140048', null, 'Ezekiel Shawn Wondo', '', '', null, '1', 'Surabaya Grammar School', '0', '0', '1', 'L', '', '2008-05-04', '', '0', '0.0', '0.0', '', '', 'Centra Park E-19', '', '70597500', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('49', 'PMB2014140049', null, 'Gabriel Grace Ong', '', '', null, '1', 'Merlion', '0', '5', '0', 'P', '', '2008-07-09', '', '0', '0.0', '0.0', '', '', '', '', '70789099', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('50', 'PMB2014140050', null, 'Fidelia Theodore Chang', '', '', null, '1', 'Happy Family School', '0', '0', '1', 'P', '', '2008-03-12', '', '0', '0.0', '0.0', '', '', 'Darmo Hill P-12', '', '081330716553', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('51', 'PMB2014140051', null, 'Emili Trecia Faustina', '', '', null, '1', 'Little Sun', '0', '0', '1', 'P', '', '2008-05-15', '', '0', '0.0', '0.0', '', '', 'Kranggan 102 kav 8', '', '5340131', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('52', 'PMB2014140052', null, 'Janice Valerie Judianto', '', '', null, '1', '', '0', '0', '0', 'P', '', '2008-01-28', '', '0', '0.0', '0.0', '', '', 'OGT AB 11/58', '', '0811596881', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('53', 'PMB2014140053', null, 'Christie Feodora Suanthie', '', '', null, '1', 'Merlion', '0', '0', '0', 'P', '', '2008-02-18', '', '0', '0.0', '0.0', '', '', 'Graha Family K-63', '', '082330036967', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('54', 'PMB2014140054', null, 'Gycella Ciatawi', '', '', null, '1', '', '0', '0', '0', 'P', '', '2008-12-01', '', '0', '0.0', '0.0', '', '', 'Wiyung Indah 19 NN-1', '', '7674450', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('55', 'PMB2014140055', null, 'Nicholas Michael', '', '', null, '1', 'IPH', '0', '0', '0', 'L', '', '2008-05-16', '', '0', '0.0', '0.0', '', '', 'Villa Bukit Regency 2 PD 3 no 5 Pakuwon', '', '7391868', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('56', 'PMB2014140056', null, 'Andrew Prasetyo', '', '', null, '1', 'Merlion', '0', '0', '0', 'L', '', '2008-04-16', '', '0', '0.0', '0.0', '', '', 'Margorejo Indah C-401A', '', '81965989', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('57', 'PMB2014140057', null, 'Ferdinand Christanto Thomas', '', '', null, '1', 'Merlion', '0', '0', '0', 'L', '', '2008-02-10', '', '0', '0.0', '0.0', '', '', 'Raya Mastrip Kemlaten 26A', '', '70627543', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('58', 'PMB2014140058', null, 'Patricia Michelle Rumoei', '', '', null, '1', 'Tutor Time', '0', '0', '0', 'P', '', '2008-04-01', '', '0', '0.0', '0.0', '', '', 'SDPT 2/2', '', '78207041', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('59', 'PMB2014140059', null, 'Griffith Clairenova Wijaya', '', '', null, '1', '', '0', '0', '0', 'L', '', '2008-09-22', '', '0', '0.0', '0.0', '', '', '', '', '081316041316', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('61', 'PMB2015140001', null, 'Charleen Audrey Tjandra', '', '', null, '1', '', '0', '0', '0', 'L', '', '2013-10-29', '', '0', '0.0', '0.0', '', '', '', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('62', 'PMB2015140062', null, 'Naomi Cherish', '', '', null, '1', '', '0', '0', '0', 'P', '', '2012-12-13', '', '0', '0.0', '0.0', '', '', '', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('63', 'PMB2015140063', null, 'Kenneth Jones', '', '', null, '1', '', '0', '0', '0', 'L', '', '2013-08-02', '', '0', '0.0', '0.0', '', '', '', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('64', 'PMB2015140064', null, 'Fonzio Cayden Suganda', '', '', null, '1', '', '0', '0', '0', 'L', '', '2013-01-03', '', '0', '0.0', '0.0', '', '', '', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('65', 'PMB2015140065', null, 'Shanon Ignacia', '', '', null, '1', '', '0', '0', '0', 'L', '', '2011-12-27', '', '0', '0.0', '0.0', '', '', '', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('66', 'PMB2015140066', null, 'Kiele Huang', '', '', null, '1', '', '0', '0', '0', 'L', '', '2012-04-07', '', '0', '0.0', '0.0', '', '', '', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('67', 'PMB2015140067', null, 'Lincoln Harsono', '', '', null, '1', '', '0', '0', '0', 'L', '', '2011-05-07', '', '0', '0.0', '0.0', '', '', '', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('68', 'PMB2015140068', null, 'Clarissa Elizabeth Tjandra', '', '', null, '1', '', '0', '0', '0', 'P', '', '2011-05-24', '', '0', '0.0', '0.0', '', '', '', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('69', 'PMB2015140069', null, 'Manuel Allessandro', '', '', null, '1', '', '0', '0', '0', 'L', '', '2011-04-09', '', '0', '0.0', '0.0', '', '', '', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('70', 'PMB2015140070', null, 'Samatha Elizabeth Hidajat', '', '', null, '1', '', '0', '0', '0', 'P', '', '2011-05-05', '', '0', '0.0', '0.0', '', '', '', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('71', 'PMB2015140071', null, 'Julie T. E', '', '', null, '1', '', '0', '0', '0', 'P', '', '2009-08-01', '', '0', '0.0', '0.0', '', '', '', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('72', 'PMB2015140072', null, 'Isabel Laetizia Soewandi', '', '', null, '1', '', '0', '0', '0', 'P', '', '2009-09-08', '', '0', '0.0', '0.0', '', '', '', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('73', 'PMB2015140073', null, 'Colin Jefferson Harsono', '', '', null, '1', '', '0', '0', '0', 'L', '', '2009-12-03', '', '0', '0.0', '0.0', '', '', '', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('74', 'PMB2015140074', null, 'Nathan Manuel F. Soehartono', '', '', null, '1', '', '0', '0', '0', 'L', '', '2008-12-31', '', '0', '0.0', '0.0', '', '', '', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('75', 'PMB2015140075', null, 'Winfred Rainer', '', '', null, '1', '', '0', '3', '0', 'L', '', '2009-03-09', '', '0', '0.0', '0.0', '', '', '', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('76', 'PMB2015140076', null, 'Mirelle Gracia Edith', '', '', null, '1', '', '0', '0', '0', 'P', '', '2009-09-02', '', '0', '0.0', '0.0', '', '', '', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('77', 'PMB2015140077', null, 'Keiko Clarissa Sugianto', '', '', null, '1', '', '0', '0', '0', 'P', '', '2009-10-28', '', '0', '0.0', '0.0', '', '', '', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('78', 'PMB2015140078', null, 'Kylie Yvaine Halim', '', '', null, '1', '', '0', '0', '0', 'L', '', '2009-04-20', '', '0', '0.0', '0.0', '', '', '', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('79', 'PMB2015140079', null, 'Eileen Thejawijaya', '', '', null, '1', '', '0', '0', '0', 'P', '', '2009-11-08', '', '0', '0.0', '0.0', '', '', '', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('80', 'PMB2015140080', null, 'Jessica Hilary Amsal', '', '', null, '1', '', '0', '0', '0', 'L', '', '2011-08-15', '', '0', '0.0', '0.0', '', '', '', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('81', 'PMB2015140081', null, 'Keyko Liem', '', '', null, '1', '', '0', '0', '0', 'L', '', '2009-05-11', '', '0', '0.0', '0.0', '', '', '', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('82', 'PMB2015140082', null, 'Kenzo Liem', '', '', null, '1', '', '0', '0', '0', 'L', '', '2009-05-11', '', '0', '0.0', '0.0', '', '', '', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('83', 'PMB2015140083', null, 'Jayden O. H', '', '', null, '1', '', '0', '0', '0', 'L', '', '2008-11-11', '', '0', '0.0', '0.0', '', '', '', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('84', 'PMB2015140084', null, 'Jayden Chistopher Kwan', '', '', null, '1', '', '0', '0', '0', 'L', '', '2009-07-23', '', '0', '0.0', '0.0', '', '', '', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('85', 'PMB2015140085', null, 'Davin Susilo', '', '', null, '1', '', '0', '0', '0', 'L', '', '2009-06-19', '', '0', '0.0', '0.0', '', '', '', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('86', 'PMB2015140086', null, 'Leanna Gaby Ligito', '', '', null, '1', '', '0', '0', '0', 'P', '', '2009-08-10', '', '0', '0.0', '0.0', '', '', '', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('87', 'PMB2015140087', null, 'Timothy Ethan', '', '', null, '1', '', '0', '0', '0', 'L', '', '2008-09-07', '', '0', '0.0', '0.0', '', '', '', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('88', 'PMB2015140088', null, 'Ashley Clarissa Wenas', '', '', null, '1', '', '0', '0', '0', 'P', '', '2009-03-21', '', '0', '0.0', '0.0', '', '', '', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('89', 'PMB2015140089', null, 'James Christian Tjoe', '', '', null, '1', '', '0', '0', '0', 'L', '', '2009-06-22', '', '0', '0.0', '0.0', '', '', '', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('90', 'PMB2015140090', null, 'Megan Elizabeth Lin', '', '', null, '1', '', '0', '0', '0', 'P', '', '2009-02-13', '', '0', '0.0', '0.0', '', '', '', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('91', 'PMB2015140091', null, 'Kayleen Miciko Owen', '', '', null, '1', '', '0', '0', '0', 'L', '', '2009-09-17', '', '0', '0.0', '0.0', '', '', '', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('92', 'PMB2015140092', null, 'Jordan Maxwell Lin', '', '', null, '1', '', '0', '0', '0', 'L', '', '2006-12-17', '', '0', '0.0', '0.0', '', '', '', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('93', 'PMB2015140093', null, 'Richard Hoshi', '', '', null, '1', '', '0', '0', '0', 'L', '', '2004-02-25', '', '0', '0.0', '0.0', '', '', '', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('94', 'PMB2015140094', null, 'Jonathan sebastian', '', '', null, '1', '', '0', '0', '0', 'L', '', '2003-05-03', '', '0', '0.0', '0.0', '', '', '', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('95', 'PMB2015140095', null, 'Janet Gloria', '', '', null, '1', '', '0', '0', '0', 'P', '', '2003-04-14', '', '0', '0.0', '0.0', '', '', '', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('96', 'PMB2015140096', null, 'Angeline Hoshi', '', '', null, '1', '', '0', '0', '0', 'P', '', '2002-12-31', '', '0', '0.0', '0.0', '', '', '', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('97', 'PMB2015140097', null, 'William, Jia Wei', '', '', null, '1', '', '0', '0', '0', 'L', '', '2002-12-31', '', '0', '0.0', '0.0', '', '', '', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('98', 'PMB2015140098', null, 'Michael Noah Yolimbera', '', '', null, '1', '', '0', '0', '0', 'L', '', '2002-12-31', '', '0', '0.0', '0.0', '', '', '', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('100', 'PMB2015150099', null, 'Samantha Ongso', '', '', null, '1', '', '0', '0', '0', 'P', '', '2013-01-17', '', '0', '0.0', '0.0', '', '', '', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('101', 'PMB2015150101', null, 'Jeanice M. Christianto', '', '', null, '1', '', '0', '0', '0', 'L', '', '2012-12-15', '', '0', '0.0', '0.0', '', '', '', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('102', 'PMB2015150102', null, 'Megan Tanaya', '', '', null, '1', '', '0', '0', '0', 'L', '', '2012-09-30', '', '0', '0.0', '0.0', '', '', '', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('103', 'PMB2015150103', null, 'William Nicholas Teng', '', '', null, '1', '', '0', '5', '0', 'L', '', '2012-12-23', '', '0', '0.0', '0.0', '', '', '', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('104', 'PMB2015150104', null, 'Maylynn Zeta Sasongko', '', '', null, '1', '', '0', '5', '0', 'P', '', '2013-05-10', '', '0', '0.0', '0.0', '', '', '', '', '08123524102', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('105', 'PMB2015150105', null, 'Michelle Wijaya', '', '', null, '1', '', '0', '0', '0', 'L', '', '2013-09-03', '', '0', '0.0', '0.0', '', '', '', '', '08385581985', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('106', 'PMB2015150106', null, 'Clarin Valerie Tejokusumo', '', '', null, '1', '', '0', '0', '0', 'P', '', '2012-05-29', '', '0', '0.0', '0.0', '', '', '', '', '8962977', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('107', 'PMB2015150107', null, 'Jason Arsenio T', '', '', null, '1', '', '0', '5', '0', 'L', '', '2011-11-10', '', '0', '0.0', '0.0', '', '', '', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('108', 'PMB2015150108', null, 'Crescencia Maeghan Hiandinata', '', '', null, '1', '', '0', '5', '0', 'P', '', '2011-04-07', '', '0', '0.0', '0.0', '', '', '', '', '57431103', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('109', 'PMB2015150109', null, 'Felicia Dominique Lin', '', '', null, '1', '', '0', '0', '0', 'L', '', '2012-06-20', '', '0', '0.0', '0.0', '', '', '', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('110', 'PMB2015150110', null, 'Kenward Evander Tan', '', '', null, '1', '', '0', '5', '0', 'L', '', '2011-01-27', '', '0', '0.0', '0.0', '', '', '', '', '08123148682', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('111', 'PMB2015150111', null, 'Kenny Tanzil', '', '', null, '1', '', '0', '5', '0', 'P', '', '2011-08-20', '', '0', '0.0', '0.0', '', '', '', '', '081803126988', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('112', 'PMB2015150112', null, 'Catherine Annabella Tjoe', '', '', null, '1', '', '0', '5', '0', 'P', '', '2011-10-20', '', '0', '0.0', '0.0', '', '', '', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('113', 'PMB2015150113', null, 'Nicholas Immanuel Santoso', '', '', null, '1', '', '0', '5', '0', 'L', '', '2010-03-01', '', '0', '0.0', '0.0', '', '', '', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('114', 'PMB2015150114', null, 'Vincent Colin Utama', '', '', null, '1', '', '0', '5', '0', 'L', '', '2009-11-19', '', '0', '0.0', '0.0', '', '', '', '', '78317170', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('115', 'PMB2015150115', null, 'Keiko Geraldine Alfonsa', '', '', null, '1', '', '0', '5', '0', 'L', '', '2009-08-03', '', '0', '0.0', '0.0', '', '', '', '', '081905027888', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('116', 'PMB2015150116', null, 'Immanuel Kay Lukito', '', '', null, '1', '', '0', '5', '0', 'L', '', '2009-07-07', '', '0', '0.0', '0.0', '', '', '', '', '8961750', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('117', 'PMB2015150117', null, 'Misha Setiabudi', '', '', null, '1', '', '0', '5', '0', 'L', '', '2009-11-02', '', '0', '0.0', '0.0', '', '', '', '', '7318838', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('118', 'PMB2015150118', null, 'Gabriella Megumi Tjandra', '', '', null, '1', '', '0', '5', '0', 'P', '', '2009-04-14', '', '0', '0.0', '0.0', '', '', '', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('119', 'PMB2015150119', null, 'Clarissa Kurniawan', '', '', null, '1', '', '0', '5', '0', 'P', '', '2007-10-02', '', '0', '0.0', '0.0', '', '', '', '', '0816506471', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('120', 'PMB2015150120', null, 'Eric Jonathan Tannasa', '', '', null, '1', '', '0', '5', '0', 'L', '', '2007-10-20', '', '0', '0.0', '0.0', '', '', '', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('121', 'PMB2015150121', null, 'Edward Jonathan Tannasa', '', '', null, '1', '', '0', '5', '0', 'L', '', '2006-04-08', '', '0', '0.0', '0.0', '', '', '', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('122', 'PMB2015150122', null, 'Edwin Jonathan Tannasa', '', '', null, '1', '', '0', '0', '0', 'L', '', '2006-04-08', '', '0', '0.0', '0.0', '', '', '', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('123', 'PMB2015150123', null, 'Valennia Thio', '', '', null, '1', '', '0', '0', '0', 'L', '', '2003-03-25', '', '0', '0.0', '0.0', '', '', '', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('124', 'PMB2015150124', null, 'Zhung Rong Xin', '', '', null, '1', '', '0', '0', '0', 'L', '', '2001-05-28', '', '0', '0.0', '0.0', '', '', '', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('125', 'PMB2015150125', null, 'soleh', '', '', null, '1', '9', '0', '3', '0', 'L', 'ok', '2020-01-01', '', '0', '0.0', '0.0', 'A', '', '9', '', '9', null, null, 'tidka sakit', null, 'bagus', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('134', 'PMB2014150001', null, 'Angeline Jessie Kurnia Patricia', '', '', null, '1', '', '0', '5', '1', 'P', 'Surabaya', '2008-01-02', '', '0', '0.0', '0.0', '', '', 'Tambak Adi 66, Surabaya', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('135', 'PMB2014150135', null, 'Arthur Kristanto', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2008-08-30', '', '0', '0.0', '0.0', '', '', 'Nirwana Executive CC-411 A', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('136', 'PMB2014150136', null, 'Cahyadi Sudrajat Lauwandy', '', '', null, '1', '', '0', '1', '1', 'L', 'Surabaya', '2008-03-28', '', '0', '0.0', '0.0', '', '', 'Mojoklanggru Kidul H/12', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('137', 'PMB2014150137', null, 'Christopher Rich Gondo', '', '', null, '1', '', '0', '1', '1', 'L', 'Surabaya', '2008-09-08', '', '0', '0.0', '0.0', '', '', 'Rungkut Mapan Barat IX / AH-33', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('140', 'PMB2014150060', null, 'Astrid Regina Pangkey', '', '', null, '1', '', '0', '4', '0', 'P', 'Surabaya', '2003-02-16', '', '0', '0.0', '0.0', '', '', 'Taman Pondok Indah  LY - 2', '', '0811327851', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('144', 'PMB2014150141', null, 'Ezell Dean Nugroho', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2011-11-28', '', '0', '0.0', '0.0', '', '', 'Woodland WL 11 / 70 Citraland', '', '03160760758', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('145', 'PMB2014150145', null, 'Jane Evangeline Lee', '', '', null, '1', '', '0', '5', '1', 'P', 'Surabaya', '2012-09-10', '', '0', '0.0', '0.0', '', '', 'Graha Family o-111', '', '0317324653', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('146', 'PMB2014150146', null, 'Kayla Aprillia Tanujaya', '', '', null, '1', '', '0', '5', '1', 'P', 'Surabaya', '2012-03-22', '', '0', '0.0', '0.0', '', '', 'Satelit Indah IX / GN-18', '', '0317312413', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('147', 'PMB2014150147', null, 'Luke Caesar Njoto Imanuel', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2012-05-14', '', '0', '0.0', '0.0', '', '', 'Petemon I / 97', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('148', 'PMB2014150148', null, 'Sean Kennard Sebastian Ho', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2012-05-07', '', '0', '0.0', '0.0', '', '', 'Ngagel Jaya Selatan E-28', '', '0317322771', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('149', 'PMB2014150149', null, 'Trevor Yongnardi', '', '', null, '1', '', '0', '4', '1', 'L', 'Surabaya', '2011-10-10', '', '0', '0.0', '0.0', '', '', 'Darmo Indah Timur G-59', '', '0317311149', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('150', 'PMB2014150150', null, 'Victoria Jolyn Wu', '', '', null, '1', '', '0', '4', '1', 'P', 'Surabaya', '2012-07-07', '', '0', '0.0', '0.0', '', '', 'Griya Babatan Mukti C-11', '', '0317530363', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('151', 'PMB2014150151', null, 'Kenneth Bryant Sutanto', '', '', null, '1', '', '0', '1', '0', 'L', 'Surabaya', '2011-10-15', '', '0', '0.0', '0.0', '', '', 'Darmo Harapan Indah III / xx-18', '', '0317326668', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('156', 'PMB2014150154', null, 'Michael Dave Wijaya', '', '', null, '1', '', '0', '5', '0', 'L', 'Surabaya', '2012-04-16', '', '0', '0.0', '0.0', '', '', 'International Village B7 / 25A Citraland', '', '0318549876', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('158', 'PMB2014150157', null, 'Wang Yu Xin', '', '', null, '1', '', '0', '5', '0', 'P', 'Surabaya', '2012-08-09', '', '0', '0.0', '0.0', '', '', 'Rayen Regency F-5', '', '0317510224', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('161', 'PMB2014150159', null, 'Melly Santoso', '', '', null, '1', '', '0', '5', '0', 'P', 'Surabaya', '2012-07-06', '', '0', '0.0', '0.0', '', '', 'Raya Satelit Barat IN-31', '', '0317318991', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('162', 'PMB2014150162', null, 'Ellyana Gunawijoyo Liong', '', '', null, '1', '', '0', '5', '0', 'P', 'Surabaya', '2011-11-30', '', '0', '0.0', '0.0', '', '', 'Darmo Harapan Indah 5 / vv-12', '', '0317316787', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('163', 'PMB2014150163', null, 'Madeline Emily Gan', '', '', null, '1', '', '0', '5', '0', 'P', 'Surabaya', '2012-01-26', '', '0', '0.0', '0.0', '', '', 'Yosodipuro No.21', '', '0315676533', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('164', 'PMB2014150164', null, 'Christofer Romoei', '', '', null, '1', '', '0', '5', '0', 'L', 'Surabaya', '2014-04-01', '', '0', '0.0', '0.0', '', '', 'Simpang Darmo Permai Timur 2/2', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('166', 'PMB2015150001', null, 'Geraldine Cyrilla Anthony Liem', '', '', null, '1', '', '0', '5', '1', 'P', 'Jakarta', '2011-01-27', '', '0', '0.0', '0.0', '', '', 'J. A Suprapto 124 Bojonegoro', '', '0811331409', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('170', 'PMB2014150165', null, 'Aaron Manuel Darmawan', '', '', null, '1', '', '0', '5', '0', 'L', 'Surabaya', '2011-11-01', '', '0', '0.0', '0.0', '', '', 'Dukuh Kupang 22 / 16', '', '0315667777', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('171', 'PMB2014150171', null, 'Bradley Matthew Lauw', '', '', null, '1', '', '0', '5', '0', 'L', 'Surabaya', '2011-09-08', '', '0', '0.0', '0.0', '', '', 'Wisata Bukit Mas E5 / 6', '', '0317535851', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('172', 'PMB2014150172', null, 'Caroline Leilany Ong', '', '', null, '1', '', '0', '4', '0', 'P', 'Surabaya', '2011-01-01', '', '0', '0.0', '0.0', '', '', 'Raya Tandes No.68', '', '0317490653', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('173', 'PMB2014150173', null, 'Claire Nicole Lin', '', '', null, '1', '', '0', '4', '0', 'P', 'Situbondo', '2011-04-28', '', '0', '0.0', '0.0', '', '', 'Kupang Indah V / 16', '', '0317315031', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('174', 'PMB2014150174', null, 'Daven Neilson Wu', '', '', null, '1', '', '0', '5', '0', 'L', 'Surabaya', '2011-05-27', '', '0', '0.0', '0.0', '', '', 'Woodland WL 2 / 89 Citraland', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('175', 'PMB2014150175', null, 'Ethan Timothy Halim', '', '', null, '1', '', '0', '5', '0', 'L', 'Surabaya', '2010-11-19', '', '0', '0.0', '0.0', '', '', 'Tanjungsari Baru V / 22', '', '0317348236', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('176', 'PMB2014150176', null, 'Hadley Nathan Suju B', '', '', null, '1', '', '0', '0', '0', 'L', 'Surabaya', '2011-05-06', '', '0', '0.0', '0.0', '', '', 'Simpang Darmo Permai Selatan V / 27', '', '0317315727', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('177', 'PMB2014150177', null, 'Haven Mae Sutiono', '', '', null, '1', '', '0', '5', '0', 'P', 'Surabaya', '2011-10-26', '', '0', '0.0', '0.0', '', '', 'Pakis Argosari VII / 51', '', '0315685314', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('178', 'PMB2014150178', null, 'Julius Avalokiti Hoo', '', '', null, '1', '', '0', '5', '0', 'L', 'Surabaya', '2011-07-18', '', '0', '0.0', '0.0', '', '', 'Darmo Harapan Indah IV / UU-1', '', '0317322034', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('179', 'PMB2014150179', null, 'Manfred Deryl Young', '', '', null, '1', '', '0', '5', '0', 'L', 'Surabaya', '2011-06-07', '', '0', '0.0', '0.0', '', '', 'Jaksa Agung Suprapto No.58 (Grandma)', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('180', 'PMB2014150180', null, 'Mia Kelly Haryono', '', '', null, '1', '', '0', '5', '0', 'P', 'Surabaya', '2011-10-27', '', '0', '0.0', '0.0', '', '', 'Graha Family O-177A', '', '03151200516', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('181', 'PMB2014150181', null, 'Micayla Rhea Aliptha', '', '', null, '1', '', '0', '4', '0', 'P', 'Surabaya', '2011-07-03', '', '0', '0.0', '0.0', '', '', 'Darmo Permai Selatan 7 / 46', '', '03170368979', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('182', 'PMB2014150182', null, 'Nazarette Kaylee Kristanto', '', '', null, '1', '', '0', '5', '0', 'P', 'Surabaya', '2011-01-06', '', '0', '0.0', '0.0', '', '', 'Graha Family N-33', '', '0317340928', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('183', 'PMB2014150183', null, 'Raelene Michelina Budiman', '', '', null, '1', '', '0', '4', '0', 'P', 'Surabaya', '2011-06-21', '', '0', '0.0', '0.0', '', '', 'Taman Puspa Raya B6-19', '', '03170581663', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('184', 'PMB2014150184', null, 'Richelle Valerie Kho', '', '', null, '1', '', '0', '5', '0', 'P', 'Surabaya', '2011-09-13', '', '0', '0.0', '0.0', '', '', 'Satelit Indah 8 / FN-5', '', '0317343111', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('185', 'PMB2014150185', null, 'Sydney Loucia Wijaya', '', '', null, '1', '', '0', '5', '0', 'P', 'Selangor, Malaysia', '2010-10-10', '', '0', '0.0', '0.0', '', '', 'Raya Gayung Kebonsari 33-35', '', '3762765', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('186', 'PMB2014150186', null, 'Valerie Michaela Koeswanto', '', '', null, '1', '', '0', '5', '0', 'P', 'Surabaya', '2011-10-17', '', '0', '0.0', '0.0', '', '', 'Darmo Hill R-22', '', '0315681005', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('190', 'PMB2015150167', null, 'Wilson Gunawan', '', '', null, '1', '', '0', '5', '0', 'L', 'Surabaya', '2012-06-06', '', '0', '0.0', '0.0', '', '', 'Dharmahusada Indah Selatan D229', '', '083831724433', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('192', 'PMB2014150166', null, 'Grace Victoria Santoso', '', '', null, '1', '', '0', '0', '1', 'P', 'Surabaya', '2008-03-19', '', '0', '0.0', '0.0', '', '', 'Raya Wiguna Utara 36', '', '8703821', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('193', 'PMB2014150193', null, 'Jessica Joyce Natania', '', '', null, '1', '', '0', '5', '1', 'P', 'Surabaya', '2008-09-01', '', '0', '0.0', '0.0', '', '', 'Grha Tirta Akasia 95, Waru', '', '8557843', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('194', 'PMB2014150194', null, 'Giselle Cathryne Victoria Estelle', '', '', null, '1', '', '0', '5', '1', 'P', 'Surabaya', '2008-09-27', '', '0', '0.0', '0.0', '', '', 'Rungkut Lor RL 2B/22', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('195', 'PMB2014150195', null, 'Johannes Kennard Sujanto', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2008-10-07', '', '0', '0.0', '0.0', '', '', 'Nirwana Executive EE-57', '', '8705919', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('196', 'PMB2014150196', null, 'Joshua Ivanson Lie', '', '', null, '1', '', '0', '5', '1', 'L', 'Atlanta', '2008-05-21', '', '0', '0.0', '0.0', '', '', 'Lebak Jaya III A Utara / 5', '', '3894131', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('197', 'PMB2014150197', null, 'Louisel Yang', '', '', null, '1', '', '0', '5', '1', 'P', 'Surabaya', '2008-10-22', '', '0', '0.0', '0.0', '', '', 'Wiguna Tengah XII / 11', '', '71571076', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('198', 'PMB2014150198', null, 'Marcel Johannes Kraus', '', '', null, '1', '', '0', '5', '1', 'L', 'Frankenthal', '2008-04-29', '', '0', '0.0', '0.0', '', '', 'Ngagel Jaya Selatan II/ 7', '', '0315025206', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('199', 'PMB2014150199', null, 'Michael Yang Rahardjo', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2008-07-11', '', '0', '0.0', '0.0', '', '', 'Nginden Intan Timur E2 // 22', '', '5944108', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('200', 'PMB2014150200', null, 'Reyhan Adi Jayawasita', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2008-07-17', '', '0', '0.0', '0.0', '', '', 'Gry Permata Gedangan BII/3, Sdj', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('201', 'PMB2014150201', null, 'Shayfer Ann Yapari', '', '', null, '1', '', '0', '5', '1', 'P', 'Surabya', '2008-03-20', '', '0', '0.0', '0.0', '', '', 'Tenggilis Mejoyo AI / 9', '', '8497451', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('202', 'PMB2014150202', null, 'Steven Grant Santoso', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2008-01-07', '', '0', '0.0', '0.0', '', '', 'Delta Raya Utara 76, Sda', '', '8555428', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('203', 'PMB2014150203', null, 'Alveria Evangeline Suthandaru', '', '', null, '1', '', '0', '5', '1', 'P', 'Surabaya', '2008-07-14', '', '0', '0.0', '0.0', '', '', 'Rungkut Asri Barat III/8', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('204', 'PMB2014150204', null, 'Chad Sia', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2008-03-30', '', '0', '0.0', '0.0', '', '', 'Galaxi Bumi Permai I-3/ 12', '', '0315996061', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('205', 'PMB2014150205', null, 'Chrisfusion Verden Adiwinata', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2008-03-14', '', '0', '0.0', '0.0', '', '', 'Taman Wiguna Timur Regency 37', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('206', 'PMB2014150206', null, 'Dylan Archer Alexander', '', '', null, '1', '', '0', '4', '1', 'L', 'Sydney', '2008-01-23', '', '0', '0.0', '0.0', '', '', 'Virginia Regency E8-2, Pakuwon City', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('207', 'PMB2014150207', null, 'John Winston Wilhelmus', '', '', null, '1', '', '0', '0', '1', 'L', 'Surabaya', '2008-12-16', '', '0', '0.0', '0.0', '', '', 'Nanas Utara I / 30 PCI', '', '70157779', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('209', 'PMB2014150208', null, 'Jonathan Christian Thomasoey', '', '', null, '1', '', '0', '4', '1', 'L', 'Surabaya', '2008-07-10', '', '0', '0.0', '0.0', '', '', 'Pakuwon City, Villa Riviera B1-12', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('211', 'PMB2014150210', null, 'Joyleen Huang', '', '', null, '1', '', '0', '1', '1', 'L', '', '2008-01-08', '', '0', '0.0', '0.0', '', '', 'Juanda Regency A-11', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('212', 'PMB2014150212', null, 'Kevin Ade Pratama', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2008-09-26', '', '0', '0.0', '0.0', '', '', 'Tropodo Indah K-12', '', '70579680', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('213', 'PMB2014150213', null, 'Matthew Ivanson Lie', '', '', null, '1', '', '0', '5', '1', 'L', 'Atlanta', '2008-05-21', '', '0', '0.0', '0.0', '', '', 'Lebak Jaya III A Utara / 5', '', '3894131', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('214', 'PMB2014150214', null, 'Oeitian James Ignatius', '', '', null, '1', '', '0', '4', '1', 'L', 'Surabaya', '2008-02-12', '', '0', '0.0', '0.0', '', '', 'Apt. Marina Lt.11-2', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('215', 'PMB2014150215', null, 'Rebecca Chen', '', '', null, '1', '', '0', '5', '1', 'P', 'New York', '2008-04-01', '', '0', '0.0', '0.0', '', '', 'Wonorejo Permai Utara BB-515 / VII -28', '', '8781745', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('216', 'PMB2014150216', null, 'Shannon Susanto', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2008-08-26', '', '0', '0.0', '0.0', '', '', 'Nginden Intan Barat C1-28', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('217', 'PMB2014150217', null, 'Sheby Netisha Tanjung', '', '', null, '1', '', '0', '5', '1', 'P', 'Surabaya', '2008-02-11', '', '0', '0.0', '0.0', '', '', 'Pondok Citra Eksekutif E-1', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('218', 'PMB2014150218', null, 'Abigail Evangelista Hertanto', '', '', null, '1', '', '0', '5', '1', 'P', 'Surabaya', '2008-05-11', '', '0', '0.0', '0.0', '', '', 'Manyar Adi 2/3 Sby', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('219', 'PMB2014150219', null, 'Axel Maynard Abdi', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2008-06-16', '', '0', '0.0', '0.0', '', '', 'Penjaringan Sari II/40', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('220', 'PMB2014150220', null, 'Catherine Sharon Ohana Kohartono', '', '', null, '1', '', '0', '4', '1', 'P', 'Surabaya', '2007-08-13', '', '0', '0.0', '0.0', '', '', 'Dinoyo Tangsi I/20', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('221', 'PMB2014150221', null, 'Cruz Sia', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2006-11-05', '', '0', '0.0', '0.0', '', '', 'Galaxy Bumi Permai I-3/12', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('222', 'PMB2014150222', null, 'Hieronimus Gilbert', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2006-11-11', '', '0', '0.0', '0.0', '', '', 'Bendul Merisi IX/67', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('223', 'PMB2014150223', null, 'Ivania Nathalia Louis Sumolang', '', '', null, '1', '', '0', '5', '1', 'P', 'Manado', '2007-01-07', '', '0', '0.0', '0.0', '', '', 'Semanggi Green Lake B2/42', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('224', 'PMB2014150224', null, 'Jackie Muniaga', '', '', null, '1', '', '0', '1', '1', 'L', 'Jakarta', '2007-07-31', '', '0', '0.0', '0.0', '', '', 'Parang Barong 19A', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('225', 'PMB2014150225', null, 'Jessica', '', '', null, '1', '', '0', '5', '1', 'P', 'Surabaya', '2006-12-14', '', '0', '0.0', '0.0', '', '', 'Prapen Indah Timur IV/AA-49', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('226', 'PMB2014150226', null, 'Jesslyn Chrysler Hung', '', '', null, '1', '', '0', '5', '1', 'P', 'Surabaya', '2007-11-28', '', '0', '0.0', '0.0', '', '', 'Sinar Gedangan A-3a, Sda', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('227', 'PMB2014150187', null, 'Jonathan Jordan Dave', '', '', null, '1', '', '0', '5', '0', 'L', 'Surabaya', '2006-05-03', '', '0', '0.0', '0.0', '', '', 'Baruk Tengah XII/CC-107', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('228', 'PMB2014150228', null, 'Jophelia Christabel Thomas', '', '', null, '1', '', '0', '5', '0', 'P', 'Surabaya', '2007-09-18', '', '0', '0.0', '0.0', '', '', 'Nginden Intan Timur VI / 67', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('232', 'PMB2014150227', null, 'Jonathan Jordan Dave', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2007-05-03', '', '0', '0.0', '0.0', '', '', 'Baruk Tengah XII/CC-107', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('233', 'PMB2014150233', null, 'Jophelia Christabel Thomas', '', '', null, '1', '', '0', '5', '1', 'P', 'Surabaya', '2007-09-18', '', '0', '0.0', '0.0', '', '', 'Nginden Intan Timur VI / 67', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('234', 'PMB2014150234', null, 'Joycelyn Kezia', '', '', null, '1', '', '0', '5', '1', 'P', 'Surabaya', '2007-05-06', '', '0', '0.0', '0.0', '', '', 'Kalikepiting III/17', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('235', 'PMB2014150235', null, 'Kevin Keane', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2007-01-30', '', '0', '0.0', '0.0', '', '', 'Kutisari Indah Utara VI/10', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('236', 'PMB2014150236', null, 'Michelle Dominique', '', '', null, '1', '', '0', '5', '1', 'P', 'Balikpapan', '2007-07-05', '', '0', '0.0', '0.0', '', '', 'Panjang Jiwo Permai I - 17', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('237', 'PMB2014150237', null, 'Ray Thadeus Lee', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2007-08-09', '', '0', '0.0', '0.0', '', '', 'Doho No. 4', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('238', 'PMB2014150238', null, 'Shannon Audrey', '', '', null, '1', '', '0', '4', '1', 'P', 'Surabaya', '2007-03-13', '', '0', '0.0', '0.0', '', '', 'Baruk Utara 15/12 ND-117', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('239', 'PMB2014150239', null, 'Aileen Christy Elysia', '', '', null, '1', '', '0', '5', '1', 'P', 'Surabaya', '2007-10-20', '', '0', '0.0', '0.0', '', '', 'Wedoro Regency 19 Waru, Sda', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('240', 'PMB2014150240', null, 'Beatrice Wiryawan', '', '', null, '1', '', '0', '5', '1', 'P', 'Surabaya', '2007-04-14', '', '0', '0.0', '0.0', '', '', 'Manyar Tirtoasri 4 /16', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('241', 'PMB2014150241', null, 'Caitlyn Gunawan', '', '', null, '1', '', '0', '4', '1', 'L', 'Surabaya', '2007-05-08', '', '0', '0.0', '0.0', '', '', 'Medokan Ayu II/O-18', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('242', 'PMB2014150242', null, 'Christiansen Cruz Adiwinata', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2007-01-29', '', '0', '0.0', '0.0', '', '', 'Taman Wiguna Timur Regency 37', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('243', 'PMB2014150243', null, 'Gabriel Wilson Tejokusumo', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2007-10-27', '', '0', '0.0', '0.0', '', '', 'Kertajaya Indah VII/II (G 120)', '', '70612238', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('244', 'PMB2014150244', null, 'Gavriella Angeline', '', '', null, '1', '', '0', '5', '1', 'P', 'Surabaya', '2007-07-09', '', '0', '0.0', '0.0', '', '', '', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('246', 'PMB2014150245', null, 'Gemma Ebelina Alexaviere', '', '', null, '1', '', '0', '4', '1', 'P', 'Surabaya', '2007-01-02', '', '0', '0.0', '0.0', '', '', 'Galaxi Bumi Permai TG 2/ 17', '', '5964466', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('247', 'PMB2014150247', null, 'Gwyneth Feodora', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2007-09-01', '', '0', '0.0', '0.0', '', '', 'Florence J-5/9, Pakuwon', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('248', 'PMB2014150248', null, 'Jason Tungary', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2007-02-22', '', '0', '0.0', '0.0', '', '', 'Wonorejo Permai Selatan CC-598', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('249', 'PMB2014150249', null, 'Jessica Lynn Hartanto', '', '', null, '1', '', '0', '5', '1', 'P', 'Surabaya', '2007-09-02', '', '0', '0.0', '0.0', '', '', 'Kutisari Utara VII/38', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('250', 'PMB2014150250', null, 'Joel Lois Tanujaya', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2007-10-05', '', '0', '0.0', '0.0', '', '', 'Anjasmoro Kav. 41 Wistrop, Sda', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('251', 'PMB2014150251', null, 'Jonathan Ariel', '', '', null, '1', '', '0', '5', '1', 'L', 'Sidoarjo', '2007-02-23', '', '0', '0.0', '0.0', '', '', 'Jemursari XVIII/A-26 Sby', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('252', 'PMB2014150252', null, 'Joycelyn Angelica Jap', '', '', null, '1', '', '0', '5', '1', 'P', 'Surabaya', '2008-01-28', '', '0', '0.0', '0.0', '', '', 'Lebak Arum IV / 23', '', '3890105', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('253', 'PMB2014150253', null, 'Kenneth William', '', '', null, '1', '', '0', '5', '1', 'L', 'LA', '2007-04-20', '', '0', '0.0', '0.0', '', '', 'Dharmahusada Utara VII/25', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('254', 'PMB2014150254', null, 'Kenny Ezekiel Hartanto', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2007-05-15', '', '0', '0.0', '0.0', '', '', 'Wiguna Tengah 9/24', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('255', 'PMB2014150255', null, 'Stephan Wibisono', '', '', null, '1', '', '0', '1', '1', 'L', 'Surabaya', '2007-09-22', '', '0', '0.0', '0.0', '', '', 'Manyar Kertoarjo VIII/75', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('256', 'PMB2014150256', null, 'Brian Scott Alexander', '', '', null, '1', '', '0', '4', '1', 'L', 'Surabaya', '2006-08-01', '', '0', '0.0', '0.0', '', '', 'Virginia Regency E8-2, Pakuwon City', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('257', 'PMB2014150257', null, 'Charlene Young Cynipta', '', '', null, '1', '', '0', '0', '1', 'P', 'Surabaya', '2006-05-06', '', '0', '0.0', '0.0', '', '', 'Manyar Praja III/D-84', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('258', 'PMB2014150258', null, 'Cheryl Wang', '', '', null, '1', '', '0', '1', '1', 'P', 'Surabaya', '2006-09-22', '', '0', '0.0', '0.0', '', '', 'Nanas Utara I/18 PCI', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('259', 'PMB2014150259', null, 'Edbert Waskita', '', '', null, '1', '', '0', '1', '1', 'L', 'Surabaya', '2006-06-10', '', '0', '0.0', '0.0', '', '', 'Medokan Ayu MA I blok O / 39', '', '8720029', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('260', 'PMB2014150260', null, 'Gracia Florentina Witdodo', '', '', null, '1', '', '0', '5', '1', 'P', 'Surabaya', '2006-02-16', '', '0', '0.0', '0.0', '', '', 'Wiguna Timur XVIII/30', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('261', 'PMB2014150261', null, 'Grant Amadeus Lee', '', '', null, '1', '', '0', '5', '1', 'L', 'Mojokerto', '2006-01-02', '', '0', '0.0', '0.0', '', '', 'Doho No. 4', '', '5678948', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('262', 'PMB2014150262', null, 'Gregorius Reynard Sujanto', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2006-03-06', '', '0', '0.0', '0.0', '', '', 'Nirwana Executive EE-57', '', '8705919', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('263', 'PMB2014150263', null, 'Jason Timothy Dewanto', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2006-11-05', '', '0', '0.0', '0.0', '', '', 'Galaxy Bumi Permai K3-2', '', '5921301', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('264', 'PMB2014150264', null, 'Jeremy Noel', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2006-01-20', '', '0', '0.0', '0.0', '', '', 'Klampis Harapan III/14', '', '5948369', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('265', 'PMB2014150265', null, 'Jessie Huang', '', '', null, '1', '', '0', '1', '1', 'P', '', '2006-08-31', '', '0', '0.0', '0.0', '', '', 'Juanda Regency A-11', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('266', 'PMB2014150266', null, 'Marvellius Susanto', '', '', null, '1', '', '0', '0', '1', 'L', 'Surabaya', '2006-05-08', '', '0', '0.0', '0.0', '', '', 'Prapen Mas AD 25', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('267', 'PMB2014150267', null, 'Richard Kristanto', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2006-04-08', '', '0', '0.0', '0.0', '', '', 'Nirwana Executive CC-411 A', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('268', 'PMB2014150268', null, 'Staceyca Abiel Wibisono', '', '', null, '1', '', '0', '5', '1', 'P', 'Surabaya', '2006-05-04', '', '0', '0.0', '0.0', '', '', 'Medokan Ayu Blok MA III -O No. 5', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('269', 'PMB2014150269', null, 'Vanny Valencia', '', '', null, '1', '', '0', '5', '1', 'P', 'Surabaya', '2006-02-14', '', '0', '0.0', '0.0', '', '', 'Wiguna Selatan VI/21', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('270', 'PMB2014150270', null, 'Xavio Emanuel Retanubun', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2006-01-29', '', '0', '0.0', '0.0', '', '', 'Barata Jaya XXI/29', '', '5041211', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('271', 'PMB2014150271', null, 'Cheryl Glinka', '', '', null, '1', '', '0', '0', '1', 'P', 'Surabaya', '2006-11-15', '', '0', '0.0', '0.0', '', '', 'Pantai Mentari R 9A', '', '70479642', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('272', 'PMB2014150272', null, 'Dylan Victorio Faith', '', '', null, '1', '', '0', '0', '1', 'L', '', '2006-11-05', '', '0', '0.0', '0.0', '', '', 'Rungkut Lor RL 5L/15', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('273', 'PMB2014150273', null, 'Eileen Cynthia Mark', '', '', null, '1', '', '0', '5', '1', 'P', 'Surabaya', '2006-10-24', '', '0', '0.0', '0.0', '', '', 'Kendangsari III / 4A', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('274', 'PMB2014150274', null, 'Francise Rochelle Widodo', '', '', null, '1', '', '0', '0', '1', 'P', 'Surabaya', '2006-06-13', '', '0', '0.0', '0.0', '', '', 'Wonorejo Permai Selatan I/64', '', '8722412', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('275', 'PMB2014150275', null, 'Hafizd Dharma Saputra Hardiono', '', '', null, '1', '', '0', '5', '1', 'L', '', '2006-10-12', '', '0', '0.0', '0.0', '', '', 'Margono Wongso P // Indahwati', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('276', 'PMB2014150276', null, 'Hellen Septiani Jap', '', '', null, '1', '', '0', '5', '1', 'P', 'Surabaya', '2006-09-08', '', '0', '0.0', '0.0', '', '', 'Lebak Arum IV / 23', '', '3890105', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('277', 'PMB2014150277', null, 'Jennifer Quinn Santoso', '', '', null, '1', '', '0', '5', '1', 'P', 'Surabaya', '2006-04-22', '', '0', '0.0', '0.0', '', '', 'Delta Raya Utara 76, Sda', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('278', 'PMB2014150278', null, 'Jonathan Efant Soeharto', '', '', null, '1', '', '0', '0', '1', 'L', 'Surabaya', '2006-02-22', '', '0', '0.0', '0.0', '', '', 'Kutisari Indah Utara III/20', '', '8433325', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('279', 'PMB2014150279', null, 'Nicholas Zhu', '', '', null, '1', '', '0', '4', '1', 'L', 'Surabaya', '2006-06-10', '', '0', '0.0', '0.0', '', '', 'Pantai Mentari WW-19', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('280', 'PMB2014150280', null, 'Oeitian Verrel Ignatius', '', '', null, '1', '', '0', '4', '1', 'L', 'Surabaya', '2006-04-12', '', '0', '0.0', '0.0', '', '', 'Apt. Marina Lt.11-2', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('281', 'PMB2014150281', null, 'Richelle Stephanie Notohadipuro', '', '', null, '1', '', '0', '5', '1', 'P', 'Surabaya', '2006-06-08', '', '0', '0.0', '0.0', '', '', 'Siw Notohadipuro // Lim Agnes', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('282', 'PMB2014150282', null, 'Thea Guntur Kusumanagara', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2006-08-18', '', '0', '0.0', '0.0', '', '', 'Putra Bangsa II/63 Medokan Ayu', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('283', 'PMB2015150191', null, 'Abigail Shelina Lesmana', '', '', null, '1', '', '0', '5', '0', 'P', 'surabaya', '2011-04-12', '', '0', '0.0', '0.0', '', '', 'Jl. Pucang Sawit 58', '', '08155058228', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('284', 'PMB2014150283', null, 'Yenlung Calvin Tanusa', '', '', null, '1', '', '0', '1', '1', 'L', 'Surabaya', '2006-10-16', '', '0', '0.0', '0.0', '', '', 'Raya Panjang Jiwo Permai 42', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('285', 'PMB2014150285', null, 'Yoel Camilo Febriyanto', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2006-02-22', '', '0', '0.0', '0.0', '', '', 'Bumi Marina Emas Barat V/34', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('286', 'PMB2014150286', null, 'Adeline Theodora', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2004-11-10', '', '0', '0.0', '0.0', '', '', 'Baruk Barat 3/ B 123', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('287', 'PMB2014150287', null, 'Bianca Rosarie Ong', '', '', null, '1', '', '0', '4', '1', 'P', 'Surabaya', '2005-12-14', '', '0', '0.0', '0.0', '', '', 'Laguna Regency D7/10', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('288', 'PMB2014150288', null, 'Cynthia Tjahyadi', '', '', null, '1', '', '0', '5', '1', 'P', 'Surabaya', '2005-11-25', '', '0', '0.0', '0.0', '', '', 'Jimbaran G1/ 24', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('289', 'PMB2014150289', null, 'Daniel Gunawan', '', '', null, '1', '', '0', '4', '1', 'L', 'Surabaya', '2005-01-01', '', '0', '0.0', '0.0', '', '', 'Medokan Ayu II/O-18', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('290', 'PMB2014150290', null, 'Elvina Waskita Siemjaya', '', '', null, '1', '', '0', '4', '1', 'P', 'Surabaya', '2004-12-04', '', '0', '0.0', '0.0', '', '', 'Medokan Ayu MA I Blok O-39', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('291', 'PMB2014150291', null, 'Gwynne Purnama', '', '', null, '1', '', '0', '5', '1', 'P', '', '2005-09-02', '', '0', '0.0', '0.0', '', '', 'Rk Panji Makmur D-10, Jl. Panj. Jiwo 46', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('292', 'PMB2014150292', null, 'Jason Johanes Siwabessi', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2004-11-01', '', '0', '0.0', '0.0', '', '', 'Rajawali 53, Rewin', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('294', 'PMB2014150293', null, 'Jeremy Philip Dewanto', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2005-11-12', '', '0', '0.0', '0.0', '', '', 'Galaxi Bumi Permai K3/ 2', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('295', 'PMB2014150295', null, 'Jesselyn Christabel Thomas', '', '', null, '1', '', '0', '5', '1', 'P', 'Surabaya', '2005-06-29', '', '0', '0.0', '0.0', '', '', 'Nginden Intan Timur VI / 67', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('296', 'PMB2014150296', null, 'Joel Wilson', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2009-05-08', '', '0', '0.0', '0.0', '', '', 'Ambengan 58', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('297', 'PMB2014150297', null, 'Kenneth Sujayaputera', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2005-04-07', '', '0', '0.0', '0.0', '', '', 'Dharmahusada Mas BB-17', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('298', 'PMB2014150298', null, 'Maedeline Jane Gotama', '', '', null, '1', '', '0', '5', '1', 'P', 'Surabaya', '2005-07-04', '', '0', '0.0', '0.0', '', '', 'Purimas Regency B5/6, Rungk. Madya', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('299', 'PMB2014150299', null, 'Melvern Yeremiah Hartono', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2005-07-03', '', '0', '0.0', '0.0', '', '', 'Rungkut Asri Barat V/7', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('300', 'PMB2014150300', null, 'Mikhael Christalio', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2005-11-26', '', '0', '0.0', '0.0', '', '', 'Kutisari Indah Sel. IV/28', '', '8434929', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('301', 'PMB2014150301', null, 'Samuel Abie Maximus', '', '', null, '1', '', '0', '4', '1', 'L', 'Surabaya', '2005-01-03', '', '0', '0.0', '0.0', '', '', 'Galaxi Bumi Permai TG 2/ 17', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('302', 'PMB2014150302', null, 'Tiffany Gracita', '', '', null, '1', '', '0', '5', '1', 'P', 'Surabaya', '2005-12-06', '', '0', '0.0', '0.0', '', '', 'Graha Tirta Akasia 95 Waru', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('303', 'PMB2014150303', null, 'Andi Cahya Santosa', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2003-07-19', '', '0', '0.0', '0.0', '', '', 'Rungkut Mapan Tim. IX/ EI - 18', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('304', 'PMB2014150304', null, 'Ayaka Angela', '', '', null, '1', '', '0', '5', '1', 'P', 'Surabaya', '2004-09-12', '', '0', '0.0', '0.0', '', '', 'Klampis harapan 3/ 14', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('305', 'PMB2014150305', null, 'Christabelle Serafina', '', '', null, '1', '', '0', '5', '1', 'P', 'Surabaya', '2004-12-05', '', '0', '0.0', '0.0', '', '', 'Jemursari XVIII/A-26 Sby', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('306', 'PMB2014150306', null, 'Clement Clint Santoso', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2004-11-02', '', '0', '0.0', '0.0', '', '', 'Delta Raya Ut. 76, Sda', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('307', 'PMB2014150307', null, 'Clifford Hans Gotama', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2004-08-20', '', '0', '0.0', '0.0', '', '', 'Purimas Regency B5/6, Rungk. Madya', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('308', 'PMB2014150308', null, 'Cliffton Faith', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2004-10-17', '', '0', '0.0', '0.0', '', '', 'Galaxi Bumi Permai N4/25', '', '5927200', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('309', 'PMB2014150309', null, 'Debrina Tanesya Jovanka', '', '', null, '1', '', '0', '4', '1', 'P', 'Surabaya', '2003-12-02', '', '0', '0.0', '0.0', '', '', 'Taman Wisata Tropodo F-10', '', '8672169', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('310', 'PMB2014150310', null, 'Faustine Janice Kohar', '', '', null, '1', '', '0', '5', '1', 'P', 'Surabaya', '2004-06-18', '', '0', '0.0', '0.0', '', '', 'Kedung Tarukan 118', '', '5936127', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('311', 'PMB2014150311', null, 'Ferdinand Nathan Soetedjo', '', '', null, '1', '', '0', '4', '1', 'L', 'Surabaya', '2004-09-04', '', '0', '0.0', '0.0', '', '', 'Puri Mas Jl. Pecatu E II / 12', '', '8781437', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('312', 'PMB2014150312', null, 'Gracelyne Christabel Halim', '', '', null, '1', '', '0', '5', '1', 'P', 'Surabaya', '2004-05-25', '', '0', '0.0', '0.0', '', '', 'Mulyosari I/161', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('313', 'PMB2014150313', null, 'Joel Bezaliel Santoso', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2004-10-21', '', '0', '0.0', '0.0', '', '', '', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('314', 'PMB2014150314', null, 'John Felix Wihelmus', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2004-08-28', '', '0', '0.0', '0.0', '', '', 'Nanas Utara I / 30 PCI', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('315', 'PMB2014150315', null, 'Kenneshia Aeriel Haryanto', '', '', null, '1', '', '0', '5', '1', 'P', 'Surabaya', '2004-05-26', '', '0', '0.0', '0.0', '', '', 'Kutisari Indah Ut. 4/ 63', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('316', 'PMB2014150316', null, 'Kenny Robin Limanjaya', '', '', null, '1', '', '0', '1', '1', 'L', 'Surabaya', '2004-10-19', '', '0', '0.0', '0.0', '', '', 'Barata Jaya XV/ 10', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('317', 'PMB2015150284', null, 'Richie Calvin Zhuang', '', '', null, '1', '', '0', '0', '0', 'L', '', '2011-03-24', '', '0', '0.0', '0.0', '', '', 'Jl. Mangga 2/E-253 Pondok Tjandra', '', '085731392841', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('318', 'PMB2015150318', null, 'Jacob Heavenson', '', '', null, '1', '', '0', '0', '0', 'L', '', '2009-12-31', '', '0', '0.0', '0.0', '', '', '', '', '085755208888', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('319', 'PMB2014150317', null, 'Sean Francis Xavier Kho', '', '', null, '1', '', '0', '4', '1', 'L', 'Australia', '2003-12-03', '', '0', '0.0', '0.0', '', '', 'Jemur Sari 181', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('320', 'PMB2014150320', null, 'Stephanie Abiel Wibisono', '', '', null, '1', '', '0', '5', '1', 'P', 'Surabaya', '2004-10-20', '', '0', '0.0', '0.0', '', '', 'Medokan Ayu,Blok MA 3/O5', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('321', 'PMB2014150321', null, 'Yuhwa Evelyn Tanusa', '', '', null, '1', '', '0', '1', '1', 'P', 'Surabaya', '2004-09-22', '', '0', '0.0', '0.0', '', '', 'Raya Panjang Jiwo Permai 42', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('322', 'PMB2014150322', null, 'Brian Errando Limanjaya', '', '', null, '1', '', '0', '1', '1', 'L', 'Surabaya', '2003-03-10', '', '0', '0.0', '0.0', '', '', 'Barata Jaya XV/ 10', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('323', 'PMB2014150323', null, 'Esther Ann Tanudiredja', '', '', null, '1', '', '0', '5', '1', 'P', 'Surabaya', '2003-05-04', '', '0', '0.0', '0.0', '', '', 'Ambengan 58', '', '5343088', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('324', 'PMB2014150324', null, 'Evan Waskita Siemjaya', '', '', null, '1', '', '0', '1', '1', 'L', 'Surabaya', '2002-11-26', '', '0', '0.0', '0.0', '', '', 'Medokan Ayu I/ O-39', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('325', 'PMB2014150325', null, 'Feliciana Wihelmus', '', '', null, '1', '', '0', '5', '1', 'P', 'Surabaya', '2003-02-12', '', '0', '0.0', '0.0', '', '', 'Nanas Utara I / 30 PCI', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('326', 'PMB2014150326', null, 'Henry Ryan Hartono', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2003-06-18', '', '0', '0.0', '0.0', '', '', 'Rungkut Asri Barat V/7', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('327', 'PMB2014150327', null, 'Kristoforus Stanley Tjahya Kusuma', '', '', null, '1', '', '0', '4', '1', 'L', 'Surabaya', '2003-11-01', '', '0', '0.0', '0.0', '', '', 'Nginden Intan Barat C4/ 22', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('328', 'PMB2014150328', null, 'Luisa Angela Hadi', '', '', null, '1', '', '0', '4', '1', 'P', 'Surabaya', '2003-07-10', '', '0', '0.0', '0.0', '', '', 'Wonorejo Permai Sel. V-2 / CC-387', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('329', 'PMB2014150329', null, 'Nichole Yang', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2003-06-06', '', '0', '0.0', '0.0', '', '', 'Pondok Mutiara J-4 Sda.', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('330', 'PMB2014150330', null, 'Odilia Irene', '', '', null, '1', '', '0', '5', '1', 'P', 'Surabaya', '2003-02-26', '', '0', '0.0', '0.0', '', '', 'Kutisari XII A / 4', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('331', 'PMB2014150331', null, 'Winston Sujayaputera', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2003-07-29', '', '0', '0.0', '0.0', '', '', 'Dharmahusada Mas BB-17', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('332', 'PMB2015150319', null, 'Ethan Nathanael Indrawan', '', '', null, '1', '', '0', '0', '0', 'L', '', '2010-12-30', '', '0', '0.0', '0.0', '', '', '', '', '08165432980', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('337', 'PMB2014150294', null, 'Aaron Elliot Tandra (Aaron)', '', '', null, '1', '', '0', '4', '0', 'L', 'Jakarta', '2008-10-13', '', '0', '0.0', '0.0', '', '', 'Graha Family C-60', '', '03134022088', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('338', 'PMB2014150338', null, 'Allen Wijaya Alie (Allen)', '', '', null, '1', '', '0', '5', '0', 'L', 'Surabaya', '2008-10-19', '', '0', '0.0', '0.0', '', '', 'Satelit Indah 6 JN No. 5', '', '0317318668', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('339', 'PMB2014150339', null, 'Calista Gracious Susanto (Calista)', '', '', null, '1', '', '0', '5', '0', 'L', 'Surabaya', '2008-07-13', '', '0', '0.0', '0.0', '', '', 'Wisata Bukit Mas C1 / 8', '', '0317527285', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('340', 'PMB2014150340', null, 'Chelsey Felicia Sugianto (Chelsey)', '', '', null, '1', '', '0', '5', '0', 'L', 'Surabaya', '2008-02-18', '', '0', '0.0', '0.0', '', '', 'Satelit Timur II Blok JJ 11-12', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('341', 'PMB2014150341', null, 'Christopher Njoto Imanuel (Christopher)', '', '', null, '1', '', '0', '5', '0', 'L', 'Surabaya', '2008-12-25', '', '0', '0.0', '0.0', '', '', 'Petemon I/97', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('342', 'PMB2014150342', null, 'David Anderson Wistorohardjo (David)', '', '', null, '1', '', '0', '5', '0', 'L', 'Surabaya', '2007-12-28', '', '0', '0.0', '0.0', '', '', 'Kupang Baru I/99', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('343', 'PMB2014150343', null, 'Emily Yongnardi (Emmy)', '', '', null, '1', '', '0', '5', '0', 'P', 'Surabaya', '2008-02-12', '', '0', '0.0', '0.0', '', '', 'Darmo Indah Timur G-59', '', '0317311149', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('344', 'PMB2014150344', null, 'Fidelia Theodore Chang (Fidelia)', '', '', null, '1', '', '0', '5', '0', 'P', 'Surabaya', '2008-03-12', '', '0', '0.0', '0.0', '', '', 'Darmo Hill Blok P-12', '', '0315636338', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('345', 'PMB2014150345', null, 'Filbert Wellington (Filbert)', '', '', null, '1', '', '0', '1', '0', 'L', 'Surabaya', '2008-05-14', '', '0', '0.0', '0.0', '', '', 'The Mansion PF-5/22', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('346', 'PMB2014150332', null, 'Richard Kurniawan', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2003-06-26', '', '0', '0.0', '0.0', '', '', 'Kutisari XII A / 4', '', '8482969', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('351', 'PMB2014150346', null, 'Aida Estella Budiyono', '', '', null, '1', '', '0', '4', '1', 'P', 'Surabaya', '2002-03-12', '', '0', '0.0', '0.0', '', '', 'Wisata Bukit Mas B7/2', '', '7534507', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('352', 'PMB2014150352', null, 'Angela Joan Parmenas', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2002-09-24', '', '0', '0.0', '0.0', '', '', 'Sukomanunggal Jaya XI/XL 25, Surabaya', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('353', 'PMB2014150353', null, 'Bryan Nathaniel Santoso', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2002-02-03', '', '0', '0.0', '0.0', '', '', 'Darmo Baru Barat IX/23 Surabaya', '', '7315904', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('354', 'PMB2014150354', null, 'Cathlin Valerie', '', '', null, '1', '', '0', '5', '1', 'P', 'Surabaya', '2002-08-27', '', '0', '0.0', '0.0', '', '', 'Taman Gapura E1/39 Surabaya', '', '7457111', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('355', 'PMB2014150355', null, 'Christopher Gunarto', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2002-01-09', '', '0', '0.0', '0.0', '', '', 'Taman Darmo Harapan EG-2, Surabaya', '', '7324861', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('356', 'PMB2014150356', null, 'Darren Boesono', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2002-07-28', '', '0', '0.0', '0.0', '', '', 'Pakuwon Indah VBR 1, PC3-12 Sby', '', '7391975', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('357', 'PMB2014150357', null, 'David Deandre', '', '', null, '1', '', '0', '5', '1', 'L', 'Palembang', '2002-12-20', '', '0', '0.0', '0.0', '', '', 'Jl. Darmo Baru Barat XI/16 Surabaya', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('358', 'PMB2014150358', null, 'Eric Tedja', '', '', null, '1', '', '0', '4', '1', 'L', '', '0000-00-00', '', '0', '0.0', '0.0', '', '', 'Raya Bima Sakti GS-37B THS, Surabaya', '', '7345510', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('359', 'PMB2014150359', null, 'Felix Ricardo Thuatja', '', '', null, '1', '', '0', '1', '1', 'L', 'Surabaya', '2002-06-07', '', '0', '0.0', '0.0', '', '', 'Ngagel 17 RK 12A, Surabaya', '', '5014438', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('361', 'PMB2014150360', null, 'Hongjoe Hartono', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2002-08-25', '', '0', '0.0', '0.0', '', '', 'Permata Safira B1/3 Surabaya', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('362', 'PMB2014150362', null, 'Ivana Tejokusumo', '', '', null, '1', '', '0', '5', '1', 'P', 'Surabaya', '2002-11-12', '', '0', '0.0', '0.0', '', '', 'Darmo Baru Barat I / 34 Surabaya', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('363', 'PMB2014150363', null, 'Jonathan Tejakusuma', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2002-01-07', '', '0', '0.0', '0.0', '', '', 'Pakuwon Indah AT 4/16 Surabaya', '', '7523311', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('364', 'PMB2014150364', null, 'Julianne Annabelle', '', '', null, '1', '', '0', '5', '1', 'P', 'Surabaya', '2002-06-24', '', '0', '0.0', '0.0', '', '', 'Graha Famili O-101-A Surabaya', '', '5620263', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('365', 'PMB2014150365', null, 'Katarina Kartika', '', '', null, '1', '', '0', '0', '1', 'P', '', '0000-00-00', '', '0', '0.0', '0.0', '', '', '', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('366', 'PMB2014150366', null, 'Kent Keitaro Chandra', '', '', null, '1', '', '0', '4', '1', 'L', 'Surabaya', '2002-04-30', '', '0', '0.0', '0.0', '', '', 'Puri Sentra Raya PS 1/37, Citraland', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('367', 'PMB2014150367', null, 'Martinus Yudha', '', '', null, '1', '', '0', '4', '1', 'L', 'Surabaya', '2001-11-07', '', '0', '0.0', '0.0', '', '', 'Puri Sentra Raya EXT PS 1-50 Q ,Citraland', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('368', 'PMB2014150368', null, 'Maximillian Donovan', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2002-01-26', '', '0', '0.0', '0.0', '', '', 'Vila Taman Telaga TJ 2/52, Surabaya', '', '7443444', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('369', 'PMB2014150369', null, 'Michael Christopher Jerrel', '', '', null, '1', '', '0', '4', '1', 'L', 'Surabaya', '2002-02-25', '', '0', '0.0', '0.0', '', '', 'Darmo Baru Barat XI/II Surabaya', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('370', 'PMB2014150370', null, 'Stanley Sigit', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2002-06-16', '', '0', '0.0', '0.0', '', '', 'Pakuwon Indah ATL-23 Surabaya', '', '7535518', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('371', 'PMB2014150371', null, 'Wilson Tjowanta', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2002-02-17', '', '0', '0.0', '0.0', '', '', 'Pakis Bukit Asoka R-18, Surabaya', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('372', 'PMB2014150372', null, 'Audrey Thoenie Pangestu', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2002-04-13', '', '0', '0.0', '0.0', '', '', 'Simp. Darmo Permai Sel XIX/23 Sby', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('373', 'PMB2014150373', null, 'Eldon Wijaya', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabya', '2002-12-27', '', '0', '0.0', '0.0', '', '', 'Gemblongan 4/8 Surabaya', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('374', 'PMB2014150374', null, 'Christian Tjandra', '', '', null, '1', '', '0', '4', '1', 'L', 'Surabaya', '2002-07-10', '', '0', '0.0', '0.0', '', '', 'Dukuh Kupang XXX/14,Surabaya', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('375', 'PMB2014150375', null, 'Gavin Owen Susanto', '', '', null, '1', '', '0', '4', '1', 'L', 'Surabaya', '2002-01-09', '', '0', '0.0', '0.0', '', '', 'Petemon 3/139 Surabaya', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('376', 'PMB2014150376', null, 'Gerry William Sunaryo', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2002-02-06', '', '0', '0.0', '0.0', '', '', 'Delta Raya Selatan No.15, Sidoarjo', '', '8552106', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('377', 'PMB2014150377', null, 'Hansen Lienardi', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2001-12-20', '', '0', '0.0', '0.0', '', '', 'Kupang Indah XI / 11B Surabaya', '', '0317326978', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('378', 'PMB2014150378', null, 'Henson Edward Hidayat', '', '', null, '1', '', '0', '4', '1', 'L', 'Surabaya', '2002-08-20', '', '0', '0.0', '0.0', '', '', 'Graha Family A-8', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('379', 'PMB2014150379', null, 'Herman Albert Dimaclid Sionosa', '', '', null, '1', '', '0', '5', '1', 'L', 'Filipina', '2002-01-23', '', '0', '0.0', '0.0', '', '', 'Apartemen Puncak Permai Tower B, Sby', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('380', 'PMB2014150380', null, 'Isabel Felicia', '', '', null, '1', '', '0', '5', '1', 'P', 'Surabaya', '2002-02-02', '', '0', '0.0', '0.0', '', '', 'Rafles Garden TB XII/35, Surabaya', '', '7400643', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('381', 'PMB2014150381', null, 'Jason Claudio Salim', '', '', null, '1', '', '0', '4', '1', 'L', 'Surabaya', '2002-06-26', '', '0', '0.0', '0.0', '', '', 'Anjasmoro 34 Surabaya', '', '8416130', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('382', 'PMB2014150382', null, 'Jefferson Soewargo', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2002-04-06', '', '0', '0.0', '0.0', '', '', 'Royal Park TL IV/23 Citraland, Surabaya', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('383', 'PMB2014150383', null, 'Jennifer', '', '', null, '1', '', '0', '5', '1', 'P', 'Surabaya', '2002-07-27', '', '0', '0.0', '0.0', '', '', 'Graha Famili FF-29, Surabaya', '', '7535449', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('384', 'PMB2014150384', null, 'Justin Andrew Wijaya', '', '', null, '1', '', '0', '4', '1', 'L', 'Surabaya', '2002-06-26', '', '0', '0.0', '0.0', '', '', 'Kupang Indah XII/7 Surabaya', '', '0317326867', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('385', 'PMB2014150385', null, 'Marissa Gabrielle', '', '', null, '1', '', '0', '0', '1', 'P', 'Surabaya', '2001-12-19', '', '0', '0.0', '0.0', '', '', 'Vila Bukit Regensi 2 Blok PD 2 No.30 Sby', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('386', 'PMB2014150386', null, 'Matthew Julian Santoso', '', '', null, '1', '', '0', '5', '1', 'L', 'Malang', '2002-07-17', '', '0', '0.0', '0.0', '', '', 'Panglima Sudirman 67 Gresik', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('387', 'PMB2014150387', null, 'Michael Abdi Wangi', '', '', null, '1', '', '0', '5', '1', 'L', 'Denpasar', '2002-05-31', '', '0', '0.0', '0.0', '', '', 'Bukit Palma K4/23, Surabaya', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('388', 'PMB2014150388', null, 'Michael Brandon', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2002-01-30', '', '0', '0.0', '0.0', '', '', 'Raya Simogunung 6A, Surabaya', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('389', 'PMB2014150389', null, 'Patricia Aiko', '', '', null, '1', '', '0', '5', '1', 'P', '', '0000-00-00', '', '0', '0.0', '0.0', '', '', 'Dukuh Kupang Barat TA/6 Surabaya', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('390', 'PMB2014150390', null, 'Samuel Susanto', '', '', null, '1', '', '0', '0', '1', 'L', '', '2002-12-19', '', '0', '0.0', '0.0', '', '', 'Yupiter B5/15', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('391', 'PMB2014150391', null, 'Vincent Ariel Tju', '', '', null, '1', '', '0', '5', '1', 'L', 'Kediri', '2002-08-29', '', '0', '0.0', '0.0', '', '', 'Taman Gapura F1/11 Surabaya', '', '7451096', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('392', 'PMB2014150347', null, 'Angeline Vincentia Danyo', '', '', null, '1', '', '0', '5', '1', 'P', 'Surabaya', '2002-04-15', '', '0', '0.0', '0.0', '', '', 'Manyar Jaya XI/ 17', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('393', 'PMB2014150393', null, 'Celine Gunawan', '', '', null, '1', '', '0', '4', '1', 'P', 'Surabaya', '2002-03-17', '', '0', '0.0', '0.0', '', '', 'Medokan Ayu II/O-18', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('394', 'PMB2014150394', null, 'Christopher Faith', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2002-03-27', '', '0', '0.0', '0.0', '', '', 'Galaxi Bumi Permai N4/25', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('395', 'PMB2014150395', null, 'Christovan Chi', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2002-02-20', '', '0', '0.0', '0.0', '', '', 'Wonorejo Permai Timur I/67 (EE-229)', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('396', 'PMB2014150396', null, 'Daniel Matthew', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2002-08-05', '', '0', '0.0', '0.0', '', '', 'Klampis Indah III/ 30 C-14', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('397', 'PMB2014150397', null, 'Filbert Karsten Thomas', '', '', null, '1', '', '0', '5', '1', 'L', 'Jakarta', '2002-02-28', '', '0', '0.0', '0.0', '', '', 'Nginden Intan Timur VI / 67', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('398', 'PMB2014150398', null, 'Gabriella Theodora', '', '', null, '1', '', '0', '5', '1', 'P', 'Surabaya', '2002-09-12', '', '0', '0.0', '0.0', '', '', 'Gading Pantai 29', '', '3898932', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('399', 'PMB2014150399', null, 'Gerald Chandra Tedjakusuma', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2002-03-07', '', '0', '0.0', '0.0', '', '', 'Medokan Ayu III E - 10', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('400', 'PMB2014150400', null, 'Jonathan James Dewanto', '', '', null, '1', '', '0', '5', '1', 'L', 'New York', '2002-07-08', '', '0', '0.0', '0.0', '', '', 'Galaxi Bumi Permai K3/ 2', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('401', 'PMB2014150401', null, 'Michelin Andre', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2002-05-16', '', '0', '0.0', '0.0', '', '', 'Raya Sedati Gede 81', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('402', 'PMB2014150402', null, 'Phoebe Purnama', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2002-11-03', '', '0', '0.0', '0.0', '', '', 'Rk Panji Makmur D-10, Jl. Panj. Jiwo 46', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('403', 'PMB2014150392', null, 'Adrian Rizaldy Hoemisch', '', '', null, '1', '', '0', '3', '1', 'L', 'Surabaya', '2001-12-19', '', '0', '0.0', '0.0', '', '', 'Perum Delta Sari Baru Jl. Delta Raya Utara No.88 SDA', '', '70329324', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('404', 'PMB2014150404', null, 'Agnes Daniella', '', '', null, '1', '', '0', '0', '1', 'L', 'Surabaya', '2001-03-02', '', '0', '0.0', '0.0', '', '', 'Jajar Tunggal Selatan V/O-9 Surabaya', '', '7313489', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('405', 'PMB2014150405', null, 'Angeline Sugiarto', '', '', null, '1', '', '0', '0', '1', 'P', 'USA', '2001-10-13', '', '0', '0.0', '0.0', '', '', 'Villa Valencia PA 7/47 Surabaya', '', '7329580', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('406', 'PMB2014150406', null, 'Christopher Rayner Halim', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2001-10-04', '', '0', '0.0', '0.0', '', '', 'Gedung Nasional No.11 Surabaya', '', '5310687', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('407', 'PMB2014150407', null, 'Christy', '', '', null, '1', '', '0', '1', '1', 'P', 'Surabaya', '2001-01-25', '', '0', '0.0', '0.0', '', '', 'Dupak 17 Ruko Pasifik Megak Blok D-5', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('408', 'PMB2014150408', null, 'Dylan Gregory', '', '', null, '1', '', '0', '4', '1', 'L', 'Surabaya', '2001-08-18', '', '0', '0.0', '0.0', '', '', 'Taman Puspa Raya B 8/9 Surabaya', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('409', 'PMB2014150409', null, 'Gebryella Natasya Prayogo', '', '', null, '1', '', '0', '5', '1', 'P', 'Surabaya', '2000-11-14', '', '0', '0.0', '0.0', '', '', 'Kapasari V/16, Surabaya', '', '7520099', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('410', 'PMB2014150410', null, 'Irene Belinda', '', '', null, '1', '', '0', '5', '1', 'P', 'Surabaya', '2001-01-31', '', '0', '0.0', '0.0', '', '', 'Vila Bukit Regency 3 PE 13 No.9 Sby', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('411', 'PMB2014150411', null, 'Jason Yaputra', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2001-07-18', '', '0', '0.0', '0.0', '', '', 'Pakis Tirtosari 15/5 Surabaya', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('412', 'PMB2014150412', null, 'Josephine Michelle Chang', '', '', null, '1', '', '0', '5', '1', 'P', 'Surabaya', '2001-10-30', '', '0', '0.0', '0.0', '', '', 'Darmo Hills Blok P-12 Surabaya', '', '636338', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('413', 'PMB2014150413', null, 'Kenneth Nathanael Thenios', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2001-10-13', '', '0', '0.0', '0.0', '', '', 'Wonokitri Indah A-15, Surabaya', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('414', 'PMB2014150414', null, 'Michelle Hernandez', '', '', null, '1', '', '0', '5', '1', 'P', 'Malang', '2001-07-30', '', '0', '0.0', '0.0', '', '', 'Petemon Timur 120 Surabaya', '', '5351805', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('415', 'PMB2014150415', null, 'Vanessa Liem', '', '', null, '1', '', '0', '5', '1', 'P', 'Surabaya', '2001-11-13', '', '0', '0.0', '0.0', '', '', 'Sepanjang Town Haouse C 15-16 SDA', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('416', 'PMB2014150416', null, 'Vondrea Cassey Andoko', '', '', null, '1', '', '0', '4', '1', 'P', 'Surabaya', '2001-09-12', '', '0', '0.0', '0.0', '', '', 'Taman Pondok Indah TX-15 Surabaya', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('417', 'PMB2014150417', null, 'Christopher Louis', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2001-12-03', '', '0', '0.0', '0.0', '', '', 'Taman Pondok Indah AA-2 Surabaya', '', '70310768', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('418', 'PMB2014150418', null, 'Giselle Angelique', '', '', null, '1', '', '0', '4', '1', 'P', 'Surabaya', '2000-03-28', '', '0', '0.0', '0.0', '', '', 'Vila Bukit Mas Mediterian K-8 SBY', '', '70310768', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('419', 'PMB2014150419', null, 'Hilary', '', '', null, '1', '', '0', '1', '1', 'P', 'Surabaya', '2001-09-21', '', '0', '0.0', '0.0', '', '', 'Dupak 17 Blok B9 Surabaya', '', '7091183', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('420', 'PMB2014150420', null, 'Jade Vanessa Pangkey', '', '', null, '1', '', '0', '5', '1', 'P', 'Surabaya', '2001-03-02', '', '0', '0.0', '0.0', '', '', 'Griya Babatan Mukti M-76 Surabaya', '', '7530210', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('421', 'PMB2014150421', null, 'Jason Tanujaya', '', '', null, '1', '', '0', '0', '1', 'L', 'Jakarta', '2001-11-20', '', '0', '0.0', '0.0', '', '', 'Vila Bukit Regensi 3 PE 8/26 SBY', '', '7391671', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('422', 'PMB2014150422', null, 'Kelvin Williams', '', '', null, '1', '', '0', '1', '1', 'L', 'Denpasar', '2001-07-09', '', '0', '0.0', '0.0', '', '', 'The Mansion PF-5/22 Pakuwon Indah', '', '7391671', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('423', 'PMB2014150423', null, 'Kezia Ratih Puspaningrum K.F', '', '', null, '1', '', '0', '5', '1', 'P', 'Surabaya', '2002-02-23', '', '0', '0.0', '0.0', '', '', 'Tengger Kendangan 19/3 Sby', '', '70867222', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('424', 'PMB2014150424', null, 'Michelle Yang', '', '', null, '1', '', '0', '1', '1', 'L', 'Surabaya', '2001-04-07', '', '0', '0.0', '0.0', '', '', 'Jl. Semarang 106 B Blok A-18 Surabaya', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('425', 'PMB2014150425', null, 'Monica Gabriela', '', '', null, '1', '', '0', '4', '1', 'P', 'Surabaya', '2001-08-13', '', '0', '0.0', '0.0', '', '', 'Taman International I Blok C-1/21 SBY', '', '71205898', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('426', 'PMB2014150426', null, 'Natalie Julianto', '', '', null, '1', '', '0', '5', '1', 'P', 'Surabaya', '2000-12-10', '', '0', '0.0', '0.0', '', '', 'Darmo Hill Blok L-21A Surabaya', '', '70912379', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('427', 'PMB2014150427', null, 'Nathanael Ray Samuel', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2001-03-19', '', '0', '0.0', '0.0', '', '', 'Dukuh Kupang Barat TA/6 Surabaya', '', '70976447', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('428', 'PMB2014150428', null, 'Nicholas Matthew', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2001-12-10', '', '0', '0.0', '0.0', '', '', 'Bukit Darmo Golf Regency D-10 Sby', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('429', 'PMB2014150429', null, 'Verren Violeta', '', '', null, '1', '', '0', '5', '1', 'P', 'Surabaya', '2001-04-25', '', '0', '0.0', '0.0', '', '', 'Petemon Barat 96 Surabaya', '', '5320496', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('430', 'PMB2014150430', null, 'Vienna Augusta', '', '', null, '1', '', '0', '5', '1', 'P', 'Surabaya', '2001-08-08', '', '0', '0.0', '0.0', '', '', 'Dharmahusada Indah Utara U-12 Sby', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('431', 'PMB2014150403', null, 'Anderson Siswanto', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2001-06-23', '', '0', '0.0', '0.0', '', '', 'Baruk Barat IX / A-92, Surabaya', '', '71128007', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('432', 'PMB2014150432', null, 'Aveles', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2001-11-11', '', '0', '0.0', '0.0', '', '', 'Kalirungkut 27 / C-55, Surabaya', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('433', 'PMB2014150433', null, 'Clive Marvelous', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2001-09-28', '', '0', '0.0', '0.0', '', '', 'Nelayan 32, Surabaya', '', '3539609', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('434', 'PMB2014150434', null, 'Graciella Theoderus', '', '', null, '1', '', '0', '5', '1', 'P', 'Surabaya', '2001-03-07', '', '0', '0.0', '0.0', '', '', 'Baruk Barat 3 / B-123, Surabaya', '', '8709153', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('435', 'PMB2014150435', null, 'Indradi Lukman', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2001-04-30', '', '0', '0.0', '0.0', '', '', 'Rungkut Mapan Timur IXEl-12, Surabaya', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('436', 'PMB2014150436', null, 'Irvin Kalevi Limanjaya', '', '', null, '1', '', '0', '1', '1', 'L', 'Surabaya', '2001-09-01', '', '0', '0.0', '0.0', '', '', 'Barata Jaya XV / 10, Surabaya', '', '5045203', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('437', 'PMB2014150437', null, 'Natasya Anindita', '', '', null, '1', '', '0', '5', '1', 'P', 'Surabaya', '2000-05-05', '', '0', '0.0', '0.0', '', '', 'Manyar Tirtomoyo 3/14, Surabaya', '', '5940713', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('438', 'PMB2014150431', null, 'Jesslyn Antoinette Sutandyo', '', '', null, '1', '', '0', '5', '1', 'P', 'Surabaya', '2001-11-25', '', '0', '0.0', '0.0', '', '', 'Dukuh Kupang Barat VII/28 Surabaya', '', '5621891', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('439', 'PMB2014150439', null, 'Shiela Sutanto', '', '', null, '1', '', '0', '0', '0', 'P', 'Surabaya', '0000-09-20', '', '0', '0.0', '0.0', '', '', 'Taman Hunian Satelit Yupiter BS 15, SBY', '', '7328360', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('441', 'PMB2014150438', null, 'Philia Disca', '', '', null, '1', '', '0', '5', '1', 'P', 'Surabaya', '2001-09-10', '', '0', '0.0', '0.0', '', '', 'Bendul Merisi Sel VI/7, Surabaya', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('442', 'PMB2014150442', null, 'Ricky Kurniawan', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2001-12-29', '', '0', '0.0', '0.0', '', '', 'Kutisari XII A/6, Surabaya', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('443', 'PMB2014150443', null, 'Steven Andre Saputra', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2001-03-20', '', '0', '0.0', '0.0', '', '', 'Raya Sedati Gede, Waru-Sidoarjo', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('444', 'PMB2014150440', null, 'Shiela Sutanto', '', '', null, '1', '', '0', '5', '1', 'P', 'Surabaya', '2001-09-20', '', '0', '0.0', '0.0', '', '', 'Taman Hunian Satelit Yupiter BS 15, SBY', '', '7328360', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('449', 'PMB2014150445', null, 'Bryan Andrew Wijaya', '', '', null, '1', '', '0', '4', '1', 'L', 'Surabaya', '2000-08-31', '', '0', '0.0', '0.0', '', '', 'Kupang Indah XII/7 Surabaya', '', '7326867', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('450', 'PMB2014150450', null, 'Bryan Nicklaus Soesanto', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2000-12-09', '', '0', '0.0', '0.0', '', '', 'Graha Family N-155 Surabaya', '', '7325666', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('451', 'PMB2014150451', null, 'Dean Gracious', '', '', null, '1', '', '0', '1', '1', 'L', 'Surabaya', '2000-03-10', '', '0', '0.0', '0.0', '', '', 'Citra Harmony G4/18 Sidoarjo', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('452', 'PMB2014150452', null, 'Emeris', '', '', null, '1', '', '0', '1', '1', 'P', 'Surabaya', '2000-10-02', '', '0', '0.0', '0.0', '', '', 'Pondok Wiyung Indah Timur III-35 Blok NX-13', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('453', 'PMB2014150453', null, 'Felecia Gunawan', '', '', null, '1', '', '0', '4', '1', 'P', 'Sidoarjo', '2000-09-20', '', '0', '0.0', '0.0', '', '', 'Jenggolo II No.2 Sidoarjo', '', '8921408', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('454', 'PMB2014150454', null, 'Fontana Hadisurya Suhandinata', '', '', null, '1', '', '0', '1', '1', 'L', 'Surabaya', '2000-09-08', '', '0', '0.0', '0.0', '', '', 'Wonokitri Indah A 12 Surabaya', '', '5673105', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('455', 'PMB2014150455', null, 'Hanssen Budisantoso Wijaya', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2000-09-10', '', '0', '0.0', '0.0', '', '', 'Satelit Utara 6/IT 17 Surabaya', '', '7317395', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('456', 'PMB2014150456', null, 'Jessica Levina', '', '', null, '1', '', '0', '0', '1', 'P', 'Surabaya', '2000-11-18', '', '0', '0.0', '0.0', '', '', 'Vila Bukit Mas Monaco TB 14 Surabaya', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('458', 'PMB2014150457', null, 'Joshua Chang', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2000-07-21', '', '0', '0.0', '0.0', '', '', 'Jl.Kendangsari Blok M-10 Sby', '', '72576248', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('460', 'PMB2014150459', null, 'Julio Erson Chuanardi', '', '', null, '1', '', '0', '1', '1', 'L', 'Surabaya', '2000-07-14', '', '0', '0.0', '0.0', '', '', 'Puri Widya Kencana J3-10 Surabaya', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('462', 'PMB2014150461', null, 'Kevin Ferdinand', '', '', null, '1', '', '0', '4', '1', 'L', 'Surabaya', '2000-08-18', '', '0', '0.0', '0.0', '', '', 'Jl. Dupak 72 Surabaya', '', '70616958', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('463', 'PMB2014150463', null, 'Neysa Winaldo', '', '', null, '1', '', '0', '5', '1', 'P', 'Surabaya', '2000-04-09', '', '0', '0.0', '0.0', '', '', 'Jl. Tanjung Sari Baru 4/21 Surabaya', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('465', 'PMB2014150464', null, 'Allen Wijaya Alie', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2008-10-19', '', '0', '0.0', '0.0', '', '', 'Satelit Indah 6 JN No. 5', '', '0317318668', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('467', 'PMB2014150466', null, 'Richard Theofilus Pangestu', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2000-12-13', '', '0', '0.0', '0.0', '', '', 'Simpang Darmo Permai Selatan 19/23', '', '7344810', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('469', 'PMB2014150468', null, 'Shienny Hartanto', '', '', null, '1', '', '0', '4', '1', 'P', 'Surabaya', '2000-11-01', '', '0', '0.0', '0.0', '', '', 'Darmo Permai Timur IV/32, Surabaya', '', '7318787', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('471', 'PMB2014150470', null, 'Brandon Jordania Putra Liyanto', '', '', null, '1', '', '0', '5', '1', 'L', 'Manado', '1999-12-27', '', '0', '0.0', '0.0', '', '', 'Raya Satelit Utara BT-23 SBY', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('472', 'PMB2014150472', null, 'Edwina Aurelia Saksana', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2000-03-24', '', '0', '0.0', '0.0', '', '', 'Darmo Indah Timur M-24 Surabaya', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('473', 'PMB2014150473', null, 'Elita Stacia', '', '', null, '1', '', '0', '5', '1', 'P', 'Surabaya', '2000-09-18', '', '0', '0.0', '0.0', '', '', 'Raya Gilang 70 Sda / Wiyung Indah I/B', '', '7882908', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('474', 'PMB2014150474', null, 'Fia Sabrina Boedijono', '', '', null, '1', '', '0', '5', '1', 'P', 'Surabaya', '2000-09-01', '', '0', '0.0', '0.0', '', '', 'Taman Satelit Timur QQ-28, Surabaya', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('475', 'PMB2014150475', null, 'Gabrielle Angelica', '', '', null, '1', '', '0', '5', '1', 'P', 'Surabaya', '2000-08-10', '', '0', '0.0', '0.0', '', '', 'Kondominium Graha Famili PB 704 Sby', '', '77770577', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('476', 'PMB2014150476', null, 'Hans Sebastian Mulyawan', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2000-05-20', '', '0', '0.0', '0.0', '', '', '', '', '13950', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('477', 'PMB2014150477', null, 'Joseph Ervan Nathanael', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2000-09-06', '', '0', '0.0', '0.0', '', '', 'Puri Lidah Kulon Indah B no.27 Surabaya', '', '7526457', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('478', 'PMB2014150478', null, 'Nicholas Valentino Gumulia', '', '', null, '1', '', '0', '4', '1', 'L', 'Surabaya', '2000-07-10', '', '0', '0.0', '0.0', '', '', 'Royal Residence C 02/15 Surabaya', '', '83981428', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('479', 'PMB2014150479', null, 'Ray Chandrakesuma', '', '', null, '1', '', '0', '4', '1', 'L', 'Jakarta', '2000-10-10', '', '0', '0.0', '0.0', '', '', 'Darmo Permai Selatan I/32', '', '71118008', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('480', 'PMB2014150480', null, 'Tania Alverina Djayanto', '', '', null, '1', '', '0', '5', '1', 'P', 'Surabaya', '2000-08-20', '', '0', '0.0', '0.0', '', '', 'Jl. Lidah Bukit Mas Brat XII C6-02 Sby', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('481', 'PMB2014150481', null, 'Vania Aurellia Wijaya', '', '', null, '1', '', '0', '1', '1', 'P', 'Surabaya', '2000-09-15', '', '0', '0.0', '0.0', '', '', 'Jl.Pradah Permai III-16 Surabaya', '', '7341458', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('482', 'PMB2014150482', null, 'Wesley Evan Soegiarto', '', '', null, '1', '', '0', '4', '1', 'L', 'Surabaya', '2000-12-02', '', '0', '0.0', '0.0', '', '', 'Darmo Park I Blok 2B no 8-9 Sby', '', '7328965', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('483', 'PMB2014150483', null, 'Wincent Tanjaya', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2000-07-27', '', '0', '0.0', '0.0', '', '', 'Darmo Permai Selatan X/126, Surabaya', '', '7318765', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('484', 'PMB2014150484', null, 'Yoel Kristian Simanjaya', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2000-03-04', '', '0', '0.0', '0.0', '', '', 'Wisma Lidah Kulon A-43 Surabaya', '', '7532470', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('485', 'PMB2014150444', null, 'Angelina Siswanto', '', '', null, '1', '', '0', '5', '1', 'P', 'Surabaya', '1999-12-31', '', '0', '0.0', '0.0', '', '', 'Baruk Barat IX/A-92 Surabaya', '', '8712368', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('486', 'PMB2014150486', null, 'Anthony Vincentius Danyo', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2000-05-29', '', '0', '0.0', '0.0', '', '', 'Manyar Jaya Praja XI/ 17', '', '5948146', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('487', 'PMB2014150487', null, 'Argya Putra Ganiartha', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2000-04-18', '', '0', '0.0', '0.0', '', '', 'Jl. Nginden Intan Tim. 17/ 44', '', '70123442', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('488', 'PMB2014150488', null, 'Ethan Gunadi Angstrong', '', '', null, '1', '', '0', '4', '1', 'L', 'Surabaya', '2001-09-17', '', '0', '0.0', '0.0', '', '', 'Laguna Indah A2/7', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('489', 'PMB2014150489', null, 'Evelyn Gunawan', '', '', null, '1', '', '0', '4', '1', 'P', 'Surabaya', '2000-03-30', '', '0', '0.0', '0.0', '', '', 'Medokan Ayu II/O-18', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('490', 'PMB2014150490', null, 'Felicia Christy', '', '', null, '1', '', '0', '5', '1', 'P', 'Jakarta', '2000-10-20', '', '0', '0.0', '0.0', '', '', 'Nginden Intan Timur VI/67', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('491', 'PMB2014150491', null, 'Frederick William Sanjoto', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2001-01-22', '', '0', '0.0', '0.0', '', '', 'Jl. Duku 6 CA 357', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('492', 'PMB2014150492', null, 'Hansel', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2000-11-04', '', '0', '0.0', '0.0', '', '', 'Kalirungkut 27/ C-55', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('493', 'PMB2014150493', null, 'Richard Andrew Santoso', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2000-08-09', '', '0', '0.0', '0.0', '', '', 'Raya Kali Rungkut 5/ J-16', '', '70818799', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('494', 'PMB2014150485', null, 'Alice Pricillya', '', '', null, '1', '', '0', '5', '1', 'L', 'Medan', '1999-10-20', '', '0', '0.0', '0.0', '', '', 'Sukomanunggal Jaya F/12, Sby', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('495', 'PMB2014150495', null, 'Amelia Fandrayani Lim', '', '', null, '1', '', '0', '0', '1', 'P', '', '1999-04-19', '', '0', '0.0', '0.0', '', '', '', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('496', 'PMB2014150496', null, 'Christie Megawati Budiono', '', '', null, '1', '', '0', '5', '1', 'P', 'Surabaya', '1999-09-23', '', '0', '0.0', '0.0', '', '', 'South Emerald Mansion TM2/10', '', '70903375', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('497', 'PMB2014150497', null, 'Inez Beatrice Wanamarta', '', '', null, '1', '', '0', '5', '1', 'P', 'Maastricht Belanda', '1999-07-09', '', '0', '0.0', '0.0', '', '', 'Bogowonto 3, Surabaya', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('498', 'PMB2014150498', null, 'Ivan Nathan Parmenas', '', '', null, '1', '', '0', '5', '1', 'L', 'Malang', '1999-02-23', '', '0', '0.0', '0.0', '', '', 'Sukomanunggal Jaya XI / XL 25, Sby', '', '7316202', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('499', 'PMB2014150499', null, 'Jason Immanuel Gabriel', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '1999-01-01', '', '0', '0.0', '0.0', '', '', 'Boulevard BDG-OP-B2/23 Sby', '', '7310013', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('500', 'PMB2014150500', null, 'Jason Pangkey', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '1999-07-30', '', '0', '0.0', '0.0', '', '', 'Griya Babatan Mukti M-76 Sby', '', '7530210', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('501', 'PMB2014150501', null, 'Jessica Setyono', '', '', null, '1', '', '0', '5', '1', 'P', 'Surabaya', '1999-12-09', '', '0', '0.0', '0.0', '', '', 'Jl.Petemon Barat 204A, Sby', '', '5350851', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('502', 'PMB2014150502', null, 'Ken Chandrakesuma', '', '', null, '1', '', '0', '4', '1', 'L', 'Jakarta', '1999-02-07', '', '0', '0.0', '0.0', '', '', 'Darmo Permai Selatan I / 32, Sby', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('503', 'PMB2014150503', null, 'Laura Brigita Pangkey', '', '', null, '1', '', '0', '4', '1', 'P', 'Surabaya', '1999-11-19', '', '0', '0.0', '0.0', '', '', 'Taman pondok Indah LY-2 Sby', '', '60050203', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('504', 'PMB2014150504', null, 'Natalya Lim', '', '', null, '1', '', '0', '5', '1', 'P', 'Surabaya', '2000-01-12', '', '0', '0.0', '0.0', '', '', 'Graha Famili Blok N-46, Sby', '', '7346683', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('505', 'PMB2014150505', null, 'Safira Antonia Goenawan', '', '', null, '1', '', '0', '1', '1', 'P', 'Surabaya', '1999-08-19', '', '0', '0.0', '0.0', '', '', 'Darmo Park I 2C/9, Sby', '', '5667886', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('506', 'PMB2014150506', null, 'Thesalonica Shinta P.N.K.F', '', '', null, '1', '', '0', '5', '1', 'P', 'Surabaya', '1999-12-21', '', '0', '0.0', '0.0', '', '', 'Tengger Kendangan 19/3 Sby', '', '70867222', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('507', 'PMB2014150507', null, 'Vincent Nicholas Katuari', '', '', null, '1', '', '0', '4', '1', 'L', 'Surabaya', '1999-11-02', '', '0', '0.0', '0.0', '', '', 'Dharmahusada Indah Utara U-12, Sby', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('508', 'PMB2014150508', null, 'Wilson Philipe', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '1999-03-02', '', '0', '0.0', '0.0', '', '', 'Graha Famili PP-31, Sby', '', '7533366', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('509', 'PMB2014150509', null, 'Christina', '', '', null, '1', '', '0', '5', '1', 'P', 'Surabaya', '1998-03-26', '', '0', '0.0', '0.0', '', '', 'Raya Gilang 70 Sda / Wiyung Indah I/B', '', '7882908', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('510', 'PMB2014150510', null, 'Darren Gracious', '', '', null, '1', '', '0', '1', '1', 'L', 'Surabaya', '1997-11-08', '', '0', '0.0', '0.0', '', '', 'Citra Harmony G4/18 Sidoarjo', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('511', 'PMB2014150511', null, 'Edward Jehan Soetopo', '', '', null, '1', '', '0', '5', '1', 'L', 'Jakarta', '1998-11-15', '', '0', '0.0', '0.0', '', '', 'Komp. Bintang Diponggo Kav.754 SBY', '', '5663292', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('512', 'PMB2014150512', null, 'Enrico Soewandi', '', '', null, '1', '', '0', '0', '1', 'L', '', '0000-00-00', '', '0', '0.0', '0.0', '', '', '', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('513', 'PMB2014150513', null, 'Ezra Joy Gunawan', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '1998-12-09', '', '0', '0.0', '0.0', '', '', 'Dupak 3-9 Blok A 12 SBY', '', '7314888', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('514', 'PMB2014150514', null, 'Gracielle Ganda', '', '', null, '1', '', '0', '5', '1', 'P', 'Surabaya', '1998-02-06', '', '0', '0.0', '0.0', '', '', 'Graha Family N-47 SBY', '', '7385689', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('515', 'PMB2014150515', null, 'Hartanto Tanjung', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '1997-10-10', '', '0', '0.0', '0.0', '', '', 'Raya Darmo Permai II Darmo Green Garden C-6 Surabaya', '', '7317600', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('516', 'PMB2014150516', null, 'Jason Aditya Tjandra', '', '', null, '1', '', '0', '0', '1', 'L', '', '1998-01-21', '', '0', '0.0', '0.0', '', '', 'Kertajaya Indah VI/F-324', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('517', 'PMB2014150517', null, 'Matthew Christian', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '1997-10-16', '', '0', '0.0', '0.0', '', '', 'Raya Darmo Permai II/C-19 SBY', '', '5681896', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('518', 'PMB2014150518', null, 'Naveno Cendikiawan', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '1999-02-20', '', '0', '0.0', '0.0', '', '', 'Bratang Gede 101 SBY', '', '50466451', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('519', 'PMB2014150519', null, 'Vincenzio Evan Siemon', '', '', null, '1', '', '0', '4', '1', 'L', 'Surabaya', '1999-10-13', '', '0', '0.0', '0.0', '', '', 'Villa Bukit Regency 2 PD3/11 Pakuwon Indah SBY', '', '7391112', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('520', 'PMB2014150520', null, 'Williams Louis Aditya', '', '', null, '1', '', '0', '5', '1', 'L', 'Probolinggo', '1998-05-17', '', '0', '0.0', '0.0', '', '', 'Darmo Baru Timur 4/27 Sby', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('529', 'PMB2014150521', null, 'Aaron Elliot Tandra', '', '', null, '1', '', '0', '4', '1', 'L', 'Jakarta', '2008-10-18', '', '0', '0.0', '0.0', '', '', 'Graha Family C-60', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('530', 'PMB2014150530', null, 'Calista Gracious Susanto', '', '', null, '1', '', '0', '5', '1', 'P', 'Surabaya', '2008-07-13', '', '0', '0.0', '0.0', '', '', 'Wisata Bukit Mas C1 / 8', '', '0317527285', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('531', 'PMB2014150531', null, 'Christopher Njoto Imanuel', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2008-12-25', '', '0', '0.0', '0.0', '', '', 'Petemon I/97', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('532', 'PMB2014150532', null, 'David Anderson Wistorohardjo', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2007-12-28', '', '0', '0.0', '0.0', '', '', 'Kupang Baru I/99', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('533', 'PMB2014150533', null, 'Emily Yongnardi', '', '', null, '1', '', '0', '5', '1', 'P', 'Surabaya', '2008-02-12', '', '0', '0.0', '0.0', '', '', 'Darmo Indah Timur G-59', '', '0317311149', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('534', 'PMB2014150534', null, 'Fidelia Theodore Chang', '', '', null, '1', '', '0', '5', '1', 'P', 'Surabaya', '2008-03-12', '', '0', '0.0', '0.0', '', '', 'Darmo Hill Blok P-12', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('535', 'PMB2014150535', null, 'Filbert Wellington', '', '', null, '1', '', '0', '1', '1', 'L', 'Surabaya', '2008-05-14', '', '0', '0.0', '0.0', '', '', 'The Mansion PF-5/22', '', '0313577472', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('536', 'PMB2014150536', null, 'Gabrielle Grace', '', '', null, '1', '', '0', '5', '1', 'P', 'Surabaya', '2008-07-09', '', '0', '0.0', '0.0', '', '', 'Diamond Hill DR 5-6 Citraland', '', '0317458368', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('537', 'PMB2014150537', null, 'George Kennedy Kristanto', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2008-08-28', '', '0', '0.0', '0.0', '', '', 'Graha Family N-33', '', '0317340928', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('538', 'PMB2014150538', null, 'Gerald Deven Tejokusumo', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2007-12-11', '', '0', '0.0', '0.0', '', '', 'Gajah Mada 203 Sda', '', '0318962977', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('539', 'PMB2014150539', null, 'Hansel Jornelle', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2008-10-28', '', '0', '0.0', '0.0', '', '', 'Kupang Baru 2 No. 25', '', '0317348815', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('540', 'PMB2014150540', null, 'Jeanette Soewargo', '', '', null, '1', '', '0', '5', '1', 'P', 'Surabaya', '2008-02-08', '', '0', '0.0', '0.0', '', '', 'Royal Park TL IV/23 Citraland', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('541', 'PMB2014150541', null, 'Jenevieve Clairine Setiawan', '', '', null, '1', '', '0', '5', '1', 'P', 'Surabaya', '2008-02-14', '', '0', '0.0', '0.0', '', '', 'Taman Darmo Harapan II / EG - 11C', '', '0317317042', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('542', 'PMB2014150542', null, 'Jessica Johana Ponga', '', '', null, '1', '', '0', '5', '1', 'P', 'Surabaya', '2008-04-30', '', '0', '0.0', '0.0', '', '', 'Simo Mulyo Baru Blok 7i / 13', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('543', 'PMB2014150543', null, 'Joshua Alexander Kurt Kyriss', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2008-06-15', '', '0', '0.0', '0.0', '', '', 'Darmo Satelit Utara 3 Blok PT No.6', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('544', 'PMB2014150544', null, 'Kenneth Boesono', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2008-03-18', '', '0', '0.0', '0.0', '', '', 'Villa Bukit Regency PC 3 / 12 Pakuwon Indah', '', '0315031985', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('545', 'PMB2014150545', null, 'Kezia Rexana Lie', '', '', null, '1', '', '0', '5', '1', 'P', 'Surabaya', '2008-07-11', '', '0', '0.0', '0.0', '', '', 'Kupang Indah I / 36', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('546', 'PMB2014150546', null, 'Maggie Tse', '', '', null, '1', '', '0', '4', '1', 'P', 'Surabaya', '2008-12-24', '', '0', '0.0', '0.0', '', '', 'Manukan Tama 19-O/47', '', '03171983098', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('547', 'PMB2014150547', null, 'Sharon Alexandra Soempiet', '', '', null, '1', '', '0', '5', '1', 'P', 'Surabaya', '2009-01-09', '', '0', '0.0', '0.0', '', '', 'Royal Residence Balmoral B3-52A', '', '8687854', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('548', 'PMB2014150548', null, 'Yehezkiel Messi Jeremi Sianipar', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2008-04-26', '', '0', '0.0', '0.0', '', '', 'Silindri 12 HN 2 Kotabatu Driyorejo Gresik', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('549', 'PMB2014150549', null, 'Colin Cristo Harianto (Colin)', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2008-01-19', '', '0', '0.0', '0.0', '', '', 'Wisata Bukit Mas II / Blok E3 No. 10', '', '0317530738', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('550', 'PMB2014150550', null, 'Emili Tricia Faustine (Mili)', '', '', null, '1', '', '0', '1', '1', 'P', 'Surabaya', '2008-05-15', '', '0', '0.0', '0.0', '', '', 'Kranggan No. 102 Kav.8', '', '0315340131', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('551', 'PMB2014150551', null, 'Engelbert Theophile Ho (Elbert)', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2008-07-20', '', '0', '0.0', '0.0', '', '', 'Kencanasari Barat 7 / G.38', '', '03171019099', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('552', 'PMB2014150552', null, 'Evaldo Sukoco (Aldo)', '', '', null, '1', '', '0', '4', '1', 'L', 'Surabaya', '2007-11-10', '', '0', '0.0', '0.0', '', '', 'Satelit Indah 3/KN 12 D', '', '0317318508', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('553', 'PMB2014150553', null, 'Ferlyne Gabrielly Thie (Ferlyne)', '', '', null, '1', '', '0', '4', '1', 'P', 'Surabaya', '2008-04-24', '', '0', '0.0', '0.0', '', '', 'Pakuwon Indah The Mansion PF 4 No. 8', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('554', 'PMB2014150554', null, 'Gabrielle Abigail Limpo (Bie Bie)', '', '', null, '1', '', '0', '5', '1', 'P', 'Melbourne Victoria', '2008-12-08', '', '0', '0.0', '0.0', '', '', 'Graha Family FF 32', '', '0317534174', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('555', 'PMB2014150555', null, 'Griffith Clairenova Wijaya (Griffith)', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2008-09-22', '', '0', '0.0', '0.0', '', '', 'Graha Family Blok YY / No. 26', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('556', 'PMB2014150556', null, 'Hacken Wunadi (Hacken)', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2008-09-07', '', '0', '0.0', '0.0', '', '', 'Graha Family R 179 A', '', '03131202033', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('557', 'PMB2014150557', null, 'Janice Valerie Judianto (Janice)', '', '', null, '1', '', '0', '4', '1', 'L', 'Surabaya', '2008-01-28', '', '0', '0.0', '0.0', '', '', 'Pakuwon Indah, One Golf Terrace AB 11/58', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('559', 'PMB2014150558', null, 'Jesslyn Olivia', '', '', null, '1', '', '0', '1', '1', 'P', 'Surabaya', '2008-10-05', '', '0', '0.0', '0.0', '', '', 'Royal Residence B 1/21A', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('560', 'PMB2014150560', null, 'Kenzo Edward Setiawan (Kenzo)', '', '', null, '1', '', '0', '5', '0', 'L', 'Balikpapan', '2008-10-29', '', '0', '0.0', '0.0', '', '', 'Raffles Garden TB 10/24 Citraland', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('561', 'PMB2014150561', null, 'Lionel Edric Zhu (Lin-lin / Lio)', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2008-07-28', '', '0', '0.0', '0.0', '', '', 'North Emerald Mansion TN 4/3', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('562', 'PMB2014150562', null, 'Louisa Angela Sutiono (Angela)', '', '', null, '1', '', '0', '5', '1', 'P', 'Surabaya', '2007-12-10', '', '0', '0.0', '0.0', '', '', 'Graha Family H-38', '', '03170586993', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('563', 'PMB2014150563', null, 'Rafe Titan Hartono (Rafe)', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2008-05-21', '', '0', '0.0', '0.0', '', '', 'Bintang Diponggo 757', '', '0315670925', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('564', 'PMB2014150564', null, 'Raziela Kelly Ali Harsanto (Kelly)', '', '', null, '1', '', '0', '4', '1', 'L', 'Surabaya', '2008-05-09', '', '0', '0.0', '0.0', '', '', 'Royal Residence B.10/93', '', '0315670925', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('565', 'PMB2014150565', null, 'Richelle Princess Liangkey (Richelle)', '', '', null, '1', '', '0', '5', '1', 'P', 'Surabaya', '2008-03-29', '', '0', '0.0', '0.0', '', '', 'Darmo Hill M-22', '', '0315636157', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('566', 'PMB2014150566', null, 'Shane Andersen Tandiono (Shane)', '', '', null, '1', '', '0', '5', '1', 'P', 'Surabaya', '2008-04-07', '', '0', '0.0', '0.0', '', '', 'Sukomanunggal Jaya 2/35', '', '0317341123', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('567', 'PMB2014150567', null, 'Tifannie Gabrielle Hadiwidjojo (Tifannie)', '', '', null, '1', '', '0', '5', '1', 'P', 'Surabaya', '2008-05-08', '', '0', '0.0', '0.0', '', '', 'Kupang Indah 2 / 52', '', '0317315224', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('568', 'PMB2014150568', null, 'Wilbert Suryajaya Lim (Wilbert)', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2007-11-16', '', '0', '0.0', '0.0', '', '', 'Satelit Utara VII/CT 14', '', '0317316226', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('569', 'PMB2014150569', null, 'Asthon Preston Young Sumarno (Asthon)', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2008-02-28', '', '0', '0.0', '0.0', '', '', 'Petemon Timur No. 114', '', '0315313343', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('570', 'PMB2014150570', null, 'Beatrice Christilove Santoso (Beatrice)', '', '', null, '1', '', '0', '5', '1', 'P', 'Surabaya', '2008-12-20', '', '0', '0.0', '0.0', '', '', 'Raya Manukan Wetan 32', '', '03170397737', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('571', 'PMB2014150571', null, 'Brandon Archer (Brandon)', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2008-07-15', '', '0', '0.0', '0.0', '', '', 'Tanjungsari Baru 5 Blok GG 36', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('572', 'PMB2014150572', null, 'Claris Lievia (Claris)', '', '', null, '1', '', '0', '5', '1', 'P', 'Surabaya', '2008-07-29', '', '0', '0.0', '0.0', '', '', 'Wisata Bukit Mas B2/5', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('573', 'PMB2014150573', null, 'Ezekiel Shawn Wondo (Shawn)', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2008-05-04', '', '0', '0.0', '0.0', '', '', 'Central Park A. Yani E/19', '', '0318272828', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('574', 'PMB2014150574', null, 'Felicia Clarissa Tanurijanto (Felice)', '', '', null, '1', '', '0', '4', '1', 'L', 'Surabaya', '2008-10-09', '', '0', '0.0', '0.0', '', '', 'Puri Sentra Raya PS 2/43 B Citraland', '', '0317440099', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('575', 'PMB2014150575', null, 'Ferdinand Christianto Thomas (Ferdinand)', '', '', null, '1', '', '0', '4', '1', 'L', 'Surabaya', '2008-02-10', '', '0', '0.0', '0.0', '', '', 'Raya Mastrip Kemlaten 26 B', '', '0317674122', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('576', 'PMB2014150576', null, 'Grace Caroline Cahyono (Grace)', '', '', null, '1', '', '0', '4', '1', 'P', 'Surabaya', '2008-07-12', '', '0', '0.0', '0.0', '', '', 'Mulyorejo Mega Asri 129', '', '0315964953', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('577', 'PMB2014150577', null, 'Jade Agung Handojo (Jade)', '', '', null, '1', '', '0', '4', '1', 'L', 'Surabaya', '2008-03-21', '', '0', '0.0', '0.0', '', '', 'Darmo Harapan VI / EC-19', '', '0317346930', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('578', 'PMB2014150578', null, 'Jedidiah Budiman (Jedidiah)', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2008-09-15', '', '0', '0.0', '0.0', '', '', 'Progo 8 Surabaya', '', '0315676572', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('579', 'PMB2014150579', null, 'Jerome Keane Lim (Jerome / Keane)', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2008-07-05', '', '0', '0.0', '0.0', '', '', 'Chofa RE - 11', '', '0317325068', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('580', 'PMB2014150580', null, 'Jessica Beatricia (Jessica)', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2008-02-02', '', '0', '0.0', '0.0', '', '', 'Rafles Garden TB XII/35', '', '0317400643', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('581', 'PMB2014150581', null, 'Josevine Angeline Musa (Josevine)', '', '', null, '1', '', '0', '5', '1', 'P', 'Surabaya', '2008-04-02', '', '0', '0.0', '0.0', '', '', 'Darmo Permai Selatan 11 / 18', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('582', 'PMB2014150582', null, 'Keziah Lim (Kei)', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2008-05-23', '', '0', '0.0', '0.0', '', '', 'Perum Graha Famili Blok N-46', '', '0317346683', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('583', 'PMB2014150583', null, 'Kiyora Asami Prasetya', '', '', null, '1', '', '0', '5', '1', 'P', 'Surabaya', '2008-08-08', '', '0', '0.0', '0.0', '', '', 'Kertajaya Indah Regency A 25', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('584', 'PMB2014150584', null, 'Louis Chandoko (Louis)', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2008-12-19', '', '0', '0.0', '0.0', '', '', 'Forest Mansion B-23', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('585', 'PMB2014150585', null, 'Michelle Tanaya (Michelle)', '', '', null, '1', '', '0', '4', '1', 'P', 'Surabaya', '2008-07-27', '', '0', '0.0', '0.0', '', '', 'Tulung Agung 3/6 Surabaya', '', '0315319420', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('586', 'PMB2014150586', null, 'Noel Nelsen Felix', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2008-01-02', '', '0', '0.0', '0.0', '', '', 'Perum Darmo Sentosa Raya Blok H-21', '', '0315684639', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('587', 'PMB2014150587', null, 'Patricia Michelle Rumoei (Patricia)', '', '', null, '1', '', '0', '5', '1', 'P', 'Surabaya', '2008-04-01', '', '0', '0.0', '0.0', '', '', 'Simpang Darmo Permai Timur 2 / 2', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('588', 'PMB2014150588', null, 'Scott Caleb Johar Gunawan (Scott)', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2008-10-10', '', '0', '0.0', '0.0', '', '', 'Eastwood EW-9/17 Citraland', '', '03181831191', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('589', 'PMB2014150589', null, 'Verlyn Pangestoe (Verlyn)', '', '', null, '1', '', '0', '5', '1', 'P', 'Surabaya', '2008-05-03', '', '0', '0.0', '0.0', '', '', 'Villa Bukit Regency 3 PE 10/30', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('590', 'PMB2014150590', null, 'Aldrich Kennan Sumargo', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2007-06-25', '', '0', '0.0', '0.0', '', '', 'Sambongan III/10', '', '0313536106', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('591', 'PMB2014150591', null, 'Aurelia Mareta Koesno', '', '', null, '1', '', '0', '4', '1', 'P', 'Surabaya', '2007-03-20', '', '0', '0.0', '0.0', '', '', 'Darmo Baru Barat 8/21', '', '0313573364', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('592', 'PMB2014150592', null, 'Bryan Aurelius Kho', '', '', null, '1', '', '0', '1', '1', 'L', 'Surabaya', '2007-04-24', '', '0', '0.0', '0.0', '', '', 'Kencana Sari Barat Blok G No. 6', '', '0315688355', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('593', 'PMB2014150593', null, 'Chen Xin E', '', '', null, '1', '', '0', '1', '1', 'P', 'Surabaya', '2007-03-24', '', '0', '0.0', '0.0', '', '', 'Royal Resindence C 1 No. 21', '', '0317913480', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('594', 'PMB2014150594', null, 'Christalin Maeko Sumarno', '', '', null, '1', '', '0', '5', '1', 'P', 'Surabaya', '2006-12-07', '', '0', '0.0', '0.0', '', '', 'Petemon Timur 112', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('595', 'PMB2014150595', null, 'Clarence Moeljadi Salim', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2006-11-02', '', '0', '0.0', '0.0', '', '', 'Villa Bukit Mas Monaco TA-15', '', '0315615057', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('596', 'PMB2014150596', null, 'Dylan Matthew Tedjokoesoemo', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2007-07-05', '', '0', '0.0', '0.0', '', '', 'Taman International I / FK-20', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('597', 'PMB2014150597', null, 'Eunike Audrey Mantalik', '', '', null, '1', '', '0', '5', '1', 'P', 'Surabaya', '2007-08-31', '', '0', '0.0', '0.0', '', '', 'Royal Residence B 10-97', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('598', 'PMB2014150598', null, 'Jonathan Gerald Linardi', '', '', null, '1', '', '0', '4', '1', 'L', 'Surabaya', '2007-03-23', '', '0', '0.0', '0.0', '', '', 'Taman Pondok Indah Blok RX - 29', '', '7526671', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('599', 'PMB2014150599', null, 'Jonathan Limantara', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2007-05-03', '', '0', '0.0', '0.0', '', '', 'Darmo Indah Barat II / F-9', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('600', 'PMB2014150600', null, 'Jonathan Louis Hartono Ong', '', '', null, '1', '', '0', '4', '1', 'L', 'Surabaya', '2007-05-24', '', '0', '0.0', '0.0', '', '', 'Dukuh Kupang Barat XXII / 26', '', '5676441', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('601', 'PMB2014150601', null, 'Jason Antolin Theios', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2007-01-10', '', '0', '0.0', '0.0', '', '', 'Banyu Urip Wetan  5/95-97 / Vila Bukit Mas Paris SA-30', '', '0315684506', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('602', 'PMB2014150602', null, 'Josh Franklin Linarto', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2007-05-27', '', '0', '0.0', '0.0', '', '', 'Vila Valensia CA 5/50', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('603', 'PMB2014150603', null, 'Justin Tyrone Pangkey', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2007-07-04', '', '0', '0.0', '0.0', '', '', 'Griya Babatan Mukti Blok M-76', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('604', 'PMB2014150604', null, 'Kaitlyn Lievia', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2007-04-17', '', '0', '0.0', '0.0', '', '', 'Wisata Bukit Mas (Venesia) B2 / 5', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('605', 'PMB2014150605', null, 'Marvel Nathanael Tedjakusuma', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2007-01-26', '', '0', '0.0', '0.0', '', '', 'Raya Darmo 47', '', '5622790', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('606', 'PMB2014150606', null, 'Nicole Audrey William', '', '', null, '1', '', '0', '5', '1', 'P', 'Surabaya', '2007-10-20', '', '0', '0.0', '0.0', '', '', 'Graha Family U-107', '', '03173226056', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('607', 'PMB2014150607', null, 'Olivia Harsono', '', '', null, '1', '', '0', '4', '1', 'P', 'Surabaya', '2007-05-08', '', '0', '0.0', '0.0', '', '', 'Isen No. 9', '', '0317315576', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('608', 'PMB2014150608', null, 'Richie Lawrance Chan', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2007-10-20', '', '0', '0.0', '0.0', '', '', 'Raya Wonocolo 102 Taman Sepanjang, Sidoarjo', '', '7886555', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('609', 'PMB2014150609', null, 'Rico Ganendra Lie', '', '', null, '1', '', '0', '3', '1', 'L', 'Jakarta', '2007-04-29', '', '0', '0.0', '0.0', '', '', 'Satelit Indah 7 No. 1', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('610', 'PMB2014150610', null, 'Seraphine Saputera', '', '', null, '1', '', '0', '4', '1', 'P', 'Surabaya', '2007-08-24', '', '0', '0.0', '0.0', '', '', 'South Emerald Mansion TK-7/12C', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('611', 'PMB2014150611', null, 'Atherton Irawan', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2007-08-10', '', '0', '0.0', '0.0', '', '', 'Nyi Cempo Barat No. 50 Taman Sepanjang', '', '7871545', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('612', 'PMB2014150612', null, 'Celine Aurellya', '', '', null, '1', '', '0', '1', '1', 'P', 'Surabaya', '2007-03-18', '', '0', '0.0', '0.0', '', '', 'Royal Residen B2 / 90 Wiyung, Sby', '', '7510090', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('613', 'PMB2014150613', null, 'Denisa Patricia Gunarto', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2006-12-29', '', '0', '0.0', '0.0', '', '', 'Taman Darmo Harapan II/EG-2', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('614', 'PMB2014150614', null, 'Eugenia Caitlin', '', '', null, '1', '', '0', '4', '1', 'P', 'Surabaya', '2007-12-24', '', '0', '0.0', '0.0', '', '', 'Darmo Harapan Utara VIII / Blok EU-32', '', '0317385848', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('615', 'PMB2014150615', null, 'Gloria Valerie Lim', '', '', null, '1', '', '0', '5', '1', 'P', 'Surabaya', '2008-02-02', '', '0', '0.0', '0.0', '', '', 'Puri Sentra Raya PS 2 No. 41 Citraland', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('616', 'PMB2014150616', null, 'Gracia Queenie Wijaya', '', '', null, '1', '', '0', '4', '1', 'P', 'Surabaya', '2006-11-29', '', '0', '0.0', '0.0', '', '', 'Kupang Indah 12 No. 7', '', '7326867', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('617', 'PMB2014150617', null, 'Gweneth E. Wijaya', '', '', null, '1', '', '0', '5', '1', 'P', 'Perth Australia', '2007-07-05', '', '0', '0.0', '0.0', '', '', 'raya Darmo Permai II / 36', '', '0317319362', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('618', 'PMB2014150618', null, 'Jevaughn Aviel Kurniawan', '', '', null, '1', '', '0', '0', '1', 'L', 'Surabaya', '2007-02-18', '', '0', '0.0', '0.0', '', '', 'Puri Lidah Kulon Indah B-27', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('619', 'PMB2014150619', null, 'Justin Hartanto', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2006-12-02', '', '0', '0.0', '0.0', '', '', 'Tulungagung III/8, Sby', '', '0315321447', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('620', 'PMB2014150620', null, 'Justin Lee Sanyoto', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2007-01-18', '', '0', '0.0', '0.0', '', '', 'Villa Bukit Regency 2/PD 3-12 Pakuwon Indah', '', '7391118', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('621', 'PMB2014150621', null, 'Kaitlyn Halim', '', '', null, '1', '', '0', '1', '1', 'P', 'Surabaya', '2007-07-10', '', '0', '0.0', '0.0', '', '', 'Graha Famili Blok N-170, Sby', '', '0317320228', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('622', 'PMB2014150622', null, 'Kathleen Wijaya', '', '', null, '1', '', '0', '5', '1', 'P', 'Surabaya', '2007-03-01', '', '0', '0.0', '0.0', '', '', 'Graha Family L-117', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('623', 'PMB2014150623', null, 'Kevin Timothy Tanjung', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2007-07-10', '', '0', '0.0', '0.0', '', '', 'Lebak Permai I No. 5, Sby', '', '3813088', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('624', 'PMB2014150624', null, 'Andreano Sebastian Dengi', '', '', null, '1', '', '0', '5', '1', 'L', 'Padang', '2007-06-25', '', '0', '0.0', '0.0', '', '', 'Sambongan III/10', '', '0313536106', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('625', 'PMB2014150625', null, 'Kimiko Yauri', '', '', null, '1', '', '0', '4', '1', 'P', 'Surabaya', '2007-07-31', '', '0', '0.0', '0.0', '', '', 'Villa Bukit Regency 3 PE 8 No. 18 Pakuwon Indah', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('626', 'PMB2014150626', null, 'Lyonel Elzabad Anantara', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2007-07-18', '', '0', '0.0', '0.0', '', '', 'Taman International 1 B7 / 39 Citraland', '', '7414406', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('627', 'PMB2014150627', null, 'Matthew William Suwarno', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2007-01-24', '', '0', '0.0', '0.0', '', '', 'Gayung Kebonsari Besar 20, Sby', '', '0318290789', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('628', 'PMB2014150628', null, 'Natania Juan Hendrajaya', '', '', null, '1', '', '0', '5', '1', 'P', 'Surabaya', '2006-09-29', '', '0', '0.0', '0.0', '', '', 'Royal Resindence B2-103', '', '7510325', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('629', 'PMB2014150629', null, 'Phrisca', '', '', null, '1', '', '0', '1', '1', 'P', 'Jakarta', '2007-07-01', '', '0', '0.0', '0.0', '', '', 'Raya Dupak 17 Ruko Pasifik Megah Blok D-5', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('630', 'PMB2014150630', null, 'Ryan Joseph', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2007-11-25', '', '0', '0.0', '0.0', '', '', 'Villa Sentra Raya D5 / 11 Citraraya, Sby', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('631', 'PMB2014150631', null, 'Shawn William Handoko', '', '', null, '1', '', '0', '4', '1', 'L', 'Surabaya', '2007-10-25', '', '0', '0.0', '0.0', '', '', 'Puri Widya Utama i-I / 5', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('632', 'PMB2014150632', null, 'Verrell Tristan Sulistiano', '', '', null, '1', '', '0', '5', '1', 'L', 'Jakarta', '2007-07-07', '', '0', '0.0', '0.0', '', '', 'Bukit Telaga Golf TH 2 No. 2 Citraland', '', '0317400577', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('633', 'PMB2014150633', null, 'William Chandra', '', '', null, '1', '', '0', '1', '1', 'L', 'Surabaya', '2007-03-10', '', '0', '0.0', '0.0', '', '', 'Perum Graha Family P-18', '', '0317524704', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('634', 'PMB2014150634', null, 'Aislyn Samantha Ang', '', '', null, '1', '', '0', '5', '1', 'P', 'Singapore', '2007-11-21', '', '0', '0.0', '0.0', '', '', 'Puncak Permai II / 2A', '', '7315266', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('635', 'PMB2014150635', null, 'Alexander Budihartono', '', '', null, '1', '', '0', '4', '1', 'L', 'Brisbane', '2007-01-07', '', '0', '0.0', '0.0', '', '', 'Taman Pondok Indah LX-7', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('636', 'PMB2014150636', null, 'Angela Monique Tejakusuma', '', '', null, '1', '', '0', '5', '1', 'P', 'Surabaya', '2007-08-20', '', '0', '0.0', '0.0', '', '', 'Satelit Indah III / LN No. 5', '', '0317346469', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('637', 'PMB2014150637', null, 'Arnold Jansen Kho', '', '', null, '1', '', '0', '4', '1', 'L', 'Surabaya', '2007-04-18', '', '0', '0.0', '0.0', '', '', 'Lebak Indah Jaya I kav 9', '', '0313821484', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('638', 'PMB2014150638', null, 'Christabel', '', '', null, '1', '', '0', '5', '1', 'P', 'Surabaya', '2007-06-02', '', '0', '0.0', '0.0', '', '', 'Taman Pondok Jati AP - 9 Geluran Sepanjang', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('639', 'PMB2014150639', null, 'Ethan Isaac Silfanus', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2007-09-26', '', '0', '0.0', '0.0', '', '', 'Gubeng Kertajaya 7-Y/9', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('640', 'PMB2014150640', null, 'Fairy Fu', '', '', null, '1', '', '0', '5', '1', 'P', 'Surabaya', '2007-02-12', '', '0', '0.0', '0.0', '', '', 'Manukan Lor 1 F / 4, Sby', '', '031-7405002', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('641', 'PMB2014150641', null, 'Faylinn Avarielle Suganda', '', '', null, '1', '', '0', '4', '1', 'P', 'Malang', '2007-07-11', '', '0', '0.0', '0.0', '', '', 'Graha Family D-109', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('642', 'PMB2014150642', null, 'Fico Cesar Boedijono', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2007-02-06', '', '0', '0.0', '0.0', '', '', 'Taman Satelite Timur QQ-28', '', '7313138', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('643', 'PMB2014150643', null, 'Frederich Marciano', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2007-09-07', '', '0', '0.0', '0.0', '', '', 'Villa Bukit Regency 2 PD 7-2 Pakuwon', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('644', 'PMB2014150644', null, 'Gwen Angellica Ali Harsanto', '', '', null, '1', '', '0', '4', '1', 'P', 'Surabaya', '2006-10-25', '', '0', '0.0', '0.0', '', '', 'Royal Residence B 10 / 93', '', '8713405', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('645', 'PMB2014150645', null, 'Jillian Athalia Nigel', '', '', null, '1', '', '0', '5', '1', 'P', 'Surabaya', '2007-05-06', '', '0', '0.0', '0.0', '', '', 'Woodland WL 12 / 12', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('647', 'PMB2014150646', null, 'Joshua Daniel Wijaya', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2007-12-28', '', '0', '0.0', '0.0', '', '', 'Bukit Darmo Golf G-51', '', '0317345000', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('648', 'PMB2014150648', null, 'Kalleo Abram Joneus (Kalleo)', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2006-08-06', '', '0', '0.0', '0.0', '', '', 'Tanjung Pura 24 Surabaya', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('650', 'PMB2014150649', null, 'Kevin Adinugroho', '', '', null, '1', '', '0', '4', '1', 'L', 'Surabaya', '2007-12-03', '', '0', '0.0', '0.0', '', '', 'Kupang Indah XXI / 11, Sby', '', '0317311574', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('651', 'PMB2014150651', null, 'Matthew Alvaro Tanair', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2007-03-07', '', '0', '0.0', '0.0', '', '', 'Wisata Bukit Mas II / 15-22', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('652', 'PMB2014150652', null, 'Natascha Yap', '', '', null, '1', '', '0', '5', '1', 'P', 'USA', '2006-12-24', '', '0', '0.0', '0.0', '', '', 'Kencana Sari Timur D / 24', '', '0315610973', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('653', 'PMB2014150653', null, 'Disney Hananta Wijaya', '', '', null, '1', '', '0', '5', '0', 'L', 'Selangor, Malaysia', '2010-10-10', '', '0', '0.0', '0.0', '', '', 'Raya Gayung Kebonsari 33-35', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('655', 'PMB2014150654', null, 'Quinn Annabelle', '', '', null, '1', '', '0', '5', '1', 'P', 'Surabaya', '2007-10-03', '', '0', '0.0', '0.0', '', '', 'Pakis Tirtosari 2 / 8', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('656', 'PMB2014150656', null, 'Reinaldo Darence Halim', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabya', '2006-12-09', '', '0', '0.0', '0.0', '', '', 'Gedung Nasional No. 11', '', '5322700', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('658', 'PMB2014150657', null, 'Dominique Agatha Suryo', '', '', null, '1', '', '0', '4', '0', 'P', 'Surabaya', '2011-03-21', '', '0', '0.0', '0.0', '', '', 'Pakis Bukit Asoka J-12', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('660', 'PMB2014150659', null, 'Edelyn Florence Estelle', '', '', null, '1', '', '0', '0', '0', 'L', '', '0000-00-00', '', '0', '0.0', '0.0', '', '', '', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('662', 'PMB2014150661', null, 'Winleon Tanjaya', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2007-05-01', '', '0', '0.0', '0.0', '', '', 'Darmo Permai Selatan X / 126', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('664', 'PMB2014150663', null, 'Evangelina Isabel Silfanus', '', '', null, '1', '', '0', '0', '0', 'P', '', '0000-00-00', '', '0', '0.0', '0.0', '', '', '', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('666', 'PMB2014150665', null, 'Helena Serafi Xue', '', '', null, '1', '', '0', '0', '0', 'P', '', '0000-00-00', '', '0', '0.0', '0.0', '', '', '', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('667', 'PMB2014150667', null, 'Hugo Harrison Suwignyo', '', '', null, '1', '', '0', '0', '0', 'L', '', '0000-00-00', '', '0', '0.0', '0.0', '', '', '', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('668', 'PMB2014150668', null, 'Jeremy Oliver Hadiyanto', '', '', null, '1', '', '0', '0', '0', 'L', '', '0000-00-00', '', '0', '0.0', '0.0', '', '', '', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('669', 'PMB2014150669', null, 'Joel Fabrizio Hanjaya', '', '', null, '1', '', '0', '0', '0', 'L', '', '0000-00-00', '', '0', '0.0', '0.0', '', '', '', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('671', 'PMB2014150670', null, 'Justin Jusver', '', '', null, '1', '', '0', '0', '0', 'L', '', '0000-00-00', '', '0', '0.0', '0.0', '', '', '', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('672', 'PMB2014150672', null, 'Kate Massey Tunggala', '', '', null, '1', '', '0', '0', '0', 'P', '', '0000-00-00', '', '0', '0.0', '0.0', '', '', '', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('673', 'PMB2014150673', null, 'Li Ze En - Marty', '', '', null, '1', '', '0', '0', '0', 'L', 'Jilin, China', '0000-00-00', '', '0', '0.0', '0.0', '', '', '', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('675', 'PMB2014150674', null, 'Megan Wu', '', '', null, '1', '', '0', '0', '0', 'P', 'Surabaya', '2011-10-01', '', '0', '0.0', '0.0', '', '', '', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('676', 'PMB2014150676', null, 'Michael Amos Jonathan', '', '', null, '1', '', '0', '5', '0', 'L', 'Surabaya', '2011-03-22', '', '0', '0.0', '0.0', '', '', 'Taman Pondok Indah DX-5', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('678', 'PMB2014150677', null, 'Noel Efraim Limpo', '', '', null, '1', '', '0', '5', '0', 'L', 'Melbourne', '2010-11-11', '', '0', '0.0', '0.0', '', '', 'Graha Family FF-32', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('680', 'PMB2014150679', null, 'Early Angel Thie', '', '', null, '1', '', '0', '4', '1', 'P', 'Surabaya', '2007-03-07', '', '0', '0.0', '0.0', '', '', 'Pakuwon The Mansion PF4 No. 8', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('681', 'PMB2014150681', null, 'Erleen Chandra Tang', '', '', null, '1', '', '0', '1', '1', 'P', 'Surabaya', '2006-10-01', '', '0', '0.0', '0.0', '', '', 'Darmo Harapan Utara VII / EY-11', '', '83934138', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('682', 'PMB2014150682', null, 'Ernest Kenneth Young Sumarno', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2005-12-24', '', '0', '0.0', '0.0', '', '', 'Petemon Timur No 112', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('683', 'PMB2014150683', null, 'James Dendy', '', '', null, '1', '', '0', '1', '1', 'L', 'Surabaya', '2006-12-03', '', '0', '0.0', '0.0', '', '', 'Royal Residence BI / 21A', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('684', 'PMB2014150684', null, 'Jamie Axi Lee', '', '', null, '1', '', '0', '4', '1', 'L', 'Surabaya', '2006-06-10', '', '0', '0.0', '0.0', '', '', 'Selat Golf J2 / 21 Citraland', '', '0317400010', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('685', 'PMB2014150685', null, 'Jayden Gil Gunawan', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2006-05-25', '', '0', '0.0', '0.0', '', '', 'Pakis Tirtosari VII / 81', '', '5674211', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('686', 'PMB2014150686', null, 'Nicholas Yuwono', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2006-02-05', '', '0', '0.0', '0.0', '', '', 'Satelit Indah 9 / GN-12', '', '7318494', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('687', 'PMB2014150687', null, 'Nixie Van Chen', '', '', null, '1', '', '0', '5', '1', 'P', 'Surabaya', '2006-09-05', '', '0', '0.0', '0.0', '', '', 'Villa Bukit Mas RC-21', '', '5680118', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('688', 'PMB2014150688', null, 'Regina Soempiet', '', '', null, '1', '', '0', '5', '1', 'P', 'Surabaya', '2006-06-12', '', '0', '0.0', '0.0', '', '', 'Royal Residence Baimoral B3-52A', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('689', 'PMB2014150689', null, 'Reinna Wijaya Alie', '', '', null, '1', '', '0', '5', '1', 'P', 'Surabaya', '2006-03-14', '', '0', '0.0', '0.0', '', '', 'Satelit Indah 6 JN No. 5', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('690', 'PMB2014150690', null, 'Shelby Wijaya', '', '', null, '1', '', '0', '5', '1', 'P', 'Surabaya', '2006-02-10', '', '0', '0.0', '0.0', '', '', 'Kupang Indah VII / 22', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('691', 'PMB2014150691', null, 'Steven Henry Christanto', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2006-10-31', '', '0', '0.0', '0.0', '', '', 'Darmo Baru Timur II/27', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('692', 'PMB2014150692', null, 'Benedict Ongko Wibowo', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2007-01-27', '', '0', '0.0', '0.0', '', '', 'Kupang Indah 7 / 6', '', '7311731', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('693', 'PMB2014150693', null, 'Celine Tannia Prajogo', '', '', null, '1', '', '0', '5', '1', 'P', 'Surabaya', '2006-09-21', '', '0', '0.0', '0.0', '', '', 'Satelit Indah GN-4', '', '7314462', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('694', 'PMB2014150694', null, 'Chelsea Clarissa', '', '', null, '1', '', '0', '5', '1', 'P', 'Surabaya', '2006-03-19', '', '0', '0.0', '0.0', '', '', 'Pregolan Bunder 46 - 48', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('695', 'PMB2014150695', null, 'Davide William Susanto', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2006-12-01', '', '0', '0.0', '0.0', '', '', 'Wisata Bukit Mas I / C1-8', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('696', 'PMB2014150696', null, 'Gwenyth Jazlyn Korompis', '', '', null, '1', '', '0', '5', '1', 'P', 'Surabaya', '2006-09-29', '', '0', '0.0', '0.0', '', '', 'Bintang Diponggo Kav 825', '', '5687611', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('697', 'PMB2014150697', null, 'Jennifer Wongsowinoto', '', '', null, '1', '', '0', '5', '1', 'P', 'Surabaya', '2006-06-01', '', '0', '0.0', '0.0', '', '', 'Wisata Bukit Mas C4-5', '', '7522784', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('698', 'PMB2014150698', null, 'Jonathan Febreson Kanesa', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2006-02-13', '', '0', '0.0', '0.0', '', '', 'Darmo Indah Timur IV Blok O No. 2', '', '7311001', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('699', 'PMB2014150699', null, 'Kaitlyn Angeline Santoso', '', '', null, '1', '', '0', '5', '1', 'P', 'Surabaya', '2006-08-11', '', '0', '0.0', '0.0', '', '', 'Dian Istana AI - 20', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('700', 'PMB2014150700', null, 'Kathleen Cristaline Abigail', '', '', null, '1', '', '0', '5', '1', 'P', 'Surabaya', '2006-04-18', '', '0', '0.0', '0.0', '', '', 'Prambanan Residence CF/07', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('701', 'PMB2014150701', null, 'Lavinia Geovanni Tanujaya', '', '', null, '1', '', '0', '5', '1', 'P', 'Surabaya', '2006-10-16', '', '0', '0.0', '0.0', '', '', 'Villa Bukit Mas Blok H No. 1', '', '5663797', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('702', 'PMB2014150702', null, 'Maxwell Gautama', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2006-03-07', '', '0', '0.0', '0.0', '', '', 'Graha Family U.142', '', '0317386500', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('703', 'PMB2014150703', null, 'Olethea Kylie Theharin', '', '', null, '1', '', '0', '5', '1', 'P', 'Surabaya', '2005-11-07', '', '0', '0.0', '0.0', '', '', 'Palma Grandia K-4/7, Sby', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('704', 'PMB2014150704', null, 'Regina Amadea', '', '', null, '1', '', '0', '5', '1', 'P', 'Surabaya', '2006-10-16', '', '0', '0.0', '0.0', '', '', 'Raya Satelit Indah AT-1', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('705', 'PMB2014150705', null, 'Ricky Sugiarto Tjandra', '', '', null, '1', '', '0', '1', '1', 'L', 'Surabaya', '2006-06-29', '', '0', '0.0', '0.0', '', '', 'Darmo Harapan Indah XX - 8', '', '7317255', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('706', 'PMB2014150706', null, 'Terrance Edmund L', '', '', null, '1', '', '0', '4', '1', 'L', 'Surabaya', '2006-06-09', '', '0', '0.0', '0.0', '', '', 'Darmo Permai Selatan I / 32', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('707', 'PMB2014150707', null, 'Thierry Hegan Ho', '', '', null, '1', '', '0', '4', '1', 'L', 'Surabaya', '2006-09-25', '', '0', '0.0', '0.0', '', '', 'Raya Darmo Permai  I/28', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('708', 'PMB2014150708', null, 'William Widjaja', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2006-04-08', '', '0', '0.0', '0.0', '', '', 'Vila Bukit Mas K-12A', '', '08123112356', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('709', 'PMB2014150709', null, 'Zeng Xian Lun', '', '', null, '1', '', '0', '5', '1', 'L', 'Mojokerto', '2005-09-23', '', '0', '0.0', '0.0', '', '', 'Alam Galaxy A 10/06, Surabaya', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('710', 'PMB2014150710', null, 'Anneliese Josephine Irawan', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2006-10-28', '', '0', '0.0', '0.0', '', '', 'Graha Family R-7', '', '0317533777', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('711', 'PMB2014150711', null, 'Angelene Veronica Tjandra', '', '', null, '1', '', '0', '5', '1', 'P', 'Surabaya', '2006-10-28', '', '0', '0.0', '0.0', '', '', 'Taman Internasional I / BI-30', '', '7441126', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('712', 'PMB2014150712', null, 'Celine Princess Liangkey', '', '', null, '1', '', '0', '5', '1', 'P', 'Surabaya', '2006-09-27', '', '0', '0.0', '0.0', '', '', 'Darmo Hill M-22', '', '5636157', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('713', 'PMB2014150713', null, 'Christopher Seputro', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2006-10-18', '', '0', '0.0', '0.0', '', '', 'Villa Bukit Mas Meditarnian N-26', '', '5618999', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('714', 'PMB2014150714', null, 'Cliff Nelson Tumbelaka', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2006-04-08', '', '0', '0.0', '0.0', '', '', 'Villa Bukit Regency 3 PE 10-40, Pakuwon Indah', '', '7391455', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('715', 'PMB2014150715', null, 'Daniel Henry Suwignjo', '', '', null, '1', '', '0', '1', '1', 'L', 'Surabaya', '2007-12-17', '', '0', '0.0', '0.0', '', '', 'Bukit Darmo Golf Regency B2', '', '0317328119', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('716', 'PMB2014150716', null, 'Devyn Christopher', '', '', null, '1', '', '0', '4', '1', 'L', 'Surabaya', '2006-04-27', '', '0', '0.0', '0.0', '', '', 'Darmo Harapan V / EL-9', '', '7349450', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('718', 'PMB2014150717', null, 'Eiffelinne Rudijanto', '', '', null, '1', '', '0', '5', '1', 'P', 'Surabaya', '2006-08-25', '', '0', '0.0', '0.0', '', '', 'International Village 2, H6-6', '', '7451087', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('719', 'PMB2014150719', null, 'Felicia Frederica', '', '', null, '1', '', '0', '5', '1', 'P', 'Surabaya', '2006-11-16', '', '0', '0.0', '0.0', '', '', 'Graha Family Blok L-55', '', '71111555', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('720', 'PMB2014150720', null, 'Fennie Natalie Solaiman', '', '', null, '1', '', '0', '5', '1', 'P', 'Surabaya', '2006-06-29', '', '0', '0.0', '0.0', '', '', 'Galeria Golf No. 25', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('721', 'PMB2014150494', null, 'Cheryll Evangeline Arifin', '', '', null, '1', '', '0', '4', '1', 'P', 'Surabaya', '2008-09-13', '', '0', '0.0', '0.0', '', '', 'Rungkut Mapan Tengah II / CA-6', '', '0811375657', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('722', 'PMB2014150721', null, 'Geoffrey Daniel (Geo)', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2006-05-13', '', '0', '0.0', '0.0', '', '', 'Diamond Hill DR 5-6 Citraland', '', '0317458368', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('723', 'PMB2014150723', null, 'Harrel Ethan Macksoegie', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2006-08-09', '', '0', '0.0', '0.0', '', '', 'Simo Kwagean 98', '', '7492164', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('724', 'PMB2014150724', null, 'Jean-Vif Chandra', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2006-12-22', '', '0', '0.0', '0.0', '', '', 'Villa Sentra Raya D2 / 3', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('725', 'PMB2014150725', null, 'Jeslyn Victoria Lim', '', '', null, '1', '', '0', '5', '1', 'P', 'Surabaya', '2006-10-21', '', '0', '0.0', '0.0', '', '', 'Graha Family FF 10', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('726', 'PMB2014150726', null, 'Maximillian Wilbert', '', '', null, '1', '', '0', '5', '1', 'L', 'Maximillian Wilbert', '2006-05-20', '', '0', '0.0', '0.0', '', '', 'Darmo Baru Barat XI / 11', '', '7321670', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('727', 'PMB2014150727', null, 'Phillip Albert Samaoen', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2006-07-17', '', '0', '0.0', '0.0', '', '', 'Graha Family FF-29', '', '7535449', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('728', 'PMB2014150728', null, 'Samuel Widarto', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2006-02-17', '', '0', '0.0', '0.0', '', '', 'Darmo Permai Timur I / 29', '', '7314382', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('729', 'PMB2014150729', null, 'Stephanie Meygan Handoko', '', '', null, '1', '', '0', '4', '1', 'P', 'Surabaya', '2006-05-15', '', '0', '0.0', '0.0', '', '', 'Puri Widya Utama i-I/5', '', '0317348923', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('730', 'PMB2014150730', null, 'Walt Christian Halimsaputera', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2006-04-26', '', '0', '0.0', '0.0', '', '', 'Satelit Utara 6-IT/10', '', '7325600', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('731', 'PMB2014150731', null, 'Andrew Koespianto', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2005-06-18', '', '0', '0.0', '0.0', '', '', 'Graha Family C-38', '', '7346253', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('732', 'PMB2014150732', null, 'Edbert Louise Suryasatria', '', '', null, '1', '', '0', '4', '1', 'L', 'Surabaya', '2004-12-04', '', '0', '0.0', '0.0', '', '', 'R. Sukomanunggal Jaya 60, Sby', '', '7311560', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('733', 'PMB2014150733', null, 'Edgar Rilley Setyadarma', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2005-05-24', '', '0', '0.0', '0.0', '', '', 'Vila Bukit Mas L 21', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('734', 'PMB2014150734', null, 'Elaine Christian Budijanto', '', '', null, '1', '', '0', '5', '1', 'P', 'Surabaya', '2004-11-10', '', '0', '0.0', '0.0', '', '', 'Woodland 2/122 Citraland', '', '72362838', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('735', 'PMB2014150735', null, 'Farryl Gracious Sie', '', '', null, '1', '', '0', '5', '1', 'P', 'Surabaya', '2005-05-20', '', '0', '0.0', '0.0', '', '', 'Dharmahusada Indah M-17', '', '596427071', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('736', 'PMB2014150736', null, 'Felicia Gabrielle Rumoei', '', '', null, '1', '', '0', '5', '1', 'P', 'Surabaya', '2005-06-18', '', '0', '0.0', '0.0', '', '', 'Simpang Darmo Permai Timur II No. 2', '', '7342738', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('737', 'PMB2014150737', null, 'Fujiana Tanoto (Niu Niu)', '', '', null, '1', '', '0', '5', '1', 'P', 'Surabaya', '2006-01-24', '', '0', '0.0', '0.0', '', '', 'Villa Bukit Mas Monaco II TC 6', '', '035614566', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('738', 'PMB2014150738', null, 'Frederick Rico Go', '', '', null, '1', '', '0', '4', '1', 'L', 'Surabaya', '2006-11-09', '', '0', '0.0', '0.0', '', '', 'Villa Bukit Indah AAL 36', '', '7524253', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('739', 'PMB2014150739', null, 'Gabriela Keyrin Tjoei', '', '', null, '1', '', '0', '4', '1', 'P', 'Surabaya', '2005-08-18', '', '0', '0.0', '0.0', '', '', 'Darmo Baru Barat X/53', '', '7344193', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('740', 'PMB2014150740', null, 'Gerich Greven', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2005-05-02', '', '0', '0.0', '0.0', '', '', 'Petemon Barat 96', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('741', 'PMB2014150741', null, 'Hillary Yauwhanes (Hilly)', '', '', null, '1', '', '0', '4', '1', 'P', 'Surabaya', '2005-01-10', '', '0', '0.0', '0.0', '', '', 'Graha Famili A-51', '', '0315992938', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('742', 'PMB2014150742', null, 'James Marcel Chandra', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2005-06-17', '', '0', '0.0', '0.0', '', '', 'Babatan Pratama NN 47', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('743', 'PMB2014150743', null, 'Joel Ravael Kurniawan', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2005-10-03', '', '0', '0.0', '0.0', '', '', 'Kutisari Indah Utara III / 30', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('744', 'PMB2014150744', null, 'Jonathan Budianto', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2005-09-10', '', '0', '0.0', '0.0', '', '', 'Royal Residence B3-47', '', '7510137', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('745', 'PMB2014150745', null, 'Kimberly Zhang', '', '', null, '1', '', '0', '5', '1', 'P', 'Surabaya', '2005-04-27', '', '0', '0.0', '0.0', '', '', 'Darmo Baru Barat I / 57', '', '7315902', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('746', 'PMB2014150746', null, 'Marcia Jeselyn', '', '', null, '1', '', '0', '4', '1', 'P', 'Surabaya', '2005-06-03', '', '0', '0.0', '0.0', '', '', 'Villa Bukit Mas D-28', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('747', 'PMB2014150747', null, 'Victoria Ashley Pramoko', '', '', null, '1', '', '0', '5', '1', 'P', 'Surabaya', '2005-06-02', '', '0', '0.0', '0.0', '', '', 'Pakis Bukit Anggrek L-12 Darmo Hill', '', '5636119', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('748', 'PMB2014150748', null, 'Yohan Immanuel Hendrajaya', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2004-07-08', '', '0', '0.0', '0.0', '', '', 'Royal Residence B 2-103', '', '7510325', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('749', 'PMB2014150749', null, 'Ashley Cecilia Nugroho', '', '', null, '1', '', '0', '4', '1', 'P', 'Surabaya', '2005-06-01', '', '0', '0.0', '0.0', '', '', 'Graha Family Utara VII Blok D-187', '', '7343419', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('750', 'PMB2014150750', null, 'Athalia Nichole Nathanusa', '', '', null, '1', '', '0', '5', '1', 'P', 'Surabaya', '2005-05-24', '', '0', '0.0', '0.0', '', '', 'Citraland Pakuwon KS-5', '', '0317480082', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('751', 'PMB2014150751', null, 'Benedict Theodore Hogiharto', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2005-07-14', '', '0', '0.0', '0.0', '', '', 'Kencanasari Barat 7/G-38', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('752', 'PMB2014150752', null, 'Calistha Kurniawan', '', '', null, '1', '', '0', '1', '1', 'P', 'Surabaya', '2005-08-09', '', '0', '0.0', '0.0', '', '', 'Darmo Hill S-10', '', '5636300', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('753', 'PMB2014150753', null, 'Dave Tristan Hartono', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2005-10-28', '', '0', '0.0', '0.0', '', '', 'Bintang Diponggo 757', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('754', 'PMB2014150754', null, 'Elaine Catalina Lesmana', '', '', null, '1', '', '0', '4', '1', 'P', 'Surabaya', '2004-12-15', '', '0', '0.0', '0.0', '', '', 'Raya Bumi Indah No. 18', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('755', 'PMB2014150755', null, 'Ferdinand Jianming Karlim', '', '', null, '1', '', '0', '1', '1', 'L', 'Surabaya', '2005-05-17', '', '0', '0.0', '0.0', '', '', 'Achmad Jais 34 Blok B/9, Grand Achmad Jais', '', '0315357791', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('756', 'PMB2014150756', null, 'Gabriel Galuh Susanto Putra', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2005-07-24', '', '0', '0.0', '0.0', '', '', 'Darmo Harapan III EA 9', '', '7316959', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('757', 'PMB2014150757', null, 'Gloria Rexana Lie', '', '', null, '1', '', '0', '5', '1', 'P', 'surabaya', '2006-07-09', '', '0', '0.0', '0.0', '', '', 'Simpang Darmo Permai Utara 5 / 35', '', '7342859', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('758', 'PMB2014150758', null, 'Goodwill Bryan Lion', '', '', null, '1', '', '0', '4', '1', 'L', 'Surabaya', '2005-07-28', '', '0', '0.0', '0.0', '', '', 'Graha Family B-63', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('759', 'PMB2014150759', null, 'Jeanette Magdalene', '', '', null, '1', '', '0', '5', '1', 'P', 'Surabaya', '2005-06-23', '', '0', '0.0', '0.0', '', '', 'Darmo Harapan Utara I EM-7', '', '0317317700', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('760', 'PMB2014150760', null, 'Jonathan Harleyson Sutanto', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2005-05-09', '', '0', '0.0', '0.0', '', '', 'Jupiter BS-15 Taman Hunian Satelit', '', '7328360', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('761', 'PMB2014150761', null, 'Kellin Anne Hidayat (Kellin)', '', '', null, '1', '', '0', '4', '1', 'P', 'Surabaya', '2005-08-09', '', '0', '0.0', '0.0', '', '', 'Graha Famili Selatan III / A8', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('762', 'PMB2014150762', null, 'Kimberly Yauwhanes (Kimy)', '', '', null, '1', '', '0', '4', '1', 'P', 'Surabaya', '2005-01-10', '', '0', '0.0', '0.0', '', '', 'Graha Famili A-51', '', '0315992938', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('763', 'PMB2014150763', null, 'Marco Alexander Tejo', '', '', null, '1', '', '0', '4', '1', 'L', 'Surabaya', '2005-11-16', '', '0', '0.0', '0.0', '', '', 'Darmo Harapan EC-20', '', '7318486', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('764', 'PMB2014150764', null, 'Nathanael Rodrick Ho', '', '', null, '1', '', '0', '4', '1', 'L', 'Suraba', '2005-06-16', '', '0', '0.0', '0.0', '', '', 'Raya Darmo Permai I / 28', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('765', 'PMB2014150765', null, 'Patrick Riche Go', '', '', null, '1', '', '0', '4', '1', 'L', 'Surabaya', '2005-11-09', '', '0', '0.0', '0.0', '', '', 'Villa Bukit Indah AAL 36', '', '7524253', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('766', 'PMB2014150766', null, 'Rebecca Ferren', '', '', null, '1', '', '0', '1', '1', 'P', 'Surabaya', '2004-12-25', '', '0', '0.0', '0.0', '', '', 'Perum. Graha Family Jl. Pulau Golf Family I (G-32)', '', '7384666', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('767', 'PMB2014150767', null, 'Vedericco Chandra', '', '', null, '1', '', '0', '4', '1', 'L', 'Surabaya', '2005-07-05', '', '0', '0.0', '0.0', '', '', 'Jajar Tunggal Utara V Blok S No. 5', '', '081331608585', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('768', 'PMB2014150768', null, 'Arnold Nathanael Benjamin', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2005-09-05', '', '0', '0.0', '0.0', '', '', 'Satelit Utara III / ET 36', '', '7325077', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('769', 'PMB2014150769', null, 'Anneliese', '', '', null, '1', '', '0', '5', '1', 'P', 'Surabaya', '2005-06-01', '', '0', '0.0', '0.0', '', '', 'Raya Kalijaten, Ruko Sepanjang Town House C 15-16', '', '7871720', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('770', 'PMB2014150770', null, 'Brandon Lee Sanyoto', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2005-10-05', '', '0', '0.0', '0.0', '', '', 'Villa Bukit Regency 2 / PD 3-12 Pakuwon Indah', '', '7391118', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('771', 'PMB2014150771', null, 'Callie Elspeth Kurniadi', '', '', null, '1', '', '0', '5', '1', 'P', 'Surabaya', '2005-07-23', '', '0', '0.0', '0.0', '', '', 'Wisata Bukit Mas C-5 / 12', '', '7535682', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('772', 'PMB2014150772', null, 'Celine Lopez Gonzales Tan', '', '', null, '1', '', '0', '5', '1', 'P', 'Suraaya', '2005-05-14', '', '0', '0.0', '0.0', '', '', 'Apartemen Waterplace Tower A  08-10', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('773', 'PMB2014150773', null, 'Daniel Redondo Pantas Sianipar', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2005-01-20', '', '0', '0.0', '0.0', '', '', 'selindri 9/3 kota baru driyorejo Gresik', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('774', 'PMB2014150774', null, 'Eugenia Cheryl Sutedjo', '', '', null, '1', '', '0', '4', '1', 'P', 'Surabaya', '2005-07-30', '', '0', '0.0', '0.0', '', '', 'Graha Family F 58', '', '7385658', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('775', 'PMB2014150775', null, 'Feliza Theodora Putri Tjokro', '', '', null, '1', '', '0', '4', '1', 'P', 'Surabaya', '2005-05-27', '', '0', '0.0', '0.0', '', '', 'Puri Sentra Raya PS 1-50 Q Citraland', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('776', 'PMB2014150776', null, 'Hovan Mac Chen', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2005-08-30', '', '0', '0.0', '0.0', '', '', 'Villa Bukit Mas RC-21', '', '5680118', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('777', 'PMB2014150777', null, 'Jonathan Wongso', '', '', null, '1', '', '0', '4', '1', 'L', 'Surabaya', '2005-09-08', '', '0', '0.0', '0.0', '', '', 'Villa Valensia PA 4/3 Pakuwon Indah', '', '7523055', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('778', 'PMB2014150778', null, 'Josephine Christabelle', '', '', null, '1', '', '0', '5', '1', 'P', 'Surabaya', '2005-10-28', '', '0', '0.0', '0.0', '', '', 'Kupang Baru 2 No. 25', '', '7346835', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('779', 'PMB2014150779', null, 'Karen Leticia', '', '', null, '1', '', '0', '5', '1', 'P', 'Surabaya', '2005-09-04', '', '0', '0.0', '0.0', '', '', 'Taman Gapura E6 / 19', '', '7412288', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('780', 'PMB2014150780', null, 'Kenneth Ongko Wibowo', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2005-11-07', '', '0', '0.0', '0.0', '', '', 'Kupang Indah 7 / 6', '', '7311731', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('781', 'PMB2014150781', null, 'Lianny Patricia Hartono', '', '', null, '1', '', '0', '5', '1', 'P', 'Surabaya', '2005-03-13', '', '0', '0.0', '0.0', '', '', 'Permata Safira Regency Blok BI / 3', '', '7534207', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('782', 'PMB2014150782', null, 'Michelle Ping Ping Lie', '', '', null, '1', '', '0', '3', '1', 'P', 'Surabaya', '2005-09-11', '', '0', '0.0', '0.0', '', '', 'Satelit Indah 7 / EN 1', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('783', 'PMB2014150783', null, 'Peter Julianto', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2005-03-23', '', '0', '0.0', '0.0', '', '', 'Darmo Hill L-21 A', '', '5636120', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('784', 'PMB2014150784', null, 'Timothy Johannes Wijaya', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2005-10-16', '', '0', '0.0', '0.0', '', '', 'Bukit Darmo Golf G-51', '', '7383999', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('785', 'PMB2014150785', null, 'William Patrick', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2005-01-28', '', '0', '0.0', '0.0', '', '', 'Villa Taman Telaga II TJ-6 No. 9 Citraland', '', '7450853', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('786', 'PMB2014150786', null, 'Audrey Netanya Benyamin', '', '', null, '1', '', '0', '5', '1', 'P', 'Surabaya', '2004-04-01', '', '0', '0.0', '0.0', '', '', 'Satelit Utara III/ET - 36, Sby', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('787', 'PMB2014150787', null, 'Beatricia Audrey Siemon', '', '', null, '1', '', '0', '4', '1', 'P', 'Surabaya', '2004-11-27', '', '0', '0.0', '0.0', '', '', 'Villa Bukit Regency 2, PD3/11, Pakuwon Indah, Sby', '', '7391112', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('788', 'PMB2014150788', null, 'Cathrioca Keisha', '', '', null, '1', '', '0', '4', '1', 'P', 'Surabaya', '2004-09-18', '', '0', '0.0', '0.0', '', '', 'Taman Pondok Indah AA - 2 Wiyung, Sby', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('789', 'PMB2014150789', null, 'Charlene Athena Tjahjadi', '', '', null, '1', '', '0', '5', '1', 'P', 'Surabaya', '2004-01-28', '', '0', '0.0', '0.0', '', '', 'Raya Kupang Jaya B 10', '', '81984321', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('790', 'PMB2014150790', null, 'Cindy Carina Thomas (Cindy)', '', '', null, '1', '', '0', '5', '1', 'P', 'Probolinggo', '2004-08-17', '', '0', '0.0', '0.0', '', '', 'Sidodadi No. 40 Surabaya', '', '0313719890', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('791', 'PMB2014150791', null, 'Derric Ang Suhartono', '', '', null, '1', '', '0', '4', '1', 'L', 'Surabaya', '2004-05-26', '', '0', '0.0', '0.0', '', '', 'Citraland Bukit Golf Utama Blok FI / 3A', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('792', 'PMB2014150792', null, 'Devina Claresta', '', '', null, '1', '', '0', '5', '1', 'P', 'Surabaya', '2004-01-05', '', '0', '0.0', '0.0', '', '', 'Margorejo Indah 3/B-710', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('793', 'PMB2014150793', null, 'Edward Christian Budijanto', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2003-10-25', '', '0', '0.0', '0.0', '', '', 'SidosermoAirdas V/F-116', '', '8432601', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('794', 'PMB2014150794', null, 'Feliana Veronica', '', '', null, '1', '', '0', '4', '1', 'P', 'Surabaya', '2004-08-10', '', '0', '0.0', '0.0', '', '', 'Darmo Permai Timur SS - 26', '', '7342890', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('795', 'PMB2014150795', null, 'Francis Limanseto', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2004-01-01', '', '0', '0.0', '0.0', '', '', 'Babatan Mukti O - 19, Wiyung', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('796', 'PMB2014150796', null, 'Giselle Laetitia', '', '', null, '1', '', '0', '5', '1', 'P', 'Surabaya', '2004-08-26', '', '0', '0.0', '0.0', '', '', 'Villa Bukit Indah AA 10-12, Pakuwon', '', '7526847', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('797', 'PMB2014150797', null, 'Graciella Geraldine Supramono', '', '', null, '1', '', '0', '5', '1', 'P', 'Banyuwangi', '2004-01-07', '', '0', '0.0', '0.0', '', '', 'Sutorejo Utara F 1/2', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('798', 'PMB2014150798', null, 'Jason Lienardi', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2004-04-12', '', '0', '0.0', '0.0', '', '', 'Kupang Iandah XI / 116', '', '7326978', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('799', 'PMB2014150799', null, 'Jeremy Gautama', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2004-07-13', '', '0', '0.0', '0.0', '', '', 'Satelit Indah 7/DN-21, Surabaya', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('800', 'PMB2014150800', null, 'Joycelyn Eugenia Kurniadi', '', '', null, '1', '', '0', '5', '1', 'P', 'Surabaya', '2004-02-14', '', '0', '0.0', '0.0', '', '', 'Wisata Bukit Mas C-5 / 12', '', '7535682', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('801', 'PMB2014150801', null, 'Kayne Juro Chandra (Kayne)', '', '', null, '1', '', '0', '4', '1', 'L', 'Surabaya', '2020-11-04', '', '0', '0.0', '0.0', '', '', 'Puri Sentra Raya PS 1/37 Citraland', '', '7416677', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('802', 'PMB2014150802', null, 'Kenny Wibowo', '', '', null, '1', '', '0', '3', '1', 'L', 'Surabaya', '2004-02-08', '', '0', '0.0', '0.0', '', '', 'Taman Hunian Satelit II Blok B/2, Sukomanunggal Indah III', '', '7310536', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('803', 'PMB2014150803', null, 'Michelle Katrina Suwanto', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2004-09-17', '', '0', '0.0', '0.0', '', '', 'Simo Rukun VII / 7, Surabaya', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('804', 'PMB2014150804', null, 'Naomi Boesono', '', '', null, '1', '', '0', '5', '1', 'P', 'Surabaya', '2003-12-05', '', '0', '0.0', '0.0', '', '', 'Pakuwon Indah Villa Bukit Regency I PC3 - 12', '', '7391974', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('805', 'PMB2014150805', null, 'Prisca Lovely Gunawan', '', '', null, '1', '', '0', '5', '1', 'P', 'Surabaya', '2004-04-29', '', '0', '0.0', '0.0', '', '', 'Sukomanunggal Jaya XI / XL-26', '', '7314888', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('806', 'PMB2014150806', null, 'Rachel Mantalik', '', '', null, '1', '', '0', '5', '1', 'P', 'Surabaya', '2004-11-17', '', '0', '0.0', '0.0', '', '', 'Royal Residence B 10/97', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('807', 'PMB2014150807', null, 'Shelfina', '', '', null, '1', '', '0', '5', '1', 'P', 'Surabaya', '2004-05-21', '', '0', '0.0', '0.0', '', '', 'Perum Alam Galaxy, Water Terrace A8 - 3', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('808', 'PMB2014150808', null, 'Vanessa Shareen', '', '', null, '1', '', '0', '5', '1', 'P', 'Surabaya', '2004-06-19', '', '0', '0.0', '0.0', '', '', 'Babatan Pantai Barat I/66                       Villa Bukit Regency 2PD3-11', '', '7482033', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('809', 'PMB2014150809', null, 'Wang Xiao Han', '', '', null, '1', '', '0', '5', '1', 'P', 'Surabaya', '2002-08-13', '', '0', '0.0', '0.0', '', '', 'Rayan Regency F-5', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('810', 'PMB2014150810', null, 'Brivio Darren Wigitono', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2004-08-10', '', '0', '0.0', '0.0', '', '', 'Darmo Indah Selatan LL - 39', '', '71027122', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('811', 'PMB2014150811', null, 'Clarice Angeline', '', '', null, '1', '', '0', '5', '1', 'P', 'Surabaya', '2004-06-28', '', '0', '0.0', '0.0', '', '', 'Tanjungsari Baru V / Blok GG-36', '', '7313096', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('812', 'PMB2014150812', null, 'Devny Fu', '', '', null, '1', '', '0', '5', '1', 'P', 'Surabaya', '2003-11-02', '', '0', '0.0', '0.0', '', '', 'Manukan Lor IF No. 4', '', '03171012546', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('813', 'PMB2014150813', null, 'Emily Francesca Soegijanto', '', '', null, '1', '', '0', '5', '1', 'P', 'Surabaya', '2020-04-08', '', '0', '0.0', '0.0', '', '', 'Darmo Baru Barat I / 39', '', '7329845', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('814', 'PMB2014150814', null, 'Eunike Jacquelyn Widarto', '', '', null, '1', '', '0', '5', '1', 'P', 'Surabaya', '2004-10-13', '', '0', '0.0', '0.0', '', '', 'Darmo Permai Timur VIII/16, Sby', '', '7328528', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('815', 'PMB2014150815', null, 'Fiona Chandra', '', '', null, '1', '', '0', '4', '1', 'P', 'Surabaya', '2004-02-17', '', '0', '0.0', '0.0', '', '', 'Puri Widya Kencana J3 No 2 Citra Raya', '', '7482759', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('816', 'PMB2014150816', null, 'He Xing Hua', '', '', null, '1', '', '0', '5', '1', 'P', 'Shang Hai', '2004-07-30', '', '0', '0.0', '0.0', '', '', 'Dupak No. 65 Blok B-3 Ruko Mutiara Dupak', '', '71844438', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('817', 'PMB2014150817', null, 'Jocelyn', '', '', null, '1', '', '0', '5', '1', 'P', 'Surabaya', '2004-06-14', '', '0', '0.0', '0.0', '', '', 'Tulung Agung 3 / 8, Surabaya', '', '7056995', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('818', 'PMB2014150818', null, 'Kayla Calista Anabelle', '', '', null, '1', '', '0', '5', '1', 'P', 'Surabaya', '2004-07-18', '', '0', '0.0', '0.0', '', '', 'Puri Surya Jaya D5/32, Gedangan', '', '8917657', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('819', 'PMB2014150819', null, 'Lamtiar Nauli Sabrina Margareth Nababan', '', '', null, '1', '', '0', '5', '1', 'P', 'Tangerang', '2004-09-03', '', '0', '0.0', '0.0', '', '', 'Wisma Tengger XVII / 2', '', '7405884', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('820', 'PMB2014150820', null, 'Louis Darren Irwan', '', '', null, '1', '', '0', '4', '1', 'L', 'Surabaya', '2003-12-09', '', '0', '0.0', '0.0', '', '', 'Imperial Golf Regensi AB 2 No. 6', '', '7391882', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('821', 'PMB2014150821', null, 'Melinda Fandrayani', '', '', null, '1', '', '0', '5', '1', 'P', 'Surabaya', '2004-12-09', '', '0', '0.0', '0.0', '', '', 'Satelit Utara VII / CT - 14, Sby', '', '7316226', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('822', 'PMB2014150822', null, 'Nathan Amadeus', '', '', null, '1', '', '0', '5', '1', 'P', 'Surabaya', '2004-05-14', '', '0', '0.0', '0.0', '', '', 'Alam Hijau F1 / 20, Sby', '', '7466301', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('823', 'PMB2014150823', null, 'Netanya Marvela Irawan', '', '', null, '1', '', '0', '5', '1', 'P', 'Surabaya', '2004-02-06', '', '0', '0.0', '0.0', '', '', 'Graha Famili R - 7, Sby', '', '7533777', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('824', 'PMB2014150824', null, 'Nicholas Kevin Tjoei', '', '', null, '1', '', '0', '4', '1', 'L', 'Surabaya', '2004-01-09', '', '0', '0.0', '0.0', '', '', 'Darmo Baru Barat X / 53, Sby', '', '7344193', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('825', 'PMB2014150825', null, 'Quenny Michaela Anggraini', '', '', null, '1', '', '0', '4', '1', 'P', 'Surabaya', '2004-09-14', '', '0', '0.0', '0.0', '', '', 'Kupang Indah 2/22', '', '7316188', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('826', 'PMB2014150826', null, 'Sonya Nahama Wijoyo', '', '', null, '1', '', '0', '4', '1', 'P', 'Surabaya', '2004-04-12', '', '0', '0.0', '0.0', '', '', 'Kupang Indah 7 /12, Sby', '', '7311730', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('827', 'PMB2014150827', null, 'Stanley Alexander Sugianto', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2004-09-06', '', '0', '0.0', '0.0', '', '', 'Simo Tambaan Sekolahan No. 2', '', '7328829', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('828', 'PMB2014150828', null, 'Stevan Alexander Surya', '', '', null, '1', '', '0', '4', '1', 'L', 'Surabaya', '2004-09-10', '', '0', '0.0', '0.0', '', '', 'Pakis Bukit Asoka R-23', '', '03133119990', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('829', 'PMB2014150829', null, 'Stevie Gunawan Jie', '', '', null, '1', '', '0', '5', '0', 'P', 'Surabaya', '2004-12-14', '', '0', '0.0', '0.0', '', '', 'Vila Bukit Regency I PC 5/7', '', '7391380', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('830', 'PMB2014150830', null, 'Tamara Jessica Chandra', '', '', null, '1', '', '0', '5', '1', 'P', 'Surabaya', '2004-06-07', '', '0', '0.0', '0.0', '', '', 'Babatan Pratama 26 / 47', '', '7523740', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('831', 'PMB2014150831', null, 'Yohanes Tjahyadi', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2004-05-28', '', '0', '0.0', '0.0', '', '', 'Vila Sentra Raya AG / 23, Sby', '', '70271689', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('833', 'PMB2014150832', null, 'Astrid Regina Pangkey', '', '', null, '1', '', '0', '4', '1', 'P', 'Surabaya', '2003-02-16', '', '0', '0.0', '0.0', '', '', 'Taman Pondok Indah  LY - 2', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('834', 'PMB2014150834', null, 'Audric Owen', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2003-07-19', '', '0', '0.0', '0.0', '', '', 'Undaan Wetan 46 E Sby', '', '5326126', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('835', 'PMB2014150835', null, 'Bryong Ang Suhartono', '', '', null, '1', '', '0', '4', '1', 'L', 'Surabaya', '2002-12-21', '', '0', '0.0', '0.0', '', '', 'Citraland Bukit Golf Utama Blok FI / 3A', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('836', 'PMB2014150836', null, 'Celine Angelina Prayogo', '', '', null, '1', '', '0', '5', '1', 'P', 'Surabaya', '2002-12-28', '', '0', '0.0', '0.0', '', '', 'Kapasari V/16', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('837', 'PMB2014150837', null, 'Cheryl Lim', '', '', null, '1', '', '0', '5', '1', 'P', 'Surabaya', '2003-10-31', '', '0', '0.0', '0.0', '', '', 'Graha Famili N - 46', '', '7346683', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('838', 'PMB2014150838', null, 'Edbert Mulyawan', '', '', null, '1', '', '0', '1', '1', 'L', 'Surabaya', '2003-01-24', '', '0', '0.0', '0.0', '', '', 'Darmo Harapan Utara  VIII / EU 20', '', '7318896', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('839', 'PMB2014150839', null, 'Felicia Princess Liangkey', '', '', null, '1', '', '0', '5', '1', 'P', 'Surabaya', '2003-12-04', '', '0', '0.0', '0.0', '', '', 'Darmo Hill Blok  M - 22', '', '5636157', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('840', 'PMB2014150840', null, 'Grace Calvinia', '', '', null, '1', '', '0', '5', '1', 'P', 'Surabaya', '2002-11-23', '', '0', '0.0', '0.0', '', '', 'Raya Semambung 345, Driyorejo-Gresik', '', '7509702', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('841', 'PMB2014150841', null, 'Jazz Bradlee', '', '', null, '1', '', '0', '4', '1', 'L', 'Surabaya', '2003-03-24', '', '0', '0.0', '0.0', '', '', 'Vila Bukit Mas - Mediteran L-16', '', '70929467', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('842', 'PMB2014150842', null, 'Jennifer Alicia Lee', '', '', null, '1', '', '0', '4', '1', 'P', 'Surabaya', '2003-08-15', '', '0', '0.0', '0.0', '', '', 'Petemon Sidomulyo  IIIA / 31', '', '5350872', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('843', 'PMB2014150843', null, 'Jessica Levina Amelinda', '', '', null, '1', '', '0', '5', '1', 'P', 'Surabaya', '2003-03-18', '', '0', '0.0', '0.0', '', '', 'Kupang Indah  19 / 32', '', '7311505', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('844', 'PMB2014150844', null, 'Jonathan Alexander Liyanto', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2003-07-01', '', '0', '0.0', '0.0', '', '', 'Kedurus IV / 66-B, Sby', '', '0317661792', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('845', 'PMB2014150845', null, 'Justin Tanujaya', '', '', null, '1', '', '0', '5', '1', 'L', 'Jakarta', '2003-04-03', '', '0', '0.0', '0.0', '', '', 'Vila Bukit Regensi 3 PE 8 / 26', '', '7391671', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('846', 'PMB2014150846', null, 'Klara Immanuela', '', '', null, '1', '', '0', '4', '1', 'P', 'Surabaya', '2003-10-23', '', '0', '0.0', '0.0', '', '', 'Taman Internasional I / C-1 / 21', '', '7442186', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('847', 'PMB2014150847', null, 'Lincoln Abraham', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2002-10-17', '', '0', '0.0', '0.0', '', '', 'Darmo Permai Timur XIV / 52, Surabaya', '', '0317310692', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('848', 'PMB2014150848', null, 'Louis Samuel Muktiali', '', '', null, '1', '', '0', '4', '1', 'L', 'Surabaya', '2002-09-21', '', '0', '0.0', '0.0', '', '', 'Babadan Mukti C 16', '', '7530678', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('849', 'PMB2014150849', null, 'Malika Mada Susanto Putri', '', '', null, '1', '', '0', '5', '1', 'P', 'Surabaya', '2003-04-08', '', '0', '0.0', '0.0', '', '', 'Darmo Harapan III EA 9', '', '7316959', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('850', 'PMB2014150850', null, 'Matthew Zhang', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2003-08-03', '', '0', '0.0', '0.0', '', '', 'Darmo Baru Barat  I / no. 57', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('851', 'PMB2014150851', null, 'Meylisha Kurniawan', '', '', null, '1', '', '0', '1', '1', 'P', 'Surabaya', '2003-05-15', '', '0', '0.0', '0.0', '', '', 'Bukit Pakis Teratai S - 10', '', '5636333', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('852', 'PMB2014150852', null, 'Michelle Devina', '', '', null, '1', '', '0', '5', '1', 'P', 'Malang', '2003-08-18', '', '0', '0.0', '0.0', '', '', 'Panglima Sudirman 67, Gresik', '', '3983096', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('853', 'PMB2014150853', null, 'Nelson Claudio Salim', '', '', null, '1', '', '0', '4', '1', 'L', 'Surabaya', '2003-10-24', '', '0', '0.0', '0.0', '', '', 'Anjasmoro 34', '', '5321034', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('854', 'PMB2014150854', null, 'Sheren Pricillia', '', '', null, '1', '', '0', '5', '1', 'P', 'Palembang', '2003-03-12', '', '0', '0.0', '0.0', '', '', 'Pregolan Bunder 46 - 48', '', '5341682', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('855', 'PMB2014150855', null, 'Tiffany Grace Santoso', '', '', null, '1', '', '0', '5', '1', 'P', 'Surabaya', '2003-01-29', '', '0', '0.0', '0.0', '', '', 'Dian Istana  A1 - 20', '', '7533858', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('856', 'PMB2014150856', null, 'Vania Sulistiano', '', '', null, '1', '', '0', '5', '1', 'P', 'Jakarta', '2003-12-20', '', '0', '0.0', '0.0', '', '', 'Bukit Telaga Golf TH 2/12 Citraland', '', '0317400577', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('857', 'PMB2014150857', null, 'Vincent Alexander', '', '', null, '1', '', '0', '4', '1', 'L', 'Surabaya', '2003-05-24', '', '0', '0.0', '0.0', '', '', 'Tunjungan 53 F', '', '7440099', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('858', 'PMB2014150858', null, 'Ashley Kaitlyn Yeoh', '', '', null, '1', '', '0', '5', '1', 'P', 'Surabaya', '2002-12-01', '', '0', '0.0', '0.0', '', '', 'Royal Park TL - 3 / 46, Citra Raya', '', '7409556', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('859', 'PMB2014150859', null, 'Brenda Nicole Soesanto', '', '', null, '1', '', '0', '5', '1', 'P', 'Surabaya', '2003-08-12', '', '0', '0.0', '0.0', '', '', 'Graha Family  N - 155', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('860', 'PMB2014150860', null, 'Bryan Nathanael', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2003-02-25', '', '0', '0.0', '0.0', '', '', 'Villa Bukit Regency 3 PE 2 No. 18, Surabaya', '', '7523074', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('861', 'PMB2014150861', null, 'Davin Septian Koestiono Kho', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2003-09-03', '', '0', '0.0', '0.0', '', '', 'Water ront WP 7 / 5, CitraLand', '', '740873637', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('862', 'PMB2014150862', null, 'Edward Thejawijaya', '', '', null, '1', '', '0', '4', '1', 'L', 'Surabaya', '2003-09-06', '', '0', '0.0', '0.0', '', '', 'Delta Sari Indah AM-5 Waru Sidoarjo', '', '8535229', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('863', 'PMB2014150863', null, 'Eugenia Christabel', '', '', null, '1', '', '0', '5', '1', 'P', 'Surabaya', '2003-01-24', '', '0', '0.0', '0.0', '', '', 'Raya Darmo Permai II, Perum Darmo Green Garden C 19', '', '7325562', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('864', 'PMB2014150864', null, 'Howard Yang', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2019-01-15', '', '0', '0.0', '0.0', '', '', 'Pakuwon Indah AB 2-23 Sby', '', '7391770', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('865', 'PMB2014150865', null, 'Ilona Marsha Go', '', '', null, '1', '', '0', '5', '1', 'P', 'mojokerto', '2003-03-02', '', '0', '0.0', '0.0', '', '', 'North Emerald Mansion TN 3/43, Surabaya', '', '7524253', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('866', 'PMB2014150866', null, 'Jasmine Angela Pangkey', '', '', null, '1', '', '0', '5', '1', 'P', 'Surabaya', '2003-05-08', '', '0', '0.0', '0.0', '', '', 'Griya Babatan Mukti J-33A, Surabaya', '', '7530210', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('867', 'PMB2014150867', null, 'Jasmine Angela Pangkey', '', '', null, '1', '', '0', '5', '1', 'P', 'Surabaya', '2003-05-08', '', '0', '0.0', '0.0', '', '', 'Griya Babatan Mukti J-33A, Surabaya', '', '7530210', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('868', 'PMB2014150868', null, 'Jason William', '', '', null, '1', '', '0', '4', '1', 'L', 'Surabaya', '2003-08-18', '', '0', '0.0', '0.0', '', '', 'Dupak 72', '', '35424846', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('869', 'PMB2014150869', null, 'Jeanne Angeline Siemon', '', '', null, '1', '', '0', '4', '1', 'P', 'Surabaya', '2003-08-10', '', '0', '0.0', '0.0', '', '', 'Villa Bukit Regency III, PE7-20 Pakuwon Indah , Surabaya', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('870', 'PMB2014150870', null, 'Jessica', '', '', null, '1', '', '0', '1', '1', 'P', 'Surabaya', '2003-12-31', '', '0', '0.0', '0.0', '', '', 'Dupak 17 Blok 9 B', '', '5476264', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('871', 'PMB2014150871', null, 'Jesslyn Gabrielle Hermanto', '', '', null, '1', '', '0', '5', '1', 'P', 'Surabaya', '2003-11-04', '', '0', '0.0', '0.0', '', '', 'Darmo Permai Sel. 9 / 14', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('872', 'PMB2014150872', null, 'Joseph Chang', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2003-03-05', '', '0', '0.0', '0.0', '', '', 'Kendangsari Blok M-10', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('873', 'PMB2014150873', null, 'Kelly Wijaya', '', '', null, '1', '', '0', '5', '1', 'P', 'Surabaya', '2003-10-25', '', '0', '0.0', '0.0', '', '', 'Garaha Family L-117', '', '3570313', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('874', 'PMB2014150874', null, 'Marcellius Brian', '', '', null, '1', '', '0', '4', '1', 'L', 'Surabaya', '2003-12-05', '', '0', '0.0', '0.0', '', '', 'Darmo Baru Barat  XI / no. 11', '', '7321670', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('875', 'PMB2014150875', null, 'Michelle Andrea Sutandar', '', '', null, '1', '', '0', '5', '1', 'P', 'Surabaya', '2003-01-06', '', '0', '0.0', '0.0', '', '', 'Villa Sentra Raya A5 No. 7 Sby', '', '7410588', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('876', 'PMB2014150876', null, 'Nicholas Chang', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2003-05-28', '', '0', '0.0', '0.0', '', '', 'Darmo Hill Blok  P - 12', '', '5636338', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('877', 'PMB2014150877', null, 'Petra Julianto', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2003-06-10', '', '0', '0.0', '0.0', '', '', 'Darmo Hill Blok L 21 A', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('878', 'PMB2014150878', null, 'Rafael Alessandro Sahulata', '', '', null, '1', '', '0', '5', '1', 'L', 'Jayapura', '2003-12-18', '', '0', '0.0', '0.0', '', '', 'Darmo Sentosa Raya  C - 19', '', '5684773', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('879', 'PMB2014150879', null, 'Ruth Felicia Lukman', '', '', null, '1', '', '0', '5', '1', 'P', 'Jakarta', '2003-06-10', '', '0', '0.0', '0.0', '', '', 'Villa Bukit Regency 3 Blok PE 4 No. 25', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('880', 'PMB2014150880', null, 'Samuel King Kurniawan', '', '', null, '1', '', '0', '5', '1', 'L', 'Sidoarjo', '2003-06-19', '', '0', '0.0', '0.0', '', '', 'Pondok Mutiara I No. 10 Sdj', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('881', 'PMB2014150881', null, 'Sharon Caitlyn Wijaya', '', '', null, '1', '', '0', '5', '1', 'P', 'Surabaya', '2003-02-05', '', '0', '0.0', '0.0', '', '', 'Bukit Darmo Golf Regency Blok D-10, Surabaya', '', '7533806', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('882', 'PMB2014150882', null, 'Tabita Aurellia Anam', '', '', null, '1', '', '0', '5', '1', 'P', 'Surabaya', '2003-08-09', '', '0', '0.0', '0.0', '', '', 'Putat Gede Indah 58', '', '5685226', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('883', 'PMB2014150883', null, 'Tristan Robin Aarnoudse', '', '', null, '1', '', '0', '5', '1', 'L', 'Surabaya', '2003-10-18', '', '0', '0.0', '0.0', '', '', 'Darmo Permai Selatan I/6, Surabaya', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('884', 'PMB2014150884', null, 'Shannon Millicent Yao', '', '', null, '1', '', '0', '4', '0', 'P', 'Surabaya', '2011-05-27', '', '0', '0.0', '0.0', '', '', 'Palm Hill F1 / 16, Citraland', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('885', 'PMB2014150885', null, 'Sophia', '', '', null, '1', '', '0', '0', '0', 'P', '', '0000-00-00', '', '0', '0.0', '0.0', '', '', '', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('886', 'PMB2014150886', null, 'Verline Goenawan', '', '', null, '1', '', '0', '5', '0', 'P', 'Surabaya', '2012-03-16', '', '0', '0.0', '0.0', '', '', 'Villa Taman Telaga II TJ-6 / 9', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('887', 'PMB2014150887', null, 'Wang Xin Yan', '', '', null, '1', '', '0', '5', '0', 'P', 'Fujian, China', '2012-06-30', '', '0', '0.0', '0.0', '', '', 'Apt. Water Place Tower B /2101', '', '08155235055', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('888', 'PMB2014150888', null, 'Aishlyn Arianna Tejakusuma', '', '', null, '1', '', '0', '5', '0', 'P', 'Surabaya', '2011-07-21', '', '0', '0.0', '0.0', '', '', '', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('889', 'PMB2014150889', null, 'Alvin Arsenio Oktavian', '', '', null, '1', '', '0', '0', '0', 'L', 'Surabaya', '2011-08-06', '', '0', '0.0', '0.0', '', '', '', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('890', 'PMB2014150890', null, 'Brandon Matthew', '', '', null, '1', '', '0', '5', '0', 'L', 'Surabaya', '2011-07-25', '', '0', '0.0', '0.0', '', '', 'Silindri 3 / 4 - Kota Baru Driyorejo, Gresik', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('891', 'PMB2014150891', null, 'Florence Christalyn Tansah', '', '', null, '1', '', '0', '0', '0', 'P', 'Surabaya', '2011-08-03', '', '0', '0.0', '0.0', '', '', '', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('892', 'PMB2014150892', null, 'Gillian Belicia', '', '', null, '1', '', '0', '0', '0', 'P', '', '0000-00-00', '', '0', '0.0', '0.0', '', '', '', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('893', 'PMB2014150893', null, 'Given Graciano Pranata', '', '', null, '1', '', '0', '5', '0', 'L', 'Surabaya', '2011-09-27', '', '0', '0.0', '0.0', '', '', 'Permata Safira Regency F4 / 27', '', '0317533134', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('894', 'PMB2014150894', null, 'Jayden Anthony Theios', '', '', null, '1', '', '0', '0', '0', 'L', 'Surabaya', '2011-10-24', '', '0', '0.0', '0.0', '', '', '', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('895', 'PMB2014150895', null, 'Matthew Terence Tanata', '', '', null, '1', '', '0', '5', '0', 'L', 'Surabaya', '2011-02-14', '', '0', '0.0', '0.0', '', '', 'Vila Kalijudan Indah X-3', '', '0313822017', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('896', 'PMB2014150896', null, 'Rayner Alenson Sudiyanto', '', '', null, '1', '', '0', '5', '0', 'L', 'Surabaya', '2011-07-10', '', '0', '0.0', '0.0', '', '', 'Pakuwon Indah The Mansion PF 4-38', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('897', 'PMB2014150897', null, 'Aaron James Boesono', '', '', null, '1', '', '0', '0', '0', 'L', 'Surabaya', '2009-11-23', '', '0', '0.0', '0.0', '', '', '', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('898', 'PMB2014150898', null, 'Alviando Brain Lie', '', '', null, '1', '', '0', '3', '0', 'L', 'Surabaya', '2010-06-21', '', '0', '0.0', '0.0', '', '', 'Satelit Indah VII / EN-1', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('899', 'PMB2014150899', null, 'Billy Nemonda Pandu W.', '', '', null, '1', '', '0', '5', '0', 'L', 'Surabaya', '2010-06-30', '', '0', '0.0', '0.0', '', '', 'Donowati II / 6', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('900', 'PMB2014150900', null, 'Christiano Erenesto', '', '', null, '1', '', '0', '5', '0', 'L', 'Surabaya', '2010-06-10', '', '0', '0.0', '0.0', '', '', 'Petemon III / 139', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('901', 'PMB2014150901', null, 'Dave Preston Wangsa', '', '', null, '1', '', '0', '5', '0', 'L', 'Surabaya', '2010-11-23', '', '0', '0.0', '0.0', '', '', 'Vila Bukit Mas Q-20', '', '0315686773', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('902', 'PMB2014150902', null, 'Edbert Joshua', '', '', null, '1', '', '0', '5', '0', 'L', 'Surabaya', '2010-02-06', '', '0', '0.0', '0.0', '', '', 'Taman Pinang Indah B5 / 8, Sidoarjo', '', '0318925915', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('903', 'PMB2014150903', null, 'Eunike Libby Budiman', '', '', null, '1', '', '0', '4', '0', 'P', 'Surabaya', '2009-12-21', '', '0', '0.0', '0.0', '', '', 'Taman Puspa Raya B6-19', '', '03170581663', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('904', 'PMB2014150904', null, 'Genevieve Ganda ( Ivy )', '', '', null, '1', '', '0', '0', '0', 'P', 'Surabaya', '2010-06-01', '', '0', '0.0', '0.0', '', '', '', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('905', 'PMB2014150905', null, 'Jehovani Alexis Nigel', '', '', null, '1', '', '0', '0', '0', 'P', 'Surabaya', '2010-11-16', '', '0', '0.0', '0.0', '', '', '', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('906', 'PMB2014150906', null, 'Jessica Gabrielle Sebastian Ho', '', '', null, '1', '', '0', '5', '0', 'P', 'Surabaya', '2010-10-09', '', '0', '0.0', '0.0', '', '', 'Ngagel Jaya Selatan E-28', '', '0317322771', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('907', 'PMB2014150907', null, 'Kevin Ivander Hoo', '', '', null, '1', '', '0', '5', '0', 'L', 'Surabaya', '2010-09-30', '', '0', '0.0', '0.0', '', '', 'Darmo Permai Selatan X / 128', '', '0317324898', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('908', 'PMB2014150908', null, 'Mayve Pricilia Tanujaya', '', '', null, '1', '', '0', '5', '0', 'P', 'Surabaya', '2010-10-12', '', '0', '0.0', '0.0', '', '', 'Satelit Indah IX / GN-18', '', '0317312413', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('909', 'PMB2014150909', null, 'Megan Nicolette Kho', '', '', null, '1', '', '0', '5', '0', 'P', 'Surabaya', '2010-03-17', '', '0', '0.0', '0.0', '', '', 'Satelit Indah VIII / FN-5', '', '0317343111', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('910', 'PMB2014150910', null, 'Stewart Samuel Surya', '', '', null, '1', '', '0', '4', '0', 'L', 'Surabaya', '2010-11-12', '', '0', '0.0', '0.0', '', '', 'Darmo Hill R-23', '', '5683008', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('911', 'PMB2014150911', null, 'Vallerie Gabrielle Hadiwidjojo', '', '', null, '1', '', '0', '4', '0', 'P', 'Surbaya', '2010-06-21', '', '0', '0.0', '0.0', '', '', 'Kupang Indah II / 52', '', '0317315224', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('912', 'PMB2014150912', null, 'Alfred Reynard Jayadi', '', '', null, '1', '', '0', '4', '0', 'L', 'Surabaya', '2010-08-20', '', '0', '0.0', '0.0', '', '', 'Raya Sukomanunggal Jaya V / E-22', '', '0317320208', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('913', 'PMB2014150913', null, 'Angelina Jocelyn Livianto', '', '', null, '1', '', '0', '5', '0', 'P', 'Surabaya', '2010-01-24', '', '0', '0.0', '0.0', '', '', 'Darmo Permai Utara X / 36', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('914', 'PMB2014150914', null, 'Frederick Sutendy', '', '', null, '1', '', '0', '0', '0', 'L', 'Surabaya', '0000-00-00', '', '0', '0.0', '0.0', '', '', '', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('915', 'PMB2014150915', null, 'Giorgia Cruz Suryaputra', '', '', null, '1', '', '0', '5', '0', 'P', 'Surabaya', '2013-10-26', '', '0', '0.0', '0.0', '', '', 'Graha Family H-21', '', '0317385558', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('916', 'PMB2014150916', null, 'Gwen Laeticia Kho', '', '', null, '1', '', '0', '5', '0', 'P', 'Surabaya', '2010-02-24', '', '0', '0.0', '0.0', '', '', 'Satelit Indah VIII / FN-5', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('917', 'PMB2014150917', null, 'James Leonard Nathaniel', '', '', null, '1', '', '0', '1', '0', 'L', 'Surabaya', '2010-09-06', '', '0', '0.0', '0.0', '', '', 'Graha Family L-55', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('918', 'PMB2014150918', null, 'Jason Christopher Cahyadi', '', '', null, '1', '', '0', '4', '0', 'L', 'Surabaya', '2009-11-19', '', '0', '0.0', '0.0', '', '', 'Taman Pondok Indah PX-9', '', '0317526731', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('919', 'PMB2014150919', null, 'Jesslyn Blessing Ruho', '', '', null, '1', '', '0', '5', '0', 'P', 'Surabaya', '2010-06-10', '', '0', '0.0', '0.0', '', '', 'Pakis Tirtosari VII / 69', '', '0315674479', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('920', 'PMB2014150920', null, 'Jiro Josediputra', '', '', null, '1', '', '0', '5', '0', 'L', 'Surabaya', '2010-08-13', '', '0', '0.0', '0.0', '', '', 'Bukit Telaga Golf TA 6 / 19', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('921', 'PMB2014150921', null, 'Juan Sebastian Pangkey', '', '', null, '1', '', '0', '4', '0', 'L', 'Surabaya', '2010-03-02', '', '0', '0.0', '0.0', '', '', 'Taman Pondok Indah LY-2', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('922', 'PMB2014150922', null, 'Kelvin Santoso', '', '', null, '1', '', '0', '5', '0', 'L', 'Surabaya', '2010-11-23', '', '0', '0.0', '0.0', '', '', 'Raya Satelit Barat JN-31', '', '03133566789', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('923', 'PMB2014150923', null, 'Kimberly Huang', '', '', null, '1', '', '0', '1', '0', 'P', 'Surabaya', '2009-12-17', '', '0', '0.0', '0.0', '', '', 'Kupang Indah XII / 22', '', '0317311428', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('924', 'PMB2014150924', null, 'Rafael Cristiano Margono', '', '', null, '1', '', '0', '0', '0', 'L', 'Surabaya', '2010-08-27', '', '0', '0.0', '0.0', '', '', '', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('925', 'PMB2014150925', null, 'Sherwin Winata', '', '', null, '1', '', '0', '5', '0', 'P', 'Surabaya', '2010-05-27', '', '0', '0.0', '0.0', '', '', 'Dupak 63 Blok F-15 Ruko Mutiara Dupak (Kalianyar 21C)', '', '0315329899', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('926', 'PMB2014150926', null, 'Timothy Dylan Gunawan', '', '', null, '1', '', '0', '5', '0', 'L', 'Surabaya', '2009-11-14', '', '0', '0.0', '0.0', '', '', 'Babatan Pilang K-1 Wiyung', '', '0317535213', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('927', 'PMB2014150927', null, 'Vanessa Ivania Sidharta', '', '', null, '1', '', '0', '5', '0', 'P', 'Surabaya', '2010-05-17', '', '0', '0.0', '0.0', '', '', 'Graha Family Y No.73', '', '0317322710', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('928', 'PMB2014150928', null, 'Aubrey Christabel Halimsaputera', '', '', null, '1', '', '0', '0', '0', 'P', 'Surabaya', '2010-07-07', '', '0', '0.0', '0.0', '', '', '', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('929', 'PMB2014150929', null, 'Belycia Christirich Santoso', '', '', null, '1', '', '0', '5', '0', 'P', 'Surabaya', '2010-11-22', '', '0', '0.0', '0.0', '', '', 'Manukan Wetan No.32', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('930', 'PMB2014150930', null, 'Clavarine Nevada Sumarno', '', '', null, '1', '', '0', '5', '0', 'P', 'Surabaya', '2009-12-01', '', '0', '0.0', '0.0', '', '', 'Petemon Timur 112', '', '0315310617', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('931', 'PMB2014150931', null, 'Derrick Nicholas Teng', '', '', null, '1', '', '0', '5', '0', 'L', 'Surabaya', '2010-09-13', '', '0', '0.0', '0.0', '', '', 'Bukit Darmo Golf G-53', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('932', 'PMB2014150932', null, 'Gianni Malva Sasongko', '', '', null, '1', '', '0', '5', '0', 'P', 'Surabaya', '2010-06-09', '', '0', '0.0', '0.0', '', '', 'Darmo Hill J-5', '', '0317391003', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('933', 'PMB2014150933', null, 'Giorgio Farrell Eugene H', '', '', null, '1', '', '0', '0', '0', 'L', 'Surabaya', '2010-07-29', '', '0', '0.0', '0.0', '', '', '', '', '0317412627', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('934', 'PMB2014150934', null, 'Jefferson Patricio Oenata', '', '', null, '1', '', '0', '5', '0', 'L', 'Surabaya', '2010-04-16', '', '0', '0.0', '0.0', '', '', 'Villa Taman Telaga TJ 6 / 21', '', '0317450891', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('935', 'PMB2014150935', null, 'Jordan Gil Gunawan', '', '', null, '1', '', '0', '5', '0', 'L', 'Surabaya', '2010-02-08', '', '0', '0.0', '0.0', '', '', 'Pakis Tirtosari VII / 81', '', '0315674211', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('936', 'PMB2014150936', null, 'Joyvina Chrysantha Immanuela Setiawan', '', '', null, '1', '', '0', '5', '0', 'P', 'Mojokerto', '2009-12-12', '', '0', '0.0', '0.0', '', '', 'Manukan Tirto IV Blok 22 J / 1 3', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('937', 'PMB2014150937', null, 'Kevin Harel Ongkowijaya', '', '', null, '1', '', '0', '4', '0', 'L', 'Surabaya', '2010-04-17', '', '0', '0.0', '0.0', '', '', 'Simpang Darmo Permai Selatan V/53', '', '0317343462', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('938', 'PMB2014150938', null, 'Kimberly Widjaja', '', '', null, '1', '', '0', '5', '0', 'P', 'Surabaya', '2010-08-20', '', '0', '0.0', '0.0', '', '', 'Vila Bukit Mas K-12A', '', '0315664408', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('939', 'PMB2014150939', null, 'Michelle Evelyn Wu', '', '', null, '1', '', '0', '4', '0', 'P', 'Surabaya', '2010-01-23', '', '0', '0.0', '0.0', '', '', 'Griya Babatan Mukti C-11', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('940', 'PMB2014150940', null, 'Victor Fu', '', '', null, '1', '', '0', '0', '0', 'L', 'Surabaya', '2010-08-24', '', '0', '0.0', '0.0', '', '', '', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('941', 'PMB2014150941', null, 'Warren Joseph Haryono', '', '', null, '1', '', '0', '5', '0', 'L', 'Surabaya', '2010-02-15', '', '0', '0.0', '0.0', '', '', 'Raya Arjuno No.51-53', '', '03151200516', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('942', 'PMB2014150942', null, 'Wendy Emily Soegiarto', '', '', null, '1', '', '0', '4', '0', 'P', 'Surabaya', '2010-10-10', '', '0', '0.0', '0.0', '', '', 'Raya Satelit Utara KN-4', '', '0317313905', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('943', 'PMB2014150943', null, 'William Jacobson Manurung', '', '', null, '1', '', '0', '5', '0', 'L', 'Surabaya', '2010-10-10', '', '0', '0.0', '0.0', '', '', 'William Jacobson Manurung', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('944', 'PMB2014150944', null, 'Abbeygail Maryoel Widjaja', '', '', null, '1', '', '0', '5', '0', 'P', 'Surabaya', '2009-02-28', '', '0', '0.0', '0.0', '', '', 'Darmo Green Garden E-5', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('945', 'PMB2014150945', null, 'Aislynn Calista Sutanto', '', '', null, '1', '', '0', '5', '0', 'P', 'Surabaya', '2009-03-09', '', '0', '0.0', '0.0', '', '', 'Darmo Harapan Indah III / XX-18', '', '0317326668', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('946', 'PMB2014150946', null, 'Caithlyn Mikayla Hiandinata', '', '', null, '1', '', '0', '4', '0', 'P', 'Surabaya', '2009-08-19', '', '0', '0.0', '0.0', '', '', 'East Emerald Mansion TP 1 / 42A Citraland', '', '03157431103', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('947', 'PMB2014150947', null, 'Cally Nicole Tanoko', '', '', null, '1', '', '0', '5', '0', 'P', 'Murdoch, Australia', '2009-07-04', '', '0', '0.0', '0.0', '', '', 'Graha Family O - 11', '', '0317326155', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('948', 'PMB2014150948', null, 'Danica Claire Suryo', '', '', null, '1', '', '0', '0', '0', 'P', '', '0000-00-00', '', '0', '0.0', '0.0', '', '', '', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('949', 'PMB2014150949', null, 'Darrell Matthew Tedjokoesoemo', '', '', null, '1', '', '0', '5', '0', 'L', 'Surabaya', '2009-08-07', '', '0', '0.0', '0.0', '', '', 'Taman International I / FI - 20', '', '7442167', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('950', 'PMB2014150950', null, 'Finzell Brayden Suganda', '', '', null, '1', '', '0', '4', '0', 'L', 'Malang', '2009-01-12', '', '0', '0.0', '0.0', '', '', 'Graha Famili D - 109', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('951', 'PMB2014150951', null, 'Giselle Maureen Sugianto', '', '', null, '1', '', '0', '5', '0', 'P', 'Surabaya', '2009-07-22', '', '0', '0.0', '0.0', '', '', 'Villa Taman Telaga TJ 6 / 2 Citraland', '', '0317450768', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('952', 'PMB2014150952', null, 'Jacqueline Jovanka Lin', '', '', null, '1', '', '0', '5', '0', 'P', 'Surabaya', '2009-11-18', '', '0', '0.0', '0.0', '', '', 'Villa Bukit Regency 2  PD7 15', '', '0317391527', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('953', 'PMB2014150953', null, 'Joaquin Melvin Christianto', '', '', null, '1', '', '0', '5', '0', 'L', 'Surabaya', '2009-08-01', '', '0', '0.0', '0.0', '', '', 'Petemon 4 / 70', '', '0315314869', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('954', 'PMB2014150954', null, 'Joshua Wangsaputra', '', '', null, '1', '', '0', '5', '0', 'L', 'Surabaya', '2008-12-18', '', '0', '0.0', '0.0', '', '', 'Darmo Indah Barat II / F-9', '', '0317349321', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('955', 'PMB2014150955', null, 'Raphael Gerrard Sukendy', '', '', null, '1', '', '0', '4', '0', 'L', 'Surabaya', '2009-10-31', '', '0', '0.0', '0.0', '', '', 'Magnolia CM-18, Chofa Raya Sukomanunggal Asri', '', '0317321784', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('956', 'PMB2014150956', null, 'Rhenata Zefanya Handojo', '', '', null, '1', '', '0', '4', '0', 'P', 'Surabaya', '2009-09-09', '', '0', '0.0', '0.0', '', '', 'Darmo Harapan VI / EC-19', '', '0317346930', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('957', 'PMB2014150957', null, 'Sharleen Abigail Winston', '', '', null, '1', '', '0', '5', '0', 'P', 'Surabaya', '2009-09-02', '', '0', '0.0', '0.0', '', '', 'Graha Family W-6', '', '0317322124', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('958', 'PMB2014150958', null, 'Stanley Ferdinand Surya', '', '', null, '1', '', '0', '4', '0', 'L', 'Surabaya', '2009-10-28', '', '0', '0.0', '0.0', '', '', 'Darmo Hill R-23', '', '5683008', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('959', 'PMB2014150959', null, 'Wang Ruo Chen', '', '', null, '1', '', '0', '1', '0', 'P', 'Surabaya', '2009-09-27', '', '0', '0.0', '0.0', '', '', 'Rayen Regency F-5', '', '0317510224', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('960', 'PMB2014150960', null, 'Anya Quinn Sutiono', '', '', null, '1', '', '0', '5', '0', 'P', 'Surabaya', '2009-09-08', '', '0', '0.0', '0.0', '', '', 'Pakis Argosari VII / 51', '', '0315685314', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('961', 'PMB2014150961', null, 'Austin Nolan Herlambang', '', '', null, '1', '', '0', '5', '0', 'L', 'Surabaya', '2007-07-07', '', '0', '0.0', '0.0', '', '', 'Palm Hills II / K8-20 Citraland', '', '0317441208', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('962', 'PMB2014150962', null, 'Candice Carissa Sutedjo', '', '', null, '1', '', '0', '4', '0', 'P', 'Surabaya', '2009-09-12', '', '0', '0.0', '0.0', '', '', 'Graha Family F-58', '', '0317385658', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('963', 'PMB2014150963', null, 'Hizkia Debharim Xue', '', '', null, '1', '', '0', '0', '0', 'L', 'Surabaya', '2009-05-20', '', '0', '0.0', '0.0', '', '', '', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('964', 'PMB2014150964', null, 'Jordan James Suryaputra', '', '', null, '1', '', '0', '5', '0', 'L', 'Surabaya', '2009-08-25', '', '0', '0.0', '0.0', '', '', 'Graha Family H-21', '', '0317385558', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('965', 'PMB2014150965', null, 'Joselyn Clarence Kurniawan', '', '', null, '1', '', '0', '4', '0', 'P', 'Surabaya', '2009-02-06', '', '0', '0.0', '0.0', '', '', 'Puncak Permai Utara II / 6', '', '7321661', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('966', 'PMB2014150966', null, 'Josh Owen Hadiyanto', '', '', null, '1', '', '0', '5', '0', 'L', 'Surabaya', '2009-10-07', '', '0', '0.0', '0.0', '', '', 'Puri Widya Kencana K3 / 22', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('967', 'PMB2014150967', null, 'Kelleen Wijaya', '', '', null, '1', '', '0', '5', '0', 'P', 'Surabaya', '2009-03-14', '', '0', '0.0', '0.0', '', '', 'Graha Family L-117', '', '0317320604', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('968', 'PMB2014150968', null, 'Li Zi Yi', '', '', null, '1', '', '0', '5', '0', 'P', 'Surabaya', '2008-10-26', '', '0', '0.0', '0.0', '', '', 'Raya Sukomanunggal Jaya No.33A', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('969', 'PMB2014150969', null, 'Matthew Sutiono', '', '', null, '1', '', '0', '5', '0', 'L', 'Surabaya', '2008-12-01', '', '0', '0.0', '0.0', '', '', 'Pakuwon Villa Bukit Indah AA - 9 / 26', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('970', 'PMB2014150970', null, 'Naomi Valerie Herlambang', '', '', null, '1', '', '0', '5', '0', 'P', 'Surabaya', '2009-11-30', '', '0', '0.0', '0.0', '', '', 'Pakuwon One Golf Terrace AB 10/32', '', '0317391995', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('971', 'PMB2014150971', null, 'Nicholas Emmanuel Widjaja', '', '', null, '1', '', '0', '5', '0', 'L', 'Surabaya', '2009-07-22', '', '0', '0.0', '0.0', '', '', 'Alamanda RE-6 Chofa Sukomanunggal', '', '0317320982', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('972', 'PMB2014150972', null, 'Nicole Wu', '', '', null, '1', '', '0', '5', '0', 'P', 'Surabaya', '2009-05-16', '', '0', '0.0', '0.0', '', '', 'Tanjungsari Baru I / 12', '', '0317313589', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('973', 'PMB2014150973', null, 'Rico Halim', '', '', null, '1', '', '0', '5', '0', 'L', 'Surabaya', '2009-07-25', '', '0', '0.0', '0.0', '', '', 'Tanjungsari Baru II / 10', '', '', null, null, '', null, '', null, null, null, null, '1', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('974', 'PMB2014150974', null, 'Vivianne Kaila Josephine Lim', '', '', null, '1', '', '0', '5', '0', 'P', 'Surabaya', '2009-08-12', '', '0', '0.0', '0.0', '', '', 'Villa Sentra Raya D5 / 11 Citraraya', '', '0317401714', null, null, '', null, '', null, null, null, null, '1', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('975', 'PMB2014150975', null, 'Wilson Seputro', '', '', null, '1', '', '0', '5', '0', 'L', 'Surabaya', '2009-07-10', '', '0', '0.0', '0.0', '', '', 'Villa Bukit Mas Mediteranian M-26', '', '0315611919', null, null, '', null, '', null, null, null, null, '1', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('976', 'PMB2014150976', null, 'Astrella Richelle Sumargo', '', '', null, '1', '', '0', '5', '0', 'P', 'Surabaya', '2009-05-15', '', '0', '0.0', '0.0', '', '', 'Tanjung Sari Baru 3 / 22', '', '7346175', null, null, '', null, '', null, null, null, null, '1', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('977', 'PMB2014150977', null, 'Aurelia Geraldine Logioto', '', '', null, '1', '', '0', '5', '0', 'P', 'Surabaya', '2009-11-18', '', '0', '0.0', '0.0', '', '', 'Wisata Bukit Mas B9 / 2', '', '', null, null, '', null, '', null, null, null, null, '1', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('978', 'PMB2014150978', null, 'Christopher Elias Lim', '', '', null, '1', '', '0', '5', '0', 'L', 'Surabaya', '2009-09-06', '', '0', '0.0', '0.0', '', '', 'Graha Family FF-10', '', '', null, null, '', null, '', null, null, null, null, '1', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('979', 'PMB2014150979', null, 'Darell Nathaniel Wu', '', '', null, '1', '', '0', '5', '0', 'L', 'Surabaya', '2008-10-30', '', '0', '0.0', '0.0', '', '', 'Woodland WL 2 / 89 Citraland', '', '', null, null, '', null, '', null, null, null, null, '1', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('980', 'PMB2014150980', null, 'Davin Aviel Tanujaya', '', '', null, '1', '', '0', '5', '0', 'L', 'Surabaya', '2009-04-06', '', '0', '0.0', '0.0', '', '', 'Villa Bukit Mas H  1', '', '0315663797', null, null, '', null, '', null, null, null, null, '1', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('981', 'PMB2014150981', null, 'Giovanni Edgina Setiawan', '', '', null, '1', '', '0', '5', '0', 'P', 'Surabaya', '2009-01-30', '', '0', '0.0', '0.0', '', '', 'Darmo Harapan Indah I / XX-21', '', '0317317341', null, null, '', null, '', null, null, null, null, '1', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('982', 'PMB2014150982', null, 'Kelsey Christabelle Sugiantoro', '', '', null, '1', '', '0', '5', '0', 'P', 'Surabaya', '2009-01-24', '', '0', '0.0', '0.0', '', '', 'Stamford Place ST 6/28 Citraland', '', '03151997246', null, null, '', null, '', null, null, null, null, '1', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('983', 'PMB2014150983', null, 'Kenneth Huang', '', '', null, '1', '', '0', '5', '0', 'L', 'Surabaya', '2009-08-13', '', '0', '0.0', '0.0', '', '', 'Royal Residence B II / 96', '', '03171162333', null, null, '', null, '', null, null, null, null, '1', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('984', 'PMB2014150984', null, 'Kevin Gregory Wijaya', '', '', null, '1', '', '0', '5', '0', 'L', 'Surabaya', '2009-09-20', '', '0', '0.0', '0.0', '', '', 'Bukit Darmo Golf Regency D-10', '', '0317384142', null, null, '', null, '', null, null, null, null, '1', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('985', 'PMB2014150985', null, 'Kiersten Jane Priatman', '', '', null, '1', '', '0', '0', '0', 'P', 'Arcadia, Los Angeles', '2009-02-09', '', '0', '0.0', '0.0', '', '', '', '', '', null, null, '', null, '', null, null, null, null, '1', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('986', 'PMB2014150986', null, 'Kimmi Madelaine Kusumo', '', '', null, '1', '', '0', '5', '0', 'L', 'Surabaya', '2009-03-15', '', '0', '0.0', '0.0', '', '', 'Kupang Indah XV / 27', '', '0317318600', null, null, '', null, '', null, null, null, null, '1', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('987', 'PMB2014150987', null, 'Meyer Ho', '', '', null, '1', '', '0', '5', '0', 'L', 'Surabaya', '2008-12-27', '', '0', '0.0', '0.0', '', '', 'Darmo Hill N-25', '', '0315636197', null, null, '', null, '', null, null, null, null, '1', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('988', 'PMB2014150988', null, 'Michella Audrey Wijaya', '', '', null, '1', '', '0', '5', '0', 'P', 'Surabaya', '2009-07-02', '', '0', '0.0', '0.0', '', '', 'Rafles Garden TB 8 / 16 Citraland', '', '', null, null, '', null, '', null, null, null, null, '1', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('989', 'PMB2014150989', null, 'Michelle Pearl Dermawan', '', '', null, '1', '', '0', '5', '0', 'P', 'Surabaya', '2009-01-20', '', '0', '0.0', '0.0', '', '', 'Darmo Harapan Utara VI / EY-4', '', '', null, null, '', null, '', null, null, null, null, '1', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('990', 'PMB2014150990', null, 'Neisken Matthew Nugroho', '', '', null, '1', '', '0', '5', '0', 'L', 'Surabaya', '2009-03-20', '', '0', '0.0', '0.0', '', '', 'Wisata Bukit Mas GG-5', '', '', null, null, '', null, '', null, null, null, null, '1', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('991', 'PMB2014150991', null, 'Valescha Trixie Wijaya', '', '', null, '1', '', '0', '5', '0', 'P', 'Surabaya', '1999-04-24', '', '0', '0.0', '0.0', '', '', 'Villa Bukit Regency 2 / PD7 - 2 Pakuwon Indah', '', '', null, null, '', null, '', null, null, null, null, '1', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('992', 'PMB2014150992', null, 'paijo tes', '', '', null, '1', '', '0', '0', '0', 'L', '', '0000-00-00', '', '0', '0.0', '0.0', 'A', '', '', '', '', null, null, '', null, '', null, null, null, null, '1', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('1009', '212', null, 'wiro sableng', '', '', null, '1', '', '0', '2', '0', '', '', '2014-10-23', '', '0', '0.0', '0.0', '', '', '', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('1012', '212', null, 'wiro sableng', '', '', null, '1', '', '0', '2', '0', '', '', '2014-10-23', '', '0', '0.0', '0.0', '', '', '', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('1013', '212', null, 'wiro sableng', '', '', null, '1', '', '0', '2', '0', '', '', '2014-10-23', '', '0', '0.0', '0.0', '', '', '', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('1014', 'PMB2014150993', null, 'the hulk', '', '', null, '1', '', '0', '0', '0', 'L', '', '0000-00-00', '', '0', '0.0', '0.0', '', '', '', '', '', null, null, '', null, '', null, null, null, null, '0', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('1015', 'PMB2014140001', null, 'Kaitlynn Tiffany L.', '111', '', null, '1', '', '0', '0', '1', 'P', 'Surabaya', '2012-11-10', '', '0', '0.0', '0.0', '', '', 'Delta Raya IV/12 Sidoarjo', '', '0811909765', null, null, '', null, '', null, null, null, null, '254', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('1016', '000001', null, 'Dani', '', '', null, '1', '', '0', '0', '0', 'L', '', '0000-00-00', '', '0', '0.0', '0.0', '', '', '', '', '', null, null, '', null, '', null, null, null, null, '114', '', '', '', '', '');
INSERT INTO `psb_siswa_copy` VALUES ('1017', '000001', null, 'RAni', '', '', null, '1', '', '0', '2', '0', 'P', '', '0000-00-00', '', '0', '0.0', '0.0', '', '', '', '', '', null, null, '', null, '', null, null, null, null, '114', '', '', '', '', '');

-- ----------------------------
-- Table structure for psb_siswaayah
-- ----------------------------
DROP TABLE IF EXISTS `psb_siswaayah`;
CREATE TABLE `psb_siswaayah` (
  `replid` int(11) NOT NULL AUTO_INCREMENT,
  `siswa` int(11) NOT NULL,
  `namaayah` varchar(100) NOT NULL,
  `tempatlahirayah` varchar(50) NOT NULL,
  `tanggallahirayah` date NOT NULL,
  `agamaayah` int(10) unsigned NOT NULL DEFAULT '0',
  `warganegaraayah` varchar(50) NOT NULL,
  `kodeposayah` int(5) NOT NULL,
  `kotaayah` varchar(20) NOT NULL,
  `pendidikanayah` varchar(50) NOT NULL,
  `bidangpekerjaanayah` varchar(50) NOT NULL,
  `pekerjaanayah` varchar(50) NOT NULL,
  `posisiayah` varchar(50) NOT NULL,
  `penghasilanayah` decimal(10,0) NOT NULL DEFAULT '0',
  `telponayah` varchar(20) NOT NULL,
  `pinbbayah` varchar(20) NOT NULL,
  `emailayah` varchar(100) NOT NULL,
  `alamatayah` text NOT NULL,
  `hpayah` varchar(15) NOT NULL,
  `faxrumahayah` varchar(15) NOT NULL,
  `alamatkantorayah` text NOT NULL,
  `telponkantorayah` varchar(15) NOT NULL,
  `faxkantorayah` varchar(15) NOT NULL,
  `gerejaayah` varchar(50) NOT NULL,
  PRIMARY KEY (`replid`),
  KEY `calonsiswa` (`siswa`) USING BTREE,
  CONSTRAINT `calonsiswaFk` FOREIGN KEY (`siswa`) REFERENCES `psb_siswa` (`replid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of psb_siswaayah
-- ----------------------------
INSERT INTO `psb_siswaayah` VALUES ('54', '140', '9009909', '', '0000-00-00', '0', '', '0', '', '', '', '', '', '0', '', '', '', '', '', '', '', '', '', '');

-- ----------------------------
-- Table structure for psb_siswabiaya
-- ----------------------------
DROP TABLE IF EXISTS `psb_siswabiaya`;
CREATE TABLE `psb_siswabiaya` (
  `replid` int(11) NOT NULL AUTO_INCREMENT,
  `siswa` int(11) NOT NULL,
  `detailbiaya` int(11) NOT NULL,
  `angsuran` int(11) NOT NULL,
  `ketdiskonkhusus` text NOT NULL,
  `diskonkhusus` decimal(14,0) NOT NULL,
  PRIMARY KEY (`replid`),
  KEY `siswa` (`siswa`) USING BTREE,
  KEY `biaya` (`detailbiaya`) USING BTREE,
  CONSTRAINT `siswaFK2` FOREIGN KEY (`siswa`) REFERENCES `psb_siswa` (`replid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=467 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of psb_siswabiaya
-- ----------------------------
INSERT INTO `psb_siswabiaya` VALUES ('463', '140', '676', '8', '', '0');
INSERT INTO `psb_siswabiaya` VALUES ('464', '140', '649', '0', '', '0');
INSERT INTO `psb_siswabiaya` VALUES ('465', '140', '667', '0', '', '0');
INSERT INTO `psb_siswabiaya` VALUES ('466', '140', '658', '0', '', '0');

-- ----------------------------
-- Table structure for psb_siswadiskon
-- ----------------------------
DROP TABLE IF EXISTS `psb_siswadiskon`;
CREATE TABLE `psb_siswadiskon` (
  `replid` int(11) NOT NULL AUTO_INCREMENT,
  `siswabiaya` int(11) NOT NULL,
  `detaildiskon` int(11) NOT NULL,
  PRIMARY KEY (`replid`),
  KEY `siswabiaya` (`siswabiaya`) USING BTREE,
  KEY `detaildiskon` (`detaildiskon`) USING BTREE,
  CONSTRAINT `detaildiskonFK2` FOREIGN KEY (`detaildiskon`) REFERENCES `psb_detaildiskon` (`replid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `siswabiayaFK` FOREIGN KEY (`siswabiaya`) REFERENCES `psb_siswabiaya` (`replid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of psb_siswadiskon
-- ----------------------------
INSERT INTO `psb_siswadiskon` VALUES ('80', '463', '2');
INSERT INTO `psb_siswadiskon` VALUES ('81', '463', '8');

-- ----------------------------
-- Table structure for psb_siswadokumen
-- ----------------------------
DROP TABLE IF EXISTS `psb_siswadokumen`;
CREATE TABLE `psb_siswadokumen` (
  `replid` int(11) NOT NULL AUTO_INCREMENT,
  `siswa` int(11) NOT NULL,
  `subdokumen` int(11) NOT NULL,
  `file` text NOT NULL,
  PRIMARY KEY (`replid`),
  KEY `siswa` (`siswa`) USING BTREE,
  KEY `subdokumen` (`subdokumen`) USING BTREE,
  CONSTRAINT `siswaFK` FOREIGN KEY (`siswa`) REFERENCES `psb_subdokumen` (`replid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `subdokumenFK` FOREIGN KEY (`subdokumen`) REFERENCES `psb_subdokumen` (`replid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of psb_siswadokumen
-- ----------------------------

-- ----------------------------
-- Table structure for psb_siswaibu
-- ----------------------------
DROP TABLE IF EXISTS `psb_siswaibu`;
CREATE TABLE `psb_siswaibu` (
  `replid` int(11) NOT NULL AUTO_INCREMENT,
  `siswa` int(11) NOT NULL,
  `namaibu` varchar(100) NOT NULL,
  `tempatlahiribu` varchar(50) NOT NULL,
  `tanggallahiribu` date NOT NULL,
  `agamaibu` int(10) unsigned NOT NULL DEFAULT '0',
  `warganegaraibu` varchar(50) NOT NULL,
  `kodeposibu` int(5) NOT NULL,
  `kotaibu` varchar(20) NOT NULL,
  `pendidikanibu` varchar(50) NOT NULL,
  `bidangpekerjaanibu` varchar(50) NOT NULL,
  `pekerjaanibu` varchar(50) NOT NULL,
  `posisiibu` varchar(50) NOT NULL,
  `penghasilanibu` decimal(10,0) NOT NULL DEFAULT '0',
  `telponibu` varchar(20) NOT NULL,
  `pinbbibu` varchar(20) NOT NULL,
  `emailibu` varchar(100) NOT NULL,
  `alamatibu` text NOT NULL,
  `hpibu` varchar(15) NOT NULL,
  `faxrumahibu` varchar(15) NOT NULL,
  `alamatkantoribu` text NOT NULL,
  `telponkantoribu` varchar(15) NOT NULL,
  `faxkantoribu` varchar(15) NOT NULL,
  `gerejaibu` varchar(50) NOT NULL,
  PRIMARY KEY (`replid`),
  KEY `calonsiswa` (`siswa`) USING BTREE,
  CONSTRAINT `psb_siswaibu_ibfk_1` FOREIGN KEY (`siswa`) REFERENCES `psb_siswa` (`replid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of psb_siswaibu
-- ----------------------------
INSERT INTO `psb_siswaibu` VALUES ('54', '140', 'kokok', '', '0000-00-00', '0', '', '0', '', '', '', '', '', '0', '', '', '', '', '', '', '', '', '', '');

-- ----------------------------
-- Table structure for psb_siswakontakdarurat
-- ----------------------------
DROP TABLE IF EXISTS `psb_siswakontakdarurat`;
CREATE TABLE `psb_siswakontakdarurat` (
  `replid` int(11) NOT NULL AUTO_INCREMENT,
  `siswa` int(11) NOT NULL,
  `namakontakdarurat` varchar(100) NOT NULL,
  `hubkontakdarurat` varchar(30) NOT NULL,
  `telponkontakdarurat1` varchar(50) NOT NULL,
  `telponkontakdarurat2` varchar(50) NOT NULL,
  PRIMARY KEY (`replid`),
  KEY `siswa` (`siswa`) USING BTREE,
  CONSTRAINT `siswaFK10` FOREIGN KEY (`siswa`) REFERENCES `psb_siswa` (`replid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of psb_siswakontakdarurat
-- ----------------------------
INSERT INTO `psb_siswakontakdarurat` VALUES ('30', '140', 'dar1', 'hub1', 'tlp1', 'telp2');
INSERT INTO `psb_siswakontakdarurat` VALUES ('31', '140', 'dar2', 'hub2', 'tlp2', 'telp3');

-- ----------------------------
-- Table structure for psb_siswasaudara
-- ----------------------------
DROP TABLE IF EXISTS `psb_siswasaudara`;
CREATE TABLE `psb_siswasaudara` (
  `replid` int(11) NOT NULL AUTO_INCREMENT,
  `siswa` int(11) NOT NULL,
  `jkelaminsaudara` enum('L','P') NOT NULL DEFAULT 'L',
  `namasaudara` varchar(100) NOT NULL,
  `tempatlahirsaudara` varchar(100) NOT NULL,
  `tanggallahirsaudara` date NOT NULL,
  `sekolahsaudara` varchar(50) NOT NULL,
  `gradesaudara` varchar(5) NOT NULL,
  PRIMARY KEY (`replid`),
  KEY `siswa` (`siswa`) USING BTREE,
  CONSTRAINT `siswaFK9` FOREIGN KEY (`siswa`) REFERENCES `psb_siswa` (`replid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of psb_siswasaudara
-- ----------------------------
INSERT INTO `psb_siswasaudara` VALUES ('3', '140', 'L', 'namasau1', 'tmlahtsau2', '2015-09-03', 'elyon', '90');
INSERT INTO `psb_siswasaudara` VALUES ('4', '140', 'P', 'sau2', 'temp22', '2015-09-16', 'gak tau ', 'A');

-- ----------------------------
-- Table structure for psb_siswawali
-- ----------------------------
DROP TABLE IF EXISTS `psb_siswawali`;
CREATE TABLE `psb_siswawali` (
  `replid` int(11) NOT NULL AUTO_INCREMENT,
  `siswa` int(11) NOT NULL,
  `namawali` varchar(20) NOT NULL,
  `jkelaminwali` enum('') NOT NULL,
  `alamatwali` text NOT NULL,
  `kotawali` varchar(20) NOT NULL,
  `telponwali` varchar(20) NOT NULL,
  PRIMARY KEY (`replid`),
  KEY `siswa` (`siswa`) USING BTREE,
  CONSTRAINT `siswaFK8` FOREIGN KEY (`siswa`) REFERENCES `psb_siswa` (`replid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of psb_siswawali
-- ----------------------------

-- ----------------------------
-- Table structure for psb_statussiswa
-- ----------------------------
DROP TABLE IF EXISTS `psb_statussiswa`;
CREATE TABLE `psb_statussiswa` (
  `replid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `status` varchar(100) NOT NULL,
  `urutan` int(10) unsigned NOT NULL DEFAULT '0',
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`status`),
  UNIQUE KEY `UX_statussiswa` (`replid`),
  KEY `IX_statussiswa_ts` (`ts`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of psb_statussiswa
-- ----------------------------

-- ----------------------------
-- Table structure for psb_subdokumen
-- ----------------------------
DROP TABLE IF EXISTS `psb_subdokumen`;
CREATE TABLE `psb_subdokumen` (
  `replid` int(11) NOT NULL AUTO_INCREMENT,
  `dokumen` int(11) NOT NULL,
  `tingkat` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `satuanjumlah` int(11) NOT NULL,
  PRIMARY KEY (`replid`),
  KEY `dokumen` (`dokumen`) USING BTREE,
  KEY `tingkat` (`tingkat`) USING BTREE,
  CONSTRAINT `dokumenFK` FOREIGN KEY (`dokumen`) REFERENCES `psb_dokumen` (`replid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tingkatFK6` FOREIGN KEY (`tingkat`) REFERENCES `aka_tingkat` (`replid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of psb_subdokumen
-- ----------------------------
INSERT INTO `psb_subdokumen` VALUES ('26', '11', '1', '1', '1');
INSERT INTO `psb_subdokumen` VALUES ('31', '11', '8', '1', '1');
INSERT INTO `psb_subdokumen` VALUES ('36', '12', '7', '1', '1');
INSERT INTO `psb_subdokumen` VALUES ('42', '13', '6', '1', '2');
INSERT INTO `psb_subdokumen` VALUES ('43', '13', '7', '1', '2');
INSERT INTO `psb_subdokumen` VALUES ('44', '13', '8', '1', '2');
INSERT INTO `psb_subdokumen` VALUES ('45', '14', '7', '1', '1');
INSERT INTO `psb_subdokumen` VALUES ('46', '14', '8', '3', '1');
INSERT INTO `psb_subdokumen` VALUES ('49', '12', '6', '4', '1');
INSERT INTO `psb_subdokumen` VALUES ('50', '11', '2', '3', '1');
INSERT INTO `psb_subdokumen` VALUES ('51', '11', '3', '5', '1');
INSERT INTO `psb_subdokumen` VALUES ('52', '12', '1', '2', '1');
INSERT INTO `psb_subdokumen` VALUES ('53', '13', '1', '1', '1');

-- ----------------------------
-- Table structure for psb_syarat
-- ----------------------------
DROP TABLE IF EXISTS `psb_syarat`;
CREATE TABLE `psb_syarat` (
  `replid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `syarat` varchar(100) NOT NULL,
  `wajib` enum('1','0') NOT NULL DEFAULT '1',
  `keterangan` varchar(200) NOT NULL,
  PRIMARY KEY (`replid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of psb_syarat
-- ----------------------------

-- ----------------------------
-- Table structure for psb_tmp
-- ----------------------------
DROP TABLE IF EXISTS `psb_tmp`;
CREATE TABLE `psb_tmp` (
  `dcid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `photo` mediumblob NOT NULL,
  PRIMARY KEY (`dcid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of psb_tmp
-- ----------------------------

-- ----------------------------
-- Table structure for psb_tmp_saudara
-- ----------------------------
DROP TABLE IF EXISTS `psb_tmp_saudara`;
CREATE TABLE `psb_tmp_saudara` (
  `replid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sesid` varchar(40) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `tgllahir` date NOT NULL DEFAULT '0000-00-00',
  `sekolah` varchar(100) NOT NULL,
  PRIMARY KEY (`replid`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of psb_tmp_saudara
-- ----------------------------
INSERT INTO `psb_tmp_saudara` VALUES ('7', '8stsvc8fgc2d77gch0jgm8ona2', 'Raden Aditya Putra', '0000-00-00', 'Elyon Sukomanunggal');
INSERT INTO `psb_tmp_saudara` VALUES ('8', '8stsvc8fgc2d77gch0jgm8ona2', 'Firman Agung Satria', '0000-00-00', 'Elyon Sukomanunggal');
DROP TRIGGER IF EXISTS `ins_psb_biaya`;
DELIMITER ;;
CREATE TRIGGER `ins_psb_biaya` AFTER INSERT ON `psb_biaya` FOR EACH ROW BEGIN

/*untuk psb_detaildiskon*/
/*tahun ajaran*/
	BLOCK1: begin
		declare v_col1 int;
		declare no_more_rows1 INT DEFAULT 0;  
		declare cursor1 cursor for
				select replid
				from  aka_tahunajaran;
		declare continue handler for not found set no_more_rows1 =1;
		open cursor1;
		LOOP1: loop
				fetch cursor1
				into  v_col1;
				if no_more_rows1 then
						close cursor1;
						leave LOOP1;
				end if;
				
				/*biaya*/
				BLOCK2: begin
					declare v_col2 int;
					declare no_more_rows2 INT DEFAULT 0;  
					declare cursor2 cursor for
							select replid
							from  psb_biaya;
					declare continue handler for not found set no_more_rows2=1;
					open cursor2;
					LOOP2: loop
							fetch cursor2
							into  v_col2;
							if no_more_rows2 then
									close cursor2;
									leave LOOP2;
							end if;
							INSERT INTO psb_detaildiskon SET 
								diskon = NEW.replid, 
								biaya = v_col2, 
								tahunajaran = v_col1;
						end loop LOOP2;
				end BLOCK2;
		end loop LOOP1;
end BLOCK1;
END
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `ins_psb_detailgelombang`;
DELIMITER ;;
CREATE TRIGGER `ins_psb_detailgelombang` AFTER INSERT ON `psb_detailgelombang` FOR EACH ROW BEGIN

/*INSERT psb_detailbiaya FIX*/
/*subtingkat-----------------------------------------------------------------------*/
BLOCK2: begin
		declare v_col2 int;
		declare no_more_rows2 INT DEFAULT 0;  
		declare cursor2 cursor for
				SELECT s.replid
				FROM aka_kelas k
					JOIN aka_subtingkat s on s.replid = k.subtingkat
				WHERE k.departemen = NEW.departemen
				GROUP BY s.replid;
	 declare continue handler for not found
			 set no_more_rows2 =1;
		open cursor2;
		LOOP2: loop
				fetch cursor2
				into  v_col2;
				if no_more_rows2 then
						close cursor2;
						leave LOOP2;
				end if;
				/*biaya---------------------------------------------------------------*/
				BLOCK3: begin
							declare v_col3 int;
							declare no_more_rows3 INT DEFAULT 0;  
							declare cursor3 cursor for
									select replid
									from  psb_biaya;
						 declare continue handler for not found
								 set no_more_rows3 =1;
							open cursor3;
							LOOP3: loop
									fetch cursor3
									into  v_col3;
									if no_more_rows3 then
											close cursor3;
											leave LOOP3;
									end if;
									/*golongan ---------------------------------------------------------------*/
									BLOCK4: begin
												declare v_col4 int;
												declare no_more_rows4 INT DEFAULT 0;  
												declare cursor4 cursor for
														select replid
														from  psb_golongan;
											 declare continue handler for not found
													 set no_more_rows4 =1;
												open cursor4;
												LOOP4: loop
														fetch cursor4
														into  v_col4;
														if no_more_rows4 then
																close cursor4;
																leave LOOP4;
														end if;
									
														INSERT INTO psb_detailbiaya SET 
															biaya = v_col3, 
															subtingkat = v_col2, 
															detailgelombang = NEW.replid, 
															golongan = v_col4;
												end loop LOOP4;
									end BLOCK4;
						end loop LOOP3;
					end BLOCK3;
		end loop LOOP2;
end BLOCK2;
END
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `ins_psb_diskon`;
DELIMITER ;;
CREATE TRIGGER `ins_psb_diskon` AFTER INSERT ON `psb_diskon` FOR EACH ROW BEGIN

/*untuk psb_detaildiskon*/
/*tahun ajaran*/
	BLOCK1: begin
		declare v_col1 int;
		declare no_more_rows1 INT DEFAULT 0;  
		declare cursor1 cursor for
				select replid
				from  aka_tahunajaran;
		declare continue handler for not found set no_more_rows1 =1;
		open cursor1;
		LOOP1: loop
				fetch cursor1
				into  v_col1;
				if no_more_rows1 then
						close cursor1;
						leave LOOP1;
				end if;

				INSERT INTO psb_detaildiskon SET 
					diskon = NEW.replid, 
					tahunajaran = v_col1;

		end loop LOOP1;
end BLOCK1;
END
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `ins_psb_gelombang`;
DELIMITER ;;
CREATE TRIGGER `ins_psb_gelombang` AFTER INSERT ON `psb_gelombang` FOR EACH ROW BEGIN

/*untuk detail gelombang*/
/*departemen*/
BLOCK1: begin
    declare v_col1 int;                     
    declare no_more_rows1 INT DEFAULT 0;  
    declare cursor1 cursor for              
        select replid
        from departemen;
    declare continue handler for not found  
    		set no_more_rows1 =1;           
    open cursor1;
    LOOP1: loop
        fetch cursor1
        into  v_col1;
        if no_more_rows1 then
            close cursor1;
            leave LOOP1;
        end if;
				/*tahun ajaran*/
        BLOCK2: begin
            declare v_col2 int;
            declare no_more_rows2 INT DEFAULT 0;  
						declare cursor2 cursor for
                select replid
                from  aka_tahunajaran;
						declare continue handler for not found
               set no_more_rows2 =1;
            open cursor2;
            LOOP2: loop
                fetch cursor2
                into  v_col2;
                if no_more_rows2 then
                    close cursor2;
                    leave LOOP2;
                end if;
								INSERT INTO psb_detailgelombang SET 
									gelombang = NEW.replid, 
            			departemen = v_col1, 
            			tahunajaran = v_col2;
            end loop LOOP2;
        end BLOCK2;
    end loop LOOP1;
end BLOCK1;
END
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `ins_psb_golongan`;
DELIMITER ;;
CREATE TRIGGER `ins_psb_golongan` AFTER INSERT ON `psb_golongan` FOR EACH ROW BEGIN

/*INSERT psb_detailbiaya*/
/*subtingkat-----------------------------------------------------------------------*/
BLOCK2: begin
		declare v_col2 int;
		declare no_more_rows2 INT DEFAULT 0;  
		declare cursor2 cursor for
				SELECT s.replid
				FROM aka_kelas k
					JOIN aka_subtingkat s on s.replid = k.subtingkat
				GROUP BY s.replid;
	 declare continue handler for not found
			 set no_more_rows2 =1;
		open cursor2;
		LOOP2: loop
				fetch cursor2
				into  v_col2;
				if no_more_rows2 then
						close cursor2;
						leave LOOP2;
				end if;
				/*biaya---------------------------------------------------------------*/
				BLOCK3: begin
							declare v_col3 int;
							declare no_more_rows3 INT DEFAULT 0;  
							declare cursor3 cursor for
									select replid
									from  psb_biaya;
						 declare continue handler for not found
								 set no_more_rows3 =1;
							open cursor3;
							LOOP3: loop
									fetch cursor3
									into  v_col3;
									if no_more_rows3 then
											close cursor3;
											leave LOOP3;
									end if;
									/*detail gelombang---------------------------------------------------------------*/
									BLOCK4: begin
												declare v_col4 int;
												declare no_more_rows4 INT DEFAULT 0;  
												declare cursor4 cursor for
														select replid
														from  psb_detailgelombang;
											 declare continue handler for not found
													 set no_more_rows3 =1;
												open cursor4;
												LOOP4: loop
														fetch cursor4
														into  v_col4;
														if no_more_rows4 then
																close cursor4;
																leave LOOP4;
														end if;
									
														INSERT INTO psb_detailbiaya SET 
															biaya = v_col3, 
															subtingkat = v_col2, 
															detailgelombang = v_col4, 
															golongan = NEW.replid;
												end loop LOOP4;
									end BLOCK4;
						end loop LOOP3;
					end BLOCK3;
		end loop LOOP2;
end BLOCK2;
END
;;
DELIMITER ;
