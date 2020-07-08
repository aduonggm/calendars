import 'dart:math';

import 'package:flutter_calendar/convert_solar_lunar/lunar_solar_converter.dart';


var PI = pi;

const canList = [
  "Canh",
  "Tân",
  "Nhâm",
  "Quý",
  "Giáp",
  "Ất",
  "Bính",
  "Đinh",
  "Mậu",
  "Kỉ"
];
const chiList = [
  "Thân",
  "Dậu",
  "Tuất",
  "Hợi",
  "Tý",
  "Sửu",
  "Dần",
  "Mão",
  "Thìn",
  "Tị",
  "Ngọ",
  "Mùi"
];

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

const CAN = ['Giáp', 'Ất', 'Bính', 'Đinh', 'Mậu', 'Kỷ', 'Canh', 'Tân', 'Nhâm', 'Quý'];
const CHI = ['Tý', 'Sửu', 'Dần', 'Mão', 'Thìn', 'Tỵ', 'Ngọ', 'Mùi', 'Thân', 'Dậu', 'Tuất', 'Hợi'];

const GIO_HD = ['110100101100', '001101001011', '110011010010', '101100110100', '001011001101', '010010110011'];


/* Discard the fractional part of a number, e.g., INT(3.2) = 3 */
INT(double d) {
  return d.toInt();
}

convertSolar2Lunar(int dd,int mm, int yy) {
  Solar solar = Solar(solarYear: yy, solarMonth: mm, solarDay: dd);
  Lunar lunar = LunarSolarConverter.solarToLunar(solar);
  return [lunar.lunarDay, lunar.lunarMonth, lunar.lunarYear, lunar.isLeap, lunar.leapMonth];
}

convertLunar2Solar(int lunarDay,int lunarMonth,int lunarYear,bool lunarLeap) {
  Lunar lunar = Lunar(lunarYear: lunarYear, lunarMonth: lunarMonth, lunarDay: lunarDay, isLeap: lunarLeap);
  Solar solar = LunarSolarConverter.lunarToSolar(lunar);
  return [solar.solarDay,solar.solarMonth,solar.solarYear];
}
/*convertLunar2Solar2(DateTime dateTime, bool lunarLeap){
  Lunar lunar = Lunar(lunarYear: dateTime.year, lunarMonth: dateTime.month, lunarDay: dateTime.day, isLeap: lunarLeap);
  Solar solar = LunarSolarConverter.lunarToSolar(lunar);
  DateTime _dateTime = DateTime.parse(formattedString)
  return solar;
}*/

getCanChiYear(int year) {
  var can = canList[year % 10];
  var chi = chiList[year % 12];
  return '$can $chi';
}

getCanChiMonth(int month, int year) {
  var chi = chiForMonthList[month - 1];
  var indexCan = 0;
  var can = canList[year % 10];

  if (can == "Giáp" || can == "Kỉ") {
    indexCan = 6;
  }
  if (can == "Ất" || can == "Canh") {
    indexCan = 8;
  }
  if (can == "Bính" || can == "Tân") {
    indexCan = 0;
  }
  if (can == "Đinh" || can == "Nhâm") {
    indexCan = 2;
  }
  if (can == "Mậu" || can == "Quý") {
    indexCan = 4;
  }
  return '${canList[(indexCan + month - 1) % 10]} ${chi}';
}

getYearCanChi(year) {
  return CAN[(year+6) % 10] + " " + CHI[(year+8) % 12];
}

getCanDay(jdn) {
  var dayName;
  dayName = CAN[(jdn + 9) % 10] + " " + CHI[(jdn+1)%12];
  return dayName;
}

jdn(dd, mm, yy) {
  var a = INT((14 - mm) / 12);
  var y = yy+4800-a;
  var m = mm+12*a-3;
  var jd = dd + INT((153*m+2)/5) + 365*y + INT(y/4) - INT(y/100) + INT(y/400) - 32045;
  return jd;
}

getGioHoangDao(jd) {
  var chiOfDay = (jd+1) % 12;
  var gioHD = GIO_HD[chiOfDay % 6]; // same values for Ty' (1) and Ngo. (6), for Suu and Mui etc.
  var ret = "";
  var count = 0;
  for (var i = 0; i < 12; i++) {
    if (gioHD.substring(i, i + 1) == '1') {
      ret += CHI[i];
      ret += ' (${{(i*2+23)%24}}-${{(i*2+1)%24}})';
      if (count++ < 5) ret += ', ';
      if (count == 3) ret += '\n';
    }
  }
  return ret;
}


getCanGio(canDay,can1,can2,can3,can4,can5 ){

    if(canDay=='Giáp' || canDay == 'Kỷ'){
      return can1;
    }
    if(canDay=='Ất' || canDay == 'Canh'){
      return can2;
    }
    if(canDay=='Bính' || canDay == 'Tân'){
      return can3;
    }
    if(canDay=='Đinh' || canDay == 'Nhâm'){
      return can4;
    }
    if(canDay=='Mậu' || canDay == 'Quý'){
      return can5;
    }
}

getCanChiGio(canDay,hh){
  if(hh==23 || hh==0){
   var canGio = getCanGio(canDay, 'Giáp', 'Bính', 'Mậu', 'Canh', 'Nhâm');
    return canGio+" "+ CHI[0];
  }if(hh==1 || hh==2){
    var canGio = getCanGio(canDay, 'Ất', 'Đinh', 'Kỷ', 'Tân', 'Quý');
    return canGio+" "+ CHI[1];
  }if(hh==3 || hh==4){
    var canGio = getCanGio(canDay, 'Bính', 'Mậu', 'Canh', 'Nhâm', 'Giáp');
    return canGio+" "+ CHI[2];
  }if(hh==5 || hh==6){
    var canGio = getCanGio(canDay, 'Đinh', 'Kỷ', 'Tân', 'Quý', 'Ất');
    return canGio+" "+ CHI[3];
  }if(hh==7 || hh==8){
    var canGio = getCanGio(canDay, 'Mậu', 'Canh', 'Nhâm', 'Giáp', 'Bính');
    return canGio+" "+CHI[4];
  }if(hh==9 || hh==10){
    var canGio = getCanGio(canDay, 'Kỷ', 'Tân', 'Quý', 'Ất', 'Đinh');
    return canGio+" "+CHI[5];
  }if(hh==11 || hh==12){
    var canGio = getCanGio(canDay, 'Canh', 'Nhâm', 'Giáp', 'Bính', 'Mậu');
    return canGio+" "+CHI[6];
  }if(hh==13 || hh==14){
    var canGio = getCanGio(canDay, 'Tân', 'Quý', 'Ất', 'Đinh', 'Kỷ');
    return canGio+" "+CHI[7];
  }if(hh==15 || hh==16){
    var canGio = getCanGio(canDay, 'Nhâm', 'Giáp', 'Bính', 'Mậu', 'Canh');
    return canGio+" "+CHI[8];
  }if(hh==17 || hh==18){
    var canGio = getCanGio(canDay, 'Quý', 'Ất', 'Đinh', 'Kỷ', 'Tân');
    return canGio+" "+CHI[9];
  }if(hh==19 || hh==20){
    var canGio = getCanGio(canDay, 'Giáp', 'Bính', 'Mậu', 'Canh', 'Nhâm');
    return canGio+" "+CHI[10];
  }if(hh==21 || hh==22){
    var canGio = getCanGio(canDay, 'Ất', 'Đinh', 'Kỷ', 'Tân', 'Quý');
    return canGio+" "+CHI[11];
  }
}