part of lunar_calendar_converter;

class Lunar {
  int _lunarYear;
  int lunarMonth;
  int lunarDay;
  int leapMonth;
  bool isLeap;


  Lunar({int lunarYear, int lunarMonth, int lunarDay,int leapMonth, bool isLeap}) {
    this.lunarYear = lunarYear;
    this.lunarMonth = lunarMonth;
    this.lunarDay = lunarDay;
    this.leapMonth = leapMonth;
    this.isLeap = isLeap == null ? false : isLeap;
  }

  set lunarYear(int v) {
    if (v == 0) {
      v = -1;
    }
    _lunarYear = v;
  }

  int get lunarYear => _lunarYear;


}