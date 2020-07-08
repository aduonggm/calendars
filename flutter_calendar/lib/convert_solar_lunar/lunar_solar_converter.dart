library lunar_calendar_converter;

import 'dart:math';

import 'package:flutter_calendar/utils/utils_calendar.dart';

part 'lunar.dart';
part 'solar.dart';

class LunarSolarConverter {
  static List<int> _lunar_month_days = [
    1887,
    0x1694,
    0x16aa,
    0x4ad5,
    0xab6,
    0xc4b7,
    0x4ae,
    0xa56,
    0xb52a,
    0x1d2a,
    0xd54,
    0x75aa,
    0x156a,
    0x1096d,
    0x95c,
    0x14ae,
    0xaa4d,
    0x1a4c,
    0x1b2a,
    0x8d55,
    0xad4,
    0x135a,
    0x495d,
    0x95c,
    0xd49b,
    0x149a,
    0x1a4a,
    0xbaa5,
    0x16a8,
    0x1ad4,
    0x52da,
    0x12b6,
    0xe937,
    0x92e,
    0x1496,
    0xb64b,
    0xd4a,
    0xda8,
    0x95b5,
    0x56c,
    0x12ae,
    0x492f,
    0x92e,
    0xcc96,
    0x1a94,
    0x1d4a,
    0xada9,
    0xb5a,
    0x56c,
    0x726e,
    0x125c,
    0xf92d,
    0x192a,
    0x1a94,
    0xdb4a,
    0x16aa,
    0xad4,
    0x955b,
    0x4ba,
    0x125a,
    0x592b,
    0x152a,
    0xf695,
    0xd94,
    0x16aa,
    0xaab5,
    0x9b4,
    0x14b6,
    0x6a57,
    0xa56,
    0x1152a,
    0x1d2a,
    0xd54,
    0xd5aa,
    0x156a,
    0x96c,
    0x94ae,
    0x14ae,
    0xa4c,
    0x7d26,
    0x1b2a,
    0xeb55,
    0xad4,
    0x12da,
    0xa95d,
    0x95a,
    0x149a,
    0x9a4d,
    0x1a4a,
    0x11aa5,
    0x16a8,
    0x16d4,
    0xd2da,
    0x12b6,
    0x936,
    0x9497,
    0x1496,
    0x1564b,
    0xd4a,
    0xda8,
    0xd5b4,
    0x156c,
    0x12ae,
    0xa92f,
    0x92e,
    0xc96,
    0x6d4a,
    0x1d4a,
    0x10d65,
    0xb58,
    0x156c,
    0xb26d,
    0x125c,
    0x192c,
    0x9a95,
    0x1a94,
    0x1b4a,
    0x4b55,
    0xad4,
    0xf55b,
    0x4ba,
    0x125a,
    0xb92b,
    0x152a,
    0x1694,
    0x96aa,
    0x15aa,
    0x12ab5,
    0x974,
    0x14b6,
    0xca57,
    0xa56,
    0x1526,
    0x8e95,
    0xd54,
    0x15aa,
    0x49b5,
    0x96c,
    0xd4ae,
    0x149c,
    0x1a4c,
    0xbd26,
    0x1aa6,
    0xb54,
    0x6d6a,
    0x12da,
    0x1695d,
    0x95a,
    0x149a,
    0xda4b,
    0x1a4a,
    0x1aa4,
    0xbb54,
    0x16b4,
    0xada,
    0x495b,
    0x936,
    0xf497,
    0x1496,
    0x154a,
    0xb6a5,
    0xda4,
    0x15b4,
    0x6ab6,
    0x126e,
    0x1092f,
    0x92e,
    0xc96,
    0xcd4a,
    0x1d4a,
    0xd64,
    0x956c,
    0x155c,
    0x125c,
    0x792e,
    0x192c,
    0xfa95,
    0x1a94,
    0x1b4a,
    0xab55,
    0xad4,
    0x14da,
    0x8a5d,
    0xa5a,
    0x1152b,
    0x152a,
    0x1694,
    0xd6aa,
    0x15aa,
    0xab4,
    0x94ba,
    0x14b6,
    0xa56,
    0x7527,
    0xd26,
    0xee53,
    0xd54,
    0x15aa,
    0xa9b5,
    0x96c,
    0x14ae,
    0x8a4e,
    0x1a4c,
    0x11d26,
    0x1aa4,
    0x1b54,
    0xcd6a,
    0xada,
    0x95c,
    0x949d,
    0x149a,
    0x1a2a,
    0x5b25,
    0x1aa4,
    0xfb52,
    0x16b4,
    0xaba,
    0xa95b,
    0x936,
    0x1496,
    0x9a4b,
    0x154a,
    0x136a5,
    0xda4,
    0x15ac
  ];

