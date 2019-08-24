/*
Navicat MySQL Data Transfer

Source Server         : 172.22.0.29
Source Server Version : 50505
Source Host           : 172.22.0.29:3306
Source Database       : moacmis

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2019-08-23 16:33:40
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for listdata
-- ----------------------------
DROP TABLE IF EXISTS `listdata`;
CREATE TABLE `listdata` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `product_id` int(11) NOT NULL,
  `order` int(11) DEFAULT NULL COMMENT 'ลำดับที่แสดง',
  `value` float DEFAULT NULL COMMENT 'มูลค่า',
  PRIMARY KEY (`id`),
  KEY `fk_list_product_idx` (`product_id`) USING BTREE,
  CONSTRAINT `fk_list_product` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=163 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of listdata
-- ----------------------------
INSERT INTO `listdata` VALUES ('1', '1) ครัวเรือนเกษตรกร(ครัวเรือน)(61)', '1', '1', null);
INSERT INTO `listdata` VALUES ('2', '2) เนื้อที่ (62)', '1', '2', null);
INSERT INTO `listdata` VALUES ('3', '3) ปริมาณผลผลิต(ตัน)(62)', '1', '3', null);
INSERT INTO `listdata` VALUES ('4', '4) ความต้องการผลผลิต (ตัน)', '1', '4', null);
INSERT INTO `listdata` VALUES ('5', '5) การใช้ในประเทศ (ตัน)', '1', '5', null);
INSERT INTO `listdata` VALUES ('6', '6) การส่งออก (ตัน)(ม.ค. - มิ.ย.62)', '1', '6', null);
INSERT INTO `listdata` VALUES ('7', '7) สต๊อกผลผลิต(ตัน)', '1', '7', null);
INSERT INTO `listdata` VALUES ('8', '8) สมดุล', '1', '8', null);
INSERT INTO `listdata` VALUES ('9', '9) ราคา ณ ไร่นา (บาท/กก.)', '1', '9', null);
INSERT INTO `listdata` VALUES ('10', '10) ต้นทุน ณ ไร่นา', '1', '10', null);
INSERT INTO `listdata` VALUES ('11', '11) กำไร (บาท/กก.)', '1', '11', null);
INSERT INTO `listdata` VALUES ('12', '1) ครัวเรือนเกษตรกร(ครัวเรือน)(61)', '2', '1', null);
INSERT INTO `listdata` VALUES ('13', '2) เนื้อที่ (62)', '2', '2', null);
INSERT INTO `listdata` VALUES ('14', '3) ปริมาณผลผลิต(ตัน)(62)', '2', '3', null);
INSERT INTO `listdata` VALUES ('15', '4) ความต้องการผลผลิต (ตัน)', '2', '4', null);
INSERT INTO `listdata` VALUES ('16', '5) การใช้ในประเทศ (ตัน)', '2', '5', null);
INSERT INTO `listdata` VALUES ('17', '6) การส่งออก (ตัน)(ม.ค. - มิ.ย.62)', '2', '6', null);
INSERT INTO `listdata` VALUES ('18', '7) สต๊อกผลผลิต(ตัน)', '2', '7', null);
INSERT INTO `listdata` VALUES ('19', '8) สมดุล', '2', '8', null);
INSERT INTO `listdata` VALUES ('20', '9) ราคา ณ ไร่นา (บาท/กก.)', '2', '9', null);
INSERT INTO `listdata` VALUES ('21', '10) ต้นทุน ณ ไร่นา', '2', '10', null);
INSERT INTO `listdata` VALUES ('22', '11) กำไร (บาท/กก.)', '2', '11', null);
INSERT INTO `listdata` VALUES ('23', '1) ครัวเรือนเกษตรกร(ครัวเรือน)(61)', '3', '1', null);
INSERT INTO `listdata` VALUES ('24', '2) เนื้อที่ (62)', '3', '2', null);
INSERT INTO `listdata` VALUES ('25', '3) ปริมาณผลผลิต(ตัน)(62)', '3', '3', null);
INSERT INTO `listdata` VALUES ('26', '4) ความต้องการผลผลิต (ตัน)', '3', '4', null);
INSERT INTO `listdata` VALUES ('27', '5) การใช้ในประเทศ (ตัน)', '3', '5', null);
INSERT INTO `listdata` VALUES ('28', '6) การส่งออก (ตัน)(ม.ค. - มิ.ย.62)', '3', '6', null);
INSERT INTO `listdata` VALUES ('29', '7) สต๊อกผลผลิต(ตัน)', '3', '7', null);
INSERT INTO `listdata` VALUES ('30', '8) สมดุล', '3', '8', null);
INSERT INTO `listdata` VALUES ('31', '9) ราคา ณ ไร่นา (บาท/กก.)', '3', '9', null);
INSERT INTO `listdata` VALUES ('32', '10) ต้นทุน ณ ไร่นา', '3', '10', null);
INSERT INTO `listdata` VALUES ('33', '11) กำไร (บาท/กก.)', '3', '11', null);
INSERT INTO `listdata` VALUES ('34', '1) ครัวเรือนเกษตรกร(ครัวเรือน)(61)', '4', '1', null);
INSERT INTO `listdata` VALUES ('35', '2) เนื้อที่ (62)', '4', '2', null);
INSERT INTO `listdata` VALUES ('36', '3) ปริมาณผลผลิต(ตัน)(62)', '4', '3', null);
INSERT INTO `listdata` VALUES ('37', '4) ความต้องการผลผลิต (ตัน)', '4', '4', null);
INSERT INTO `listdata` VALUES ('38', '5) การใช้ในประเทศ (ตัน)', '4', '5', null);
INSERT INTO `listdata` VALUES ('39', '6) การส่งออก (ตัน)(ม.ค. - มิ.ย.62)', '4', '6', null);
INSERT INTO `listdata` VALUES ('40', '7) สต๊อกผลผลิต(ตัน)', '4', '7', null);
INSERT INTO `listdata` VALUES ('41', '8) สมดุล', '4', '8', null);
INSERT INTO `listdata` VALUES ('42', '9) ราคา ณ ไร่นา (บาท/กก.)', '4', '9', null);
INSERT INTO `listdata` VALUES ('43', '10) ต้นทุน ณ ไร่นา', '4', '10', null);
INSERT INTO `listdata` VALUES ('44', '11) กำไร (บาท/กก.)', '4', '11', null);
INSERT INTO `listdata` VALUES ('45', '1) ครัวเรือนเกษตรกร(ครัวเรือน)(61)', '5', '1', null);
INSERT INTO `listdata` VALUES ('46', '2) เนื้อที่ (62)', '5', '2', null);
INSERT INTO `listdata` VALUES ('47', '3) ปริมาณผลผลิต(ตัน)(62)', '5', '3', null);
INSERT INTO `listdata` VALUES ('48', '4) ความต้องการผลผลิต (ตัน)', '5', '4', null);
INSERT INTO `listdata` VALUES ('49', '5) การใช้ในประเทศ (ตัน)', '5', '5', null);
INSERT INTO `listdata` VALUES ('50', '6) การส่งออก (ตัน)(ม.ค. - มิ.ย.62)', '5', '6', null);
INSERT INTO `listdata` VALUES ('51', '7) สต๊อกผลผลิต(ตัน)', '5', '7', null);
INSERT INTO `listdata` VALUES ('52', '8) สมดุล', '5', '8', null);
INSERT INTO `listdata` VALUES ('53', '9) ราคา ณ ไร่นา (บาท/กก.)', '5', '9', null);
INSERT INTO `listdata` VALUES ('54', '10) ต้นทุน ณ ไร่นา', '5', '10', null);
INSERT INTO `listdata` VALUES ('55', '11) กำไร (บาท/กก.)', '5', '11', null);
INSERT INTO `listdata` VALUES ('56', '1) ครัวเรือนเกษตรกร(ครัวเรือน)(61)', '6', '1', null);
INSERT INTO `listdata` VALUES ('57', '2) เนื้อที่ (62)', '6', '2', null);
INSERT INTO `listdata` VALUES ('58', '3) ปริมาณผลผลิต(ตัน)(62)', '6', '3', null);
INSERT INTO `listdata` VALUES ('59', '4) ความต้องการผลผลิต (ตัน)', '6', '4', null);
INSERT INTO `listdata` VALUES ('60', '5) การใช้ในประเทศ (ตัน)', '6', '5', null);
INSERT INTO `listdata` VALUES ('61', '6) การส่งออก (ตัน)(ม.ค. - มิ.ย.62)', '6', '6', null);
INSERT INTO `listdata` VALUES ('62', '7) สต๊อกผลผลิต(ตัน)', '6', '7', null);
INSERT INTO `listdata` VALUES ('63', '8) สมดุล', '6', '8', null);
INSERT INTO `listdata` VALUES ('64', '9) ราคา ณ ไร่นา (บาท/กก.)', '6', '9', null);
INSERT INTO `listdata` VALUES ('65', '10) ต้นทุน ณ ไร่นา', '6', '10', null);
INSERT INTO `listdata` VALUES ('66', '11) กำไร (บาท/กก.)', '6', '11', null);
INSERT INTO `listdata` VALUES ('67', '1) ครัวเรือนเกษตรกร(ครัวเรือน)(61)', '7', '1', null);
INSERT INTO `listdata` VALUES ('68', '2) เนื้อที่ (62)', '7', '2', null);
INSERT INTO `listdata` VALUES ('69', '3) ปริมาณผลผลิต(ตัน)(62)', '7', '3', null);
INSERT INTO `listdata` VALUES ('70', '4) ความต้องการผลผลิต (ตัน)', '7', '4', null);
INSERT INTO `listdata` VALUES ('71', '5) การใช้ในประเทศ (ตัน)', '7', '5', null);
INSERT INTO `listdata` VALUES ('72', '6) การส่งออก (ตัน)(ม.ค. - มิ.ย.62)', '7', '6', null);
INSERT INTO `listdata` VALUES ('73', '7) สต๊อกผลผลิต(ตัน)', '7', '7', null);
INSERT INTO `listdata` VALUES ('74', '8) สมดุล', '7', '8', null);
INSERT INTO `listdata` VALUES ('75', '9) ราคา ณ ไร่นา (บาท/กก.)', '7', '9', null);
INSERT INTO `listdata` VALUES ('76', '10) ต้นทุน ณ ไร่นา', '7', '10', null);
INSERT INTO `listdata` VALUES ('77', '11) กำไร (บาท/กก.)', '7', '11', null);
INSERT INTO `listdata` VALUES ('78', '1) ครัวเรือนเกษตรกร(ครัวเรือน)(61)', '8', '1', null);
INSERT INTO `listdata` VALUES ('79', '2) เนื้อที่ (62)', '8', '2', null);
INSERT INTO `listdata` VALUES ('80', '3) ปริมาณผลผลิต(ตัน)(62)', '8', '3', null);
INSERT INTO `listdata` VALUES ('81', '4) ความต้องการผลผลิต (ตัน)', '8', '4', null);
INSERT INTO `listdata` VALUES ('82', '5) การใช้ในประเทศ (ตัน)', '8', '5', null);
INSERT INTO `listdata` VALUES ('83', '6) การส่งออก (ตัน)(ม.ค. - มิ.ย.62)', '8', '6', null);
INSERT INTO `listdata` VALUES ('84', '7) สต๊อกผลผลิต(ตัน)', '8', '7', null);
INSERT INTO `listdata` VALUES ('85', '8) สมดุล', '8', '8', null);
INSERT INTO `listdata` VALUES ('86', '9) ราคา ณ ไร่นา (บาท/กก.)', '8', '9', null);
INSERT INTO `listdata` VALUES ('87', '10) ต้นทุน ณ ไร่นา', '8', '10', null);
INSERT INTO `listdata` VALUES ('88', '11) กำไร (บาท/กก.)', '8', '11', null);
INSERT INTO `listdata` VALUES ('89', '1) ครัวเรือนเกษตรกร(ครัวเรือน)(61)', '9', '1', null);
INSERT INTO `listdata` VALUES ('90', '2) เนื้อที่ (62)', '9', '2', null);
INSERT INTO `listdata` VALUES ('91', '3) ปริมาณผลผลิต(ตัน)(62)', '9', '3', null);
INSERT INTO `listdata` VALUES ('92', '4) ความต้องการผลผลิต (ตัน)', '9', '4', null);
INSERT INTO `listdata` VALUES ('93', '5) การใช้ในประเทศ (ตัน)', '9', '5', null);
INSERT INTO `listdata` VALUES ('94', '6) การส่งออก (ตัน)(ม.ค. - มิ.ย.62)', '9', '6', null);
INSERT INTO `listdata` VALUES ('95', '7) สต๊อกผลผลิต(ตัน)', '9', '7', null);
INSERT INTO `listdata` VALUES ('96', '8) สมดุล', '9', '8', null);
INSERT INTO `listdata` VALUES ('97', '9) ราคา ณ ไร่นา (บาท/กก.)', '9', '9', null);
INSERT INTO `listdata` VALUES ('98', '10) ต้นทุน ณ ไร่นา', '9', '10', null);
INSERT INTO `listdata` VALUES ('99', '11) กำไร (บาท/กก.)', '9', '11', null);
INSERT INTO `listdata` VALUES ('100', '1) ครัวเรือนเกษตรกร(ครัวเรือน)(61)', '10', '1', null);
INSERT INTO `listdata` VALUES ('101', '2) เนื้อที่ (62)', '10', '2', null);
INSERT INTO `listdata` VALUES ('102', '3) ปริมาณผลผลิต(ตัน)(62)', '10', '3', null);
INSERT INTO `listdata` VALUES ('103', '4) ความต้องการผลผลิต (ตัน)', '10', '4', null);
INSERT INTO `listdata` VALUES ('104', '5) การใช้ในประเทศ (ตัน)', '10', '5', null);
INSERT INTO `listdata` VALUES ('105', '6) การส่งออก (ตัน)(ม.ค. - มิ.ย.62)', '10', '6', null);
INSERT INTO `listdata` VALUES ('106', '7) สต๊อกผลผลิต(ตัน)', '10', '7', null);
INSERT INTO `listdata` VALUES ('107', '8) สมดุล', '10', '8', null);
INSERT INTO `listdata` VALUES ('108', '9) ราคา ณ ไร่นา (บาท/กก.)', '10', '9', null);
INSERT INTO `listdata` VALUES ('109', '10) ต้นทุน ณ ไร่นา', '10', '10', null);
INSERT INTO `listdata` VALUES ('110', '11) กำไร (บาท/กก.)', '10', '11', null);
INSERT INTO `listdata` VALUES ('111', '1) ครัวเรือนเกษตรกร(ครัวเรือน)(61)', '11', '1', null);
INSERT INTO `listdata` VALUES ('112', '2) เนื้อที่ (62)', '11', '2', null);
INSERT INTO `listdata` VALUES ('113', '3) ปริมาณผลผลิต(ตัน)(62)', '11', '3', null);
INSERT INTO `listdata` VALUES ('114', '4) ความต้องการผลผลิต (ตัน)', '11', '4', null);
INSERT INTO `listdata` VALUES ('115', '5) การใช้ในประเทศ (ตัน)', '11', '5', null);
INSERT INTO `listdata` VALUES ('116', '6) การส่งออก (ตัน)(ม.ค. - มิ.ย.62)', '11', '6', null);
INSERT INTO `listdata` VALUES ('117', '7) สต๊อกผลผลิต(ตัน)', '11', '7', null);
INSERT INTO `listdata` VALUES ('118', '8) สมดุล', '11', '8', null);
INSERT INTO `listdata` VALUES ('119', '9) ราคา ณ ไร่นา (บาท/กก.)', '11', '9', null);
INSERT INTO `listdata` VALUES ('120', '10) ต้นทุน ณ ไร่นา', '11', '10', null);
INSERT INTO `listdata` VALUES ('121', '11) กำไร (บาท/กก.)', '11', '11', null);
INSERT INTO `listdata` VALUES ('122', '1) ครัวเรือนเกษตรกร(ครัวเรือน)(61)', '12', '1', null);
INSERT INTO `listdata` VALUES ('123', '2) เนื้อที่ (62)', '12', '2', null);
INSERT INTO `listdata` VALUES ('124', '3) ปริมาณผลผลิต(ตัน)(62)', '12', '3', null);
INSERT INTO `listdata` VALUES ('125', '4) ความต้องการผลผลิต (ตัน)', '12', '4', null);
INSERT INTO `listdata` VALUES ('126', '5) การใช้ในประเทศ (ตัน)', '12', '5', null);
INSERT INTO `listdata` VALUES ('127', '6) การส่งออก (ตัน)(ม.ค. - มิ.ย.62)', '12', '6', null);
INSERT INTO `listdata` VALUES ('128', '7) สต๊อกผลผลิต(ตัน)', '12', '7', null);
INSERT INTO `listdata` VALUES ('129', '8) สมดุล', '12', '8', null);
INSERT INTO `listdata` VALUES ('130', '9) ราคา ณ ไร่นา (บาท/กก.)', '12', '9', null);
INSERT INTO `listdata` VALUES ('131', '10) ต้นทุน ณ ไร่นา', '12', '10', null);
INSERT INTO `listdata` VALUES ('132', '11) กำไร (บาท/กก.)', '12', '11', null);
INSERT INTO `listdata` VALUES ('133', '1) ครัวเรือนเกษตรกร(ครัวเรือน)(61)', '13', '1', null);
INSERT INTO `listdata` VALUES ('134', '2) เนื้อที่ (62)', '13', '2', null);
INSERT INTO `listdata` VALUES ('135', '3) ปริมาณผลผลิต(ตัน)(62)', '13', '3', null);
INSERT INTO `listdata` VALUES ('136', '4) ความต้องการผลผลิต (ตัน)', '13', '4', null);
INSERT INTO `listdata` VALUES ('137', '5) การใช้ในประเทศ (ตัน)', '13', '5', null);
INSERT INTO `listdata` VALUES ('138', '6) การส่งออก (ตัน)(ม.ค. - มิ.ย.62)', '13', '6', null);
INSERT INTO `listdata` VALUES ('139', '7) สต๊อกผลผลิต(ตัน)', '13', '7', null);
INSERT INTO `listdata` VALUES ('140', '8) สมดุล', '13', '8', null);
INSERT INTO `listdata` VALUES ('141', '9) ราคา ณ ไร่นา (บาท/กก.)', '13', '9', null);
INSERT INTO `listdata` VALUES ('142', '10) ต้นทุน ณ ไร่นา', '13', '10', null);
INSERT INTO `listdata` VALUES ('143', '11) กำไร (บาท/กก.)', '13', '11', null);
INSERT INTO `listdata` VALUES ('144', '1) ครัวเรือนเกษตรกร(ครัวเรือน)(61)', '14', '1', null);
INSERT INTO `listdata` VALUES ('145', '2) เนื้อที่ (62)', '14', '2', null);
INSERT INTO `listdata` VALUES ('146', '3) ปริมาณผลผลิต(ตัน)(62)', '14', '3', null);
INSERT INTO `listdata` VALUES ('147', '4) ความต้องการผลผลิต (ตัน)', '14', '4', null);
INSERT INTO `listdata` VALUES ('148', '5) การใช้ในประเทศ (ตัน)', '14', '5', null);
INSERT INTO `listdata` VALUES ('149', '6) การส่งออก (ตัน)(ม.ค. - มิ.ย.62)', '14', '6', null);
INSERT INTO `listdata` VALUES ('150', '7) สต๊อกผลผลิต(ตัน)', '14', '7', null);
INSERT INTO `listdata` VALUES ('151', '8) สมดุล', '14', '8', null);
INSERT INTO `listdata` VALUES ('152', '9) ราคา ณ ไร่นา (บาท/กก.)', '14', '9', null);
INSERT INTO `listdata` VALUES ('153', '10) ต้นทุน ณ ไร่นา', '14', '10', null);
INSERT INTO `listdata` VALUES ('154', '11) กำไร (บาท/กก.)', '14', '11', null);
INSERT INTO `listdata` VALUES ('155', 'ครัวเรือนเกษตร (ครัวเรือน) (61)', '1', '1', null);
INSERT INTO `listdata` VALUES ('156', 'มันสำปะหลัง', '3', '1', null);
INSERT INTO `listdata` VALUES ('157', 'ข้าวโพดเลี้ยงสัตว์', '4', '1', null);
INSERT INTO `listdata` VALUES ('158', '3) ปริมาณผลผลิต(ตัน)(62)', '1', '3', null);
INSERT INTO `listdata` VALUES ('159', '4) ความต้องการผลผลิต (ตัน)', '1', '4', null);
INSERT INTO `listdata` VALUES ('160', '5) การใช้ในประเทศ (ตัน)', '1', '5', null);
INSERT INTO `listdata` VALUES ('161', '6) การส่งออก (ตัน)(ม.ค. - มิ.ย.62)', '1', '6', null);
INSERT INTO `listdata` VALUES ('162', '7) สต๊อกผลผลิต(ตัน)', '1', '7', null);

-- ----------------------------
-- Table structure for migration
-- ----------------------------
DROP TABLE IF EXISTS `migration`;
CREATE TABLE `migration` (
  `version` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `apply_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of migration
-- ----------------------------
INSERT INTO `migration` VALUES ('m000000_000000_base', '1566539360');
INSERT INTO `migration` VALUES ('m130524_201442_init', '1566539363');
INSERT INTO `migration` VALUES ('m190124_110200_add_verification_token_column_to_user_table', '1566539363');

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL COMMENT 'สินค้า',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='สินค้า\n';

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES ('1', 'ข้าวนาปี');
INSERT INTO `product` VALUES ('2', 'ข้าวนาปรัง');
INSERT INTO `product` VALUES ('3', 'มันสำปะหลัง');
INSERT INTO `product` VALUES ('4', 'ข้าวโพดเลี้ยงสัตว์');
INSERT INTO `product` VALUES ('5', 'สับปะรดโรงงาน');
INSERT INTO `product` VALUES ('6', 'อ้อยโรงงาน');
INSERT INTO `product` VALUES ('7', 'ปาล์มน้ำมัน');
INSERT INTO `product` VALUES ('8', 'ยางพารา');
INSERT INTO `product` VALUES ('9', 'ทุเรียน');
INSERT INTO `product` VALUES ('10', 'เงาะ');
INSERT INTO `product` VALUES ('11', 'มังคุด');
INSERT INTO `product` VALUES ('12', 'ลำไย');
INSERT INTO `product` VALUES ('13', 'มะพร้าว');
INSERT INTO `product` VALUES ('14', 'กาแฟ');

-- ----------------------------
-- Table structure for sublist
-- ----------------------------
DROP TABLE IF EXISTS `sublist`;
CREATE TABLE `sublist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` float DEFAULT NULL COMMENT 'มูลค่า',
  `order` int(11) DEFAULT NULL COMMENT 'ลำดับที่แสดง',
  `name` varchar(245) DEFAULT NULL COMMENT 'รายการ',
  `list_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_sublist_list1_idx` (`list_id`),
  CONSTRAINT `fk_sublist_list1` FOREIGN KEY (`list_id`) REFERENCES `listdata` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=141 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sublist
-- ----------------------------
INSERT INTO `sublist` VALUES ('1', '59390300', '1', '2.1) ปลูก/ยืนต้น(ไร่)', '2');
INSERT INTO `sublist` VALUES ('2', '57658600', '2', '2.2) เก็บเกี่ยว (ไร่)', '2');
INSERT INTO `sublist` VALUES ('3', null, '3', '2.3) ปลูกในเขต ส.ป.ก. (%)', '2');
INSERT INTO `sublist` VALUES ('4', null, '4', '2.4) ปลูกในเขตชลฯ', '2');
INSERT INTO `sublist` VALUES ('5', null, '5', '2.5) ปลูกนอกเขตชลฯ', '2');
INSERT INTO `sublist` VALUES ('6', null, '6', '2.6) ถือครอง < 15 ไร่ > 15 ไร่', '2');
INSERT INTO `sublist` VALUES ('7', '11510000', '1', '2.1) ปลูก/ยืนต้น(ไร่)', '13');
INSERT INTO `sublist` VALUES ('8', '57658600', '2', '2.2) เก็บเกี่ยว (ไร่)', '13');
INSERT INTO `sublist` VALUES ('9', null, '3', '2.3) ปลูกในเขต ส.ป.ก. (%)', '13');
INSERT INTO `sublist` VALUES ('10', null, '4', '2.4) ปลูกในเขตชลฯ', '13');
INSERT INTO `sublist` VALUES ('11', null, '5', '2.5) ปลูกนอกเขตชลฯ', '13');
INSERT INTO `sublist` VALUES ('12', null, '6', '2.6) ถือครอง < 15 ไร่ > 15 ไร่', '13');
INSERT INTO `sublist` VALUES ('13', '59390300', '1', '2.1) ปลูก/ยืนต้น(ไร่)', '24');
INSERT INTO `sublist` VALUES ('14', '57658600', '2', '2.2) เก็บเกี่ยว (ไร่)', '24');
INSERT INTO `sublist` VALUES ('15', null, '3', '2.3) ปลูกในเขต ส.ป.ก. (%)', '24');
INSERT INTO `sublist` VALUES ('16', null, '4', '2.4) ปลูกในเขตชลฯ', '24');
INSERT INTO `sublist` VALUES ('17', null, '5', '2.5) ปลูกนอกเขตชลฯ', '24');
INSERT INTO `sublist` VALUES ('18', null, '6', '2.6) ถือครอง < 15 ไร่ > 15 ไร่', '24');
INSERT INTO `sublist` VALUES ('19', '59390300', '1', '2.1) ปลูก/ยืนต้น(ไร่)', '35');
INSERT INTO `sublist` VALUES ('20', '57658600', '2', '2.2) เก็บเกี่ยว (ไร่)', '35');
INSERT INTO `sublist` VALUES ('21', null, '3', '2.3) ปลูกในเขต ส.ป.ก. (%)', '35');
INSERT INTO `sublist` VALUES ('22', null, '4', '2.4) ปลูกในเขตชลฯ', '35');
INSERT INTO `sublist` VALUES ('23', null, '5', '2.5) ปลูกนอกเขตชลฯ', '35');
INSERT INTO `sublist` VALUES ('24', null, '6', '2.6) ถือครอง < 15 ไร่ > 15 ไร่', '35');
INSERT INTO `sublist` VALUES ('25', '59390300', '1', '2.1) ปลูก/ยืนต้น(ไร่)', '46');
INSERT INTO `sublist` VALUES ('26', '57658600', '2', '2.2) เก็บเกี่ยว (ไร่)', '46');
INSERT INTO `sublist` VALUES ('27', null, '3', '2.3) ปลูกในเขต ส.ป.ก. (%)', '46');
INSERT INTO `sublist` VALUES ('28', null, '4', '2.4) ปลูกในเขตชลฯ', '46');
INSERT INTO `sublist` VALUES ('29', null, '5', '2.5) ปลูกนอกเขตชลฯ', '46');
INSERT INTO `sublist` VALUES ('30', null, '6', '2.6) ถือครอง < 15 ไร่ > 15 ไร่', '46');
INSERT INTO `sublist` VALUES ('31', '59390300', '1', '2.1) ปลูก/ยืนต้น(ไร่)', '57');
INSERT INTO `sublist` VALUES ('32', '57658600', '2', '2.2) เก็บเกี่ยว (ไร่)', '57');
INSERT INTO `sublist` VALUES ('33', null, '3', '2.3) ปลูกในเขต ส.ป.ก. (%)', '57');
INSERT INTO `sublist` VALUES ('34', null, '4', '2.4) ปลูกในเขตชลฯ', '57');
INSERT INTO `sublist` VALUES ('35', null, '5', '2.5) ปลูกนอกเขตชลฯ', '57');
INSERT INTO `sublist` VALUES ('36', null, '6', '2.6) ถือครอง < 15 ไร่ > 15 ไร่', '57');
INSERT INTO `sublist` VALUES ('37', '59390300', '1', '2.1) ปลูก/ยืนต้น(ไร่)', '68');
INSERT INTO `sublist` VALUES ('38', '57658600', '2', '2.2) เก็บเกี่ยว (ไร่)', '68');
INSERT INTO `sublist` VALUES ('39', null, '3', '2.3) ปลูกในเขต ส.ป.ก. (%)', '68');
INSERT INTO `sublist` VALUES ('40', null, '4', '2.4) ปลูกในเขตชลฯ', '68');
INSERT INTO `sublist` VALUES ('41', null, '5', '2.5) ปลูกนอกเขตชลฯ', '68');
INSERT INTO `sublist` VALUES ('42', null, '6', '2.6) ถือครอง < 15 ไร่ > 15 ไร่', '68');
INSERT INTO `sublist` VALUES ('43', '59390300', '1', '2.1) ปลูก/ยืนต้น(ไร่)', '79');
INSERT INTO `sublist` VALUES ('44', '57658600', '2', '2.2) เก็บเกี่ยว (ไร่)', '79');
INSERT INTO `sublist` VALUES ('45', null, '3', '2.3) ปลูกในเขต ส.ป.ก. (%)', '79');
INSERT INTO `sublist` VALUES ('46', null, '4', '2.4) ปลูกในเขตชลฯ', '79');
INSERT INTO `sublist` VALUES ('47', null, '5', '2.5) ปลูกนอกเขตชลฯ', '79');
INSERT INTO `sublist` VALUES ('48', null, '6', '2.6) ถือครอง < 15 ไร่ > 15 ไร่', '79');
INSERT INTO `sublist` VALUES ('49', '59390300', '1', '2.1) ปลูก/ยืนต้น(ไร่)', '90');
INSERT INTO `sublist` VALUES ('50', '57658600', '2', '2.2) เก็บเกี่ยว (ไร่)', '90');
INSERT INTO `sublist` VALUES ('51', null, '3', '2.3) ปลูกในเขต ส.ป.ก. (%)', '90');
INSERT INTO `sublist` VALUES ('52', null, '4', '2.4) ปลูกในเขตชลฯ', '90');
INSERT INTO `sublist` VALUES ('53', null, '5', '2.5) ปลูกนอกเขตชลฯ', '90');
INSERT INTO `sublist` VALUES ('54', null, '6', '2.6) ถือครอง < 15 ไร่ > 15 ไร่', '90');
INSERT INTO `sublist` VALUES ('55', '59390300', '1', '2.1) ปลูก/ยืนต้น(ไร่)', '101');
INSERT INTO `sublist` VALUES ('56', '57658600', '2', '2.2) เก็บเกี่ยว (ไร่)', '101');
INSERT INTO `sublist` VALUES ('57', null, '3', '2.3) ปลูกในเขต ส.ป.ก. (%)', '101');
INSERT INTO `sublist` VALUES ('58', null, '4', '2.4) ปลูกในเขตชลฯ', '101');
INSERT INTO `sublist` VALUES ('59', null, '5', '2.5) ปลูกนอกเขตชลฯ', '101');
INSERT INTO `sublist` VALUES ('60', null, '6', '2.6) ถือครอง < 15 ไร่ > 15 ไร่', '101');
INSERT INTO `sublist` VALUES ('61', '59390300', '1', '2.1) ปลูก/ยืนต้น(ไร่)', '112');
INSERT INTO `sublist` VALUES ('62', '57658600', '2', '2.2) เก็บเกี่ยว (ไร่)', '112');
INSERT INTO `sublist` VALUES ('63', null, '3', '2.3) ปลูกในเขต ส.ป.ก. (%)', '112');
INSERT INTO `sublist` VALUES ('64', null, '4', '2.4) ปลูกในเขตชลฯ', '112');
INSERT INTO `sublist` VALUES ('65', null, '5', '2.5) ปลูกนอกเขตชลฯ', '112');
INSERT INTO `sublist` VALUES ('66', null, '6', '2.6) ถือครอง < 15 ไร่ > 15 ไร่', '112');
INSERT INTO `sublist` VALUES ('67', '59390300', '1', '2.1) ปลูก/ยืนต้น(ไร่)', '123');
INSERT INTO `sublist` VALUES ('68', '57658600', '2', '2.2) เก็บเกี่ยว (ไร่)', '123');
INSERT INTO `sublist` VALUES ('69', null, '3', '2.3) ปลูกในเขต ส.ป.ก. (%)', '123');
INSERT INTO `sublist` VALUES ('70', null, '4', '2.4) ปลูกในเขตชลฯ', '123');
INSERT INTO `sublist` VALUES ('71', null, '5', '2.5) ปลูกนอกเขตชลฯ', '123');
INSERT INTO `sublist` VALUES ('72', null, '6', '2.6) ถือครอง < 15 ไร่ > 15 ไร่', '123');
INSERT INTO `sublist` VALUES ('73', '59390300', '1', '2.1) ปลูก/ยืนต้น(ไร่)', '134');
INSERT INTO `sublist` VALUES ('74', '57658600', '2', '2.2) เก็บเกี่ยว (ไร่)', '134');
INSERT INTO `sublist` VALUES ('75', null, '3', '2.3) ปลูกในเขต ส.ป.ก. (%)', '134');
INSERT INTO `sublist` VALUES ('76', null, '4', '2.4) ปลูกในเขตชลฯ', '134');
INSERT INTO `sublist` VALUES ('77', null, '5', '2.5) ปลูกนอกเขตชลฯ', '134');
INSERT INTO `sublist` VALUES ('78', null, '6', '2.6) ถือครอง < 15 ไร่ > 15 ไร่', '134');
INSERT INTO `sublist` VALUES ('79', '59390300', '1', '2.1) ปลูก/ยืนต้น(ไร่)', '145');
INSERT INTO `sublist` VALUES ('80', '57658600', '2', '2.2) เก็บเกี่ยว (ไร่)', '145');
INSERT INTO `sublist` VALUES ('81', null, '3', '2.3) ปลูกในเขต ส.ป.ก. (%)', '145');
INSERT INTO `sublist` VALUES ('82', null, '4', '2.4) ปลูกในเขตชลฯ', '145');
INSERT INTO `sublist` VALUES ('83', null, '5', '2.5) ปลูกนอกเขตชลฯ', '145');
INSERT INTO `sublist` VALUES ('84', null, '6', '2.6) ถือครอง < 15 ไร่ > 15 ไร่', '145');
INSERT INTO `sublist` VALUES ('85', null, '1', '8.1) ผลผลิต (ตัน)', '8');
INSERT INTO `sublist` VALUES ('86', null, '2', '8.2) เนื้อที่ลูก (ไร่)', '8');
INSERT INTO `sublist` VALUES ('87', null, '3', '8.3) เนื้อที่ปรับเปลี่ยน (ไร่)', '8');
INSERT INTO `sublist` VALUES ('88', null, '1', '8.1) ผลผลิต (ตัน)', '19');
INSERT INTO `sublist` VALUES ('89', null, '2', '8.2) เนื้อที่ลูก (ไร่)', '19');
INSERT INTO `sublist` VALUES ('90', null, '3', '8.3) เนื้อที่ปรับเปลี่ยน (ไร่)', '19');
INSERT INTO `sublist` VALUES ('91', null, '1', '8.1) ผลผลิต (ตัน)', '30');
INSERT INTO `sublist` VALUES ('92', null, '2', '8.2) เนื้อที่ลูก (ไร่)', '30');
INSERT INTO `sublist` VALUES ('93', null, '3', '8.3) เนื้อที่ปรับเปลี่ยน (ไร่)', '30');
INSERT INTO `sublist` VALUES ('94', null, '1', '8.1) ผลผลิต (ตัน)', '41');
INSERT INTO `sublist` VALUES ('95', null, '2', '8.2) เนื้อที่ลูก (ไร่)', '41');
INSERT INTO `sublist` VALUES ('96', null, '3', '8.3) เนื้อที่ปรับเปลี่ยน (ไร่)', '41');
INSERT INTO `sublist` VALUES ('97', null, '1', '8.1) ผลผลิต (ตัน)', '52');
INSERT INTO `sublist` VALUES ('98', null, '2', '8.2) เนื้อที่ลูก (ไร่)', '52');
INSERT INTO `sublist` VALUES ('99', null, '3', '8.3) เนื้อที่ปรับเปลี่ยน (ไร่)', '52');
INSERT INTO `sublist` VALUES ('100', null, '1', '8.1) ผลผลิต (ตัน)', '63');
INSERT INTO `sublist` VALUES ('101', null, '2', '8.2) เนื้อที่ลูก (ไร่)', '63');
INSERT INTO `sublist` VALUES ('102', null, '3', '8.3) เนื้อที่ปรับเปลี่ยน (ไร่)', '63');
INSERT INTO `sublist` VALUES ('103', null, '1', '8.1) ผลผลิต (ตัน)', '74');
INSERT INTO `sublist` VALUES ('104', null, '2', '8.2) เนื้อที่ลูก (ไร่)', '74');
INSERT INTO `sublist` VALUES ('105', null, '3', '8.3) เนื้อที่ปรับเปลี่ยน (ไร่)', '74');
INSERT INTO `sublist` VALUES ('106', null, '1', '8.1) ผลผลิต (ตัน)', '85');
INSERT INTO `sublist` VALUES ('107', null, '2', '8.2) เนื้อที่ลูก (ไร่)', '85');
INSERT INTO `sublist` VALUES ('108', null, '3', '8.3) เนื้อที่ปรับเปลี่ยน (ไร่)', '85');
INSERT INTO `sublist` VALUES ('109', null, '1', '8.1) ผลผลิต (ตัน)', '96');
INSERT INTO `sublist` VALUES ('110', null, '2', '8.2) เนื้อที่ลูก (ไร่)', '96');
INSERT INTO `sublist` VALUES ('111', null, '3', '8.3) เนื้อที่ปรับเปลี่ยน (ไร่)', '96');
INSERT INTO `sublist` VALUES ('112', null, '1', '8.1) ผลผลิต (ตัน)', '107');
INSERT INTO `sublist` VALUES ('113', null, '2', '8.2) เนื้อที่ลูก (ไร่)', '107');
INSERT INTO `sublist` VALUES ('114', null, '3', '8.3) เนื้อที่ปรับเปลี่ยน (ไร่)', '107');
INSERT INTO `sublist` VALUES ('115', null, '1', '8.1) ผลผลิต (ตัน)', '118');
INSERT INTO `sublist` VALUES ('116', null, '2', '8.2) เนื้อที่ลูก (ไร่)', '118');
INSERT INTO `sublist` VALUES ('117', null, '3', '8.3) เนื้อที่ปรับเปลี่ยน (ไร่)', '118');
INSERT INTO `sublist` VALUES ('118', null, '1', '8.1) ผลผลิต (ตัน)', '129');
INSERT INTO `sublist` VALUES ('119', null, '2', '8.2) เนื้อที่ลูก (ไร่)', '129');
INSERT INTO `sublist` VALUES ('120', null, '3', '8.3) เนื้อที่ปรับเปลี่ยน (ไร่)', '129');
INSERT INTO `sublist` VALUES ('121', null, '1', '8.1) ผลผลิต (ตัน)', '140');
INSERT INTO `sublist` VALUES ('122', null, '2', '8.2) เนื้อที่ลูก (ไร่)', '140');
INSERT INTO `sublist` VALUES ('123', null, '3', '8.3) เนื้อที่ปรับเปลี่ยน (ไร่)', '140');
INSERT INTO `sublist` VALUES ('124', null, '1', '8.1) ผลผลิต (ตัน)', '151');
INSERT INTO `sublist` VALUES ('125', null, '2', '8.2) เนื้อที่ลูก (ไร่)', '151');
INSERT INTO `sublist` VALUES ('126', null, '3', '8.3) เนื้อที่ปรับเปลี่ยน (ไร่)', '151');
INSERT INTO `sublist` VALUES ('127', '8392', '1', '9.1) ปีปัจจุบันปี 62', '9');
INSERT INTO `sublist` VALUES ('128', '8805', '2', '9.2) เฉลี่ย 5 ปี', '9');
INSERT INTO `sublist` VALUES ('129', '9154', '1', '10.1) ปีปัจจุบัน ปี 62', '10');
INSERT INTO `sublist` VALUES ('130', '9522', '2', '10.2) เฉลี่ย 5 ปี', '10');
INSERT INTO `sublist` VALUES ('131', null, '1', '11.1) ปีปัจจุบัน ปี 62', '11');
INSERT INTO `sublist` VALUES ('132', null, '2', '11.2) เฉลี่ย 5 ปี', '11');
INSERT INTO `sublist` VALUES ('133', '111', '1', 'ครัวเรือนเกษตร (ครัวเรือน) (61)', '1');
INSERT INTO `sublist` VALUES ('134', null, '1', 'มันสำปะหลัง', '156');
INSERT INTO `sublist` VALUES ('135', null, '1', 'ข้าวโพดเลี้ยงสัตว์', '157');
INSERT INTO `sublist` VALUES ('136', null, '3', '3) ปริมาณผลผลิต(ตัน)(62)', '3');
INSERT INTO `sublist` VALUES ('137', null, '4', '4) ความต้องการผลผลิต (ตัน)', '4');
INSERT INTO `sublist` VALUES ('138', null, '5', '5) การใช้ในประเทศ (ตัน)', '5');
INSERT INTO `sublist` VALUES ('139', null, '6', '6) การส่งออก (ตัน)(ม.ค. - มิ.ย.62)', '6');
INSERT INTO `sublist` VALUES ('140', null, '7', '7) สต๊อกผลผลิต(ตัน)', '7');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT 10,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `verification_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `password_reset_token` (`password_reset_token`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'teang', '2eZ0M1LtopwoOeM6s5wwdxQuCai2p3ky', '$2y$13$O4Bb4fh4abHFrKPVLTr8PO5RVx7Mnhg/354bc4YMZ2KH/rujOx/AS', null, 'teang22@gmail.com', '10', '1566539367', '1566539367', 'c6pk1XLzC4CTK39rTgrleS0JM-SNAJRt_1566539367');
