import 'dart:math';

import 'package:flutter_calendar/modal/tiet_khi.dart';



enum Thu { CN, T2, T3, T4, T5, T6, T7 }

List<TietKhiObject> listTietKhi = [
  TietKhiObject(name: 'Tiểu hàn', time: '6/1', icon: 'tieuhan'),
  TietKhiObject(name: 'Đại hàn', time: '21/1', icon: 'daihan'),
  TietKhiObject(name: 'Lập xuân', time: '4/2', icon: 'lapxuan'),
  TietKhiObject(name: 'Vũ thủy', time: '19/2', icon: 'vuthuy'),
  TietKhiObject(name: 'Kinh trập', time: '5/3', icon: 'kinhtrap'),
  TietKhiObject(name: 'Xuân phân', time: '21/3', icon: 'xuanphan'),
  TietKhiObject(name: 'Thanh minh', time: '5/4', icon: 'thanhminh'),
  TietKhiObject(name: 'Cốc Vũ', time: '20/4', icon: 'cocvu'),
  TietKhiObject(name: 'Lập Hạ', time: '6/5', icon: 'lapha'),
  TietKhiObject(name: 'Tiểu mãn', time: '21/5', icon: 'tieuman'),
  TietKhiObject(name: 'Mạng chủng', time: '6/6', icon: 'mangchung'),
  TietKhiObject(name: 'Hạ chí', time: '21/6', icon: 'hachi'),
  TietKhiObject(name: 'Tiểu thử', time: '7/7', icon: 'tieuthu'),
  TietKhiObject(name: 'Đại thử', time: '27/7', icon: 'daithu'),
  TietKhiObject(name: 'Lập thu', time: '7/8', icon: 'lapthu'),
  TietKhiObject(name: 'Xử thử', time: '23/8', icon: 'xuthu'),
  TietKhiObject(name: 'Bạch lộ', time: '8/9', icon: 'bachlo'),
  TietKhiObject(name: 'Thu phân', time: '23/9', icon: 'thuphan'),
  TietKhiObject(name: 'Hàn lộ', time: '8/10', icon: 'hanlo'),
  TietKhiObject(name: 'Sương giáng', time: '23/10', icon: 'suonggiang'),
  TietKhiObject(name: 'Lập đông', time: '7/11', icon: 'lapdong'),
  TietKhiObject(name: 'Tiểu tuyết', time: '21/11', icon: 'tieutuyet'),
  TietKhiObject(name: 'Đại tuyết', time: '7/12', icon: 'daituyet'),
  TietKhiObject(name: 'Đông chí', time: '22/12', icon: 'dongchi'),
];
List<TietKhiObject> listTrucTru = [
  TietKhiObject(name: 'Tiểu hàn', time: '6/1', icon: 'tieuhan',startTrucKien: 1),
  TietKhiObject(name: 'Lập xuân', time: '4/2', icon: 'lapxuan',startTrucKien: 2),
  TietKhiObject(name: 'Kinh trập', time: '5/3', icon: 'kinhtrap',startTrucKien:3),
  TietKhiObject(name: 'Thanh minh', time: '5/4', icon: 'thanhminh',startTrucKien:4),
  TietKhiObject(name: 'Lập Hạ', time: '6/5', icon: 'lapha',startTrucKien:5),
  TietKhiObject(name: 'Mạng chủng', time: '6/6', icon: 'mangchung',startTrucKien:6),
  TietKhiObject(name: 'Tiểu thử', time: '7/7', icon: 'tieuthu',startTrucKien:7),
  TietKhiObject(name: 'Lập thu', time: '7/8', icon: 'lapthu',startTrucKien:8),
  TietKhiObject(name: 'Bạch lộ', time: '8/9', icon: 'bachlo',startTrucKien:9),
  TietKhiObject(name: 'Hàn lộ', time: '8/10', icon: 'hanlo',startTrucKien:10),
  TietKhiObject(name: 'Lập đông', time: '7/11', icon: 'lapdong',startTrucKien:11),
  TietKhiObject(name: 'Đại tuyết', time: '7/12', icon: 'daituyet',startTrucKien: 0),
];

var PI = pi;
const chiForMonthList = [
  "Dần",
  "Mão",
  "Thìn",
  "Tị",
  "Ngọ",
  "Mùi",
  "Thân",
  "Dậu",
  "Tuất",
  "Hợi",
  "Tý",
  "Sửu",
];

const CAN = [
  'Giáp',
  'Ất',
  'Bính',
  'Đinh',
  'Mậu',
  'Kỷ',
  'Canh',
  'Tân',
  'Nhâm',
  'Quý'
];
const CHI = [
  'Tý',
  'Sửu',
  'Dần',
  'Mão',
  'Thìn',
  'Tỵ',
  'Ngọ',
  'Mùi',
  'Thân',
  'Dậu',
  'Tuất',
  'Hợi'
];

const IconCHI = [
  'ty',
  'suu',
  'dan',
  'mao',
  'thin',
  'ran',
  'ngo',
  'mui',
  'than',
  'dau',
  'tuat',
  'hoi'
];

String openTag = '<font style =\"font-family: sans-serif; font-weight: 500;\" color=';
String closeTag = '</font>';