  static List<int> _solar_1_1 = [
    1887,
    0xec04c,
    0xec23f,
    0xec435,
    0xec649,
    0xec83e,
    0xeca51,
    0xecc46,
    0xece3a,
    0xed04d,
    0xed242,
    0xed436,
    0xed64a,
    0xed83f,
    0xeda53,
    0xedc48,
    0xede3d,
    0xee050,
    0xee244,
    0xee439,
    0xee64d,
    0xee842,
    0xeea36,
    0xeec4a,
    0xeee3e,
    0xef052,
    0xef246,
    0xef43a,
    0xef64e,
    0xef843,
    0xefa37,
    0xefc4b,
    0xefe41,
    0xf0054,
    0xf0248,
    0xf043c,
    0xf0650,
    0xf0845,
    0xf0a38,
    0xf0c4d,
    0xf0e42,
    0xf1037,
    0xf124a,
    0xf143e,
    0xf1651,
    0xf1846,
    0xf1a3a,
    0xf1c4e,
    0xf1e44,
    0xf2038,
    0xf224b,
    0xf243f,
    0xf2653,
    0xf2848,
    0xf2a3b,
    0xf2c4f,
    0xf2e45,
    0xf3039,
    0xf324d,
    0xf3442,
    0xf3636,
    0xf384a,
    0xf3a3d,
    0xf3c51,
    0xf3e46,
    0xf403b,
    0xf424e,
    0xf4443,
    0xf4638,
    0xf484c,
    0xf4a3f,
    0xf4c52,
    0xf4e48,
    0xf503c,
    0xf524f,
    0xf5445,
    0xf5639,
    0xf584d,
    0xf5a42,
    0xf5c35,
    0xf5e49,
    0xf603e,
    0xf6251,
    0xf6446,
    0xf663b,
    0xf684f,
    0xf6a43,
    0xf6c37,
    0xf6e4b,
    0xf703f,
    0xf7252,
    0xf7447,
    0xf763c,
    0xf7850,
    0xf7a45,
    0xf7c39,
    0xf7e4d,
    0xf8042,
    0xf8254,
    0xf8449,
    0xf863d,
    0xf8851,
    0xf8a46,
    0xf8c3b,
    0xf8e4f,
    0xf9044,
    0xf9237,
    0xf944a,
    0xf963f,
    0xf9853,
    0xf9a47,
    0xf9c3c,
    0xf9e50,
    0xfa045,
    0xfa238,
    0xfa44c,
    0xfa641,
    0xfa836,
    0xfaa49,
    0xfac3d,
    0xfae52,
    0xfb047,
    0xfb23a,
    0xfb44e,
    0xfb643,
    0xfb837,
    0xfba4a,
    0xfbc3f,
    0xfbe53,
    0xfc048,
    0xfc23c,
    0xfc450,
    0xfc645,
    0xfc839,
    0xfca4c,
    0xfcc41,
    0xfce36,
    0xfd04a,
    0xfd23d,
    0xfd451,
    0xfd646,
    0xfd83a,
    0xfda4d,
    0xfdc43,
    0xfde37,
    0xfe04b,
    0xfe23f,
    0xfe453,
    0xfe648,
    0xfe83c,
    0xfea4f,
    0xfec44,
    0xfee38,
    0xff04c,
    0xff241,
    0xff436,
    0xff64a,
    0xff83e,
    0xffa51,
    0xffc46,
    0xffe3a,
    0x10004e,
    0x100242,
    0x100437,
    0x10064b,
    0x100841,
    0x100a53,
    0x100c48,
    0x100e3c,
    0x10104f,
    0x101244,
    0x101438,
    0x10164c,
    0x101842,
    0x101a35,
    0x101c49,
    0x101e3d,
    0x102051,
    0x102245,
    0x10243a,
    0x10264e,
    0x102843,
    0x102a37,
    0x102c4b,
    0x102e3f,
    0x103053,
    0x103247,
    0x10343b,
    0x10364f,
    0x103845,
    0x103a38,
    0x103c4c,
    0x103e42,
    0x104036,
    0x104249,
    0x10443d,
    0x104651,
    0x104846,
    0x104a3a,
    0x104c4e,
    0x104e43,
    0x105038,
    0x10524a,
    0x10543e,
    0x105652,
    0x105847,
    0x105a3b,
    0x105c4f,
    0x105e45,
    0x106039,
    0x10624c,
    0x106441,
    0x106635,
    0x106849,
    0x106a3d,
    0x106c51,
    0x106e47,
    0x10703c,
    0x10724f,
    0x107444,
    0x107638,
    0x10784c,
    0x107a3f,
    0x107c53,
    0x107e48
  ];

  static int _getBitInt(int data, int length, int shift) {
    return (data & (((1 << length) - 1) << shift)) >> shift;
  }

  //早于 1582 年 10 月的日期可能不准确
  static int _solarToInt(int y, int m, int d) {
    m = (m + 9) % 12;
    y = y - (m / 10).floor();
    return 365 * y + (y / 4).floor() - (y / 100).floor() + (y / 400).floor() + ((m * 306 + 5) / 10).floor() + (d - 1);
  }

  static Solar _solarFromInt(int data) {
    int y = ((10000 * data + 14780) / 3652425).floor();
    int ddd = data - (365 * y + (y / 4).floor() - (y / 100).floor() + (y / 400).floor());

    if (ddd < 0) {
      y--;
      ddd = data - (365 * y + (y / 4).floor() - (y / 100).floor() + (y / 400).floor());
    }

    int mi = ((100 * ddd + 52) / 3060).floor();
    int mm = (mi + 2) % 12 + 1;
    y = y + ((mi + 2) / 12).floor();
    int dd = ddd - ((mi * 306 + 5) / 10).floor() + 1;

    return Solar(solarYear: y, solarMonth: mm, solarDay: dd);
  }

  static Solar lunarToSolar(Lunar lunar) {
    int days = _lunar_month_days[lunar.lunarYear - _lunar_month_days[0]];
    int leap = _getBitInt(days, 4, 13);
    int offset = 0;
    int loop_end = leap;

    if (!lunar.isLeap) {
      if (lunar.lunarMonth <= leap || leap == 0) {
        loop_end = lunar.lunarMonth - 1;
      } else {
        loop_end = lunar.lunarMonth;
      }
    }

    for (int i = 0; i < loop_end; i++) {
      offset += (_getBitInt(days, 1, 12 - i) == 1 ? 30 : 29);
    }

    offset += lunar.lunarDay;

    int solar11 = _solar_1_1[lunar.lunarYear - _solar_1_1[0]];

    int y = _getBitInt(solar11, 12, 9);
    int m = _getBitInt(solar11, 4, 5);
    int d = _getBitInt(solar11, 5, 0);

    return _solarFromInt(_solarToInt(y, m, d) + offset - 1);
  }

  static Lunar solarToLunar(Solar solar) {
    Lunar lunar = Lunar();
    int index = solar.solarYear - _solar_1_1[0];
    int data = (solar.solarYear << 9) | (solar.solarMonth << 5) | (solar.solarDay);
    int solar11 = 0;

    if (_solar_1_1[index] > data) {
      index--;
    }
    solar11 = _solar_1_1[index];
    int y = _getBitInt(solar11, 12, 9);
    int m = _getBitInt(solar11, 4, 5);
    int d = _getBitInt(solar11, 5, 0);
    int offset = _solarToInt(solar.solarYear, solar.solarMonth, solar.solarDay) - _solarToInt(y, m, d);
    int days = _lunar_month_days[index];
    int leap = _getBitInt(days, 4, 13);

    int lunarY = index + _solar_1_1[0];
    int lunarM = 1;
    int lunarD = 1;
    offset += 1;

    for (int i = 0; i < 13; i++) {
      int dm = _getBitInt(days, 1, 12 - i) == 1 ? 30 : 29;

      if (offset > dm) {
        lunarM++;
        offset -= dm;
      } else {
        break;
      }
    }
    lunarD = offset;
    lunar.lunarYear = lunarY;
    lunar.lunarMonth = lunarM;
    lunar.leapMonth = leap;
    lunar.isLeap = false;
    if (leap != 0 && lunarM > leap) {
      lunar.lunarMonth = lunarM - 1;

      if (lunarM == leap + 1) {
        lunar.isLeap = true;
      }
    }
    lunar.lunarDay = lunarD;
    return lunar;
  }
}

INT(double d) {
  return d.toInt();
}

getTietKhi(DateTime dateTime, int timeZone) {
  var a, y, m, JDN ,T,L0 ,M, C,lambda, theta;
  a = (14 - dateTime.month) / 12;
  y = dateTime.year + 4800 - a;
  m = dateTime.month + 12 * a - 3;
  JDN = dateTime.day +
      (153 * m + 2) / 5 +
      365 * y +
      y / 4 -
      y / 100 +
      y / 400 -
      32045;

  double JD = JDN +
      (dateTime.hour - 12) / 24 +
      dateTime.minute / 1440 +
      dateTime.second / 86400;


  T = (JD - 2451545.0) / 36525;

//độ
  L0 = 280.46645 + 36000.76983*T + 0.0003032*T*T;
  M = 357.52910 + 35999.05030*T - 0.0001559*T*T - 0.00000048*T*T*T;
  C = (1.914600 - 0.004817*T - 0.000014*T*T) * sin(M*pi/180) + (0.01993 - 0.000101*T) * sin(2*M*pi/180) + 0.000290 * sin (3*M*pi/180);
  theta = L0 + C;
  lambda = theta - 0.00569 - 0.00478 * sin(125.04*pi/180 - 1934.136*T*pi/180);

  int sss = lambda~/360;

  int xxx = 360* sss;

  int aaa= (lambda - xxx).toInt() ;

//  lambda = lambda - (360 * lambda/360);
//  print(lambda - (360 * lambda/360));



}


String getCanThang(int mm, int yy) {
  int tam = (yy * 12 + mm + 3) % 10;
  return CAN[tam].toString();
//return ((Can)(tam)).ToString();
}

String getChiThang(int mm) // mm la thang Am lich duoc tinh truoc do
{
  int tam = (mm + 1) % 12; // Thang 11 la thang Ty, thang 12 la thang Suu
  return CHI[tam].toString();
//return ((Chi)(tam)).ToString();
}

String getChiNgay(int dd, int mm, int yy) {
  int jd = jdFromDate(dd, mm, yy);
  return CHI[(jd + 1) % 12].toString();
//return ((Chi)((jd + 1) % 12)).ToString();
}

String getCanNgay(int dd, int mm, int yy) {
  int jd = jdFromDate(dd, mm, yy);

  return CAN[(jd + 9) % 10].toString();
// return ((Can)((jd + 9) % 10)).ToString();
}

String getCanNam(int yy) {
  return CAN[(yy + 6) % 10].toString();
// return ((Can)((yy + 6) % 10)).ToString();
}

String getChiNam(int yy) {
  return CHI[(yy + 8) % 12].toString();
//return ((Chi)((yy + 8) % 12)).ToString();
}

List<int> getGioHoangDao(String chi) {
  int index = CHI.indexOf(chi);
  int number = 0;
  switch (index % 6) {
    case 0:
      number = 9;
      break;
    case 1:
      number = 11;
      break;
    case 2:
      number = 1;
      break;
    case 3:
      number = 3;
      break;
    case 4:
      number = 5;
      break;
    case 5:
      number = 7;
      break;
  }

  List<String> temp = [];
  for (int i = number - 1; i < CHI.length; i++) {
    temp.add(CHI[i]);
  }
  for (int i = 0; i < number - 1; i++) {
    temp.add(CHI[i]);
  }
  List<int> finalsList = [];
  for (int i = 0; i < CHI.length; i++) {
    if (CHI[i] == temp[0] ||
        CHI[i] == temp[1] ||
        CHI[i] == temp[4] ||
        CHI[i] == temp[5] ||
        CHI[i] == temp[7] ||
        CHI[i] == temp[10]) finalsList.add(i);
  }

  return finalsList;
}

String gioHoangDaoInt(int gio) {
  if (gio == 0) {
    return '23h - 1h';
  } else {
    return '${gio * 2 - 1}h - ${gio * 2 + 1}h';
  }
}

String getNameOfHour(DateTime dateTime) {
  int index = CAN.indexOf(getCanNgay(dateTime.day, dateTime.month, dateTime.year));
  int startindex = -1;
  switch (index % 5) {
    case 0:
      startindex = 0;
      break;
    case 1:
      startindex = 2;
      break;
    case 2:
      startindex = 4;
      break;
    case 3:
      startindex = 6;
      break;
    case 4:
      startindex = 8;
      break;
  }
//sắp xếp lại
  List<String> temp = [];
  for (int i = startindex; i < CAN.length; i++) {
    temp.add(CAN[i]);
  }
  for (int i = 0; i < startindex; i++) {
    temp.add(CAN[i]);
  }

  List<String> CanOfHour = [];
  for (int i = 0; i < CHI.length; i++) {
    int x = i;
    if (x >= CAN.length) {
      x = i - CAN.length;
    }
    CanOfHour.add(temp[x]);
  }

  int indexx = (DateTime.now().hour + 1) ~/ 2;
  if (indexx >= 12) {
    indexx = 0;
  }

  return '${CanOfHour[indexx]} ${CHI[indexx]}';
}

int getNgayHoangDao( int mm , String ChiOfDay) {


  //get name of day
  // get start index
  int number = (mm*2) - 2;
  if (mm > 6) {
    number = (mm - 6) * 2 - 2;
  }
  //sort list
  List<String> temp = [];
  for (int i = number; i < CHI.length; i++) {
    temp.add(CHI[i]);
  }
  for (int i = 0; i < number; i++) {
    temp.add(CHI[i]);
  }




  List<String> hoangDaoList = [];
  List<String> hacDaoList = [];
  for (String s in CHI) {
    if (s == temp[0] || s == temp[1] || s == temp[5] || s == temp[7])
      hoangDaoList.add(s);
    if (s == temp[3] || s == temp[6] || s == temp[9] || s == temp[11])
      hacDaoList.add(s);
  }

  if(hoangDaoList.contains(ChiOfDay))
    return 1;

  if(hacDaoList.contains(ChiOfDay))
    return -1;


  return 0;


}
jdFromDate(dd, mm, yy) {
  var a, y, m, jd;
  a = INT((14 - mm) / 12);
  y = yy + 4800 - a;
  m = mm + 12 * a - 3;
  jd = dd + INT((153 * m + 2) / 5) + 365 * y + INT(y / 4) - INT(y / 100) +
      INT(y / 400) - 32045;
  if (jd < 2299161) {
    jd = dd + INT((153 * m + 2) / 5) + 365 * y + INT(y / 4) - 32083;
  }
  return jd;
}
/* Convert a Julian day number to day/month/year. Parameter jd is an integer */
jdToDate(jd) {
  var a, b, c, d, e, m, day, month, year;
  if (jd > 2299160) { // After 5/10/1582, Gregorian calendar
    a = jd + 32044;
    b = INT((4 * a + 3) / 146097);
    c = a - INT((b * 146097) / 4);
  } else {
    b = 0;
    c = jd + 32082;
  }
  d = INT((4 * c + 3) / 1461);
  e = c - INT((1461 * d) / 4);
  m = INT((5 * e + 2) / 153);
  day = e - INT((153 * m + 2) / 5) + 1;
  month = m + 3 - 12 * INT(m / 10);
  year = b * 100 + d - 4800 + INT(m / 10);
  return [day, month, year];
}

getCanDay(jdn) {
  var dayName, monthName, yearName;
  dayName = CAN[(jdn + 9) % 10] + " " + CHI[(jdn+1)%12];
  return dayName;
}
