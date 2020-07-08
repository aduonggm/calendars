import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_calendar/convert_solar_lunar/lunar_solar_converter.dart';
import 'package:flutter_calendar/cupertino_date_picker/src/date_time_formatter.dart';
import 'package:flutter_calendar/cupertino_date_picker/src/i18n/date_picker_i18n.dart';

import '../date_picker_constants.dart';
import '../date_picker_theme.dart';
class DatePickerLunar extends StatefulWidget {
 final String dateFormat;
 final DateTimePickerLocale locale;
 final DateTimePickerTheme pickerTheme;
 final DateVoidCallback onCancel;
 final DateValueCallback onChange;
 Function(int,int,int,bool) onConfirm;
 final onMonthChangeStartWithFirstDate;
 DateTime minDateTime, maxDateTime, initialDateTime;
 DatePickerLunar({Key key, this.dateFormat,
   this.minDateTime,
   this.maxDateTime,
   this.initialDateTime,
   this.locale,
   this.pickerTheme,
   this.onCancel,
   this.onChange,
   this.onConfirm,
   this.onMonthChangeStartWithFirstDate}) : super(key: key);
  @override
  _DatePickerLunarState createState() => _DatePickerLunarState(
      this.minDateTime, this.maxDateTime, this.initialDateTime
  );

}

class _DatePickerLunarState extends State<DatePickerLunar> {
  Lunar lunar =  new Lunar();
  Solar solar = new Solar();

  Map<String, List<int>> _valueSolarLunarRangeMap;
  DateTime _minDateTime, _maxDateTime;
  Map<String, FixedExtentScrollController>  _scrollCtrlMapLunar;
  FixedExtentScrollController _lunarYearScrollCtrl, _lunarMonthScrollCtrl, _lunarDayScrollCtrl;
  List<int> _solarLunarRange, _yearLunarRange, _monthLunarRange, _dayLunarRange;
  int   _currLunarYear, _currLunarMonth, _currLunarDay;

  bool _isChangeDateRange = false;
  bool _isLeapMonth = false;
  bool _isChangeToLeap = false;
  bool _isChanged = false;

  _DatePickerLunarState(DateTime minDateTime, DateTime maxDateTime, DateTime initialDateTime ){
    DateTime initDateTime = initialDateTime ?? DateTime.now();
    solar = Solar(solarYear: initDateTime.year,solarMonth: initDateTime.month, solarDay: initDateTime.day);
    lunar = LunarSolarConverter.solarToLunar(solar);
    this._currLunarYear = lunar.lunarYear;
    this._currLunarMonth = lunar.lunarMonth;
    this._currLunarDay = lunar.lunarDay;

    this._minDateTime = minDateTime ?? DateTime.parse(DATE_PICKER_MIN_DATETIME);
    this._maxDateTime = maxDateTime ?? DateTime.parse(DATE_PICKER_MAX_DATETIME);

    this._yearLunarRange = _calcYearRange();
    this._currLunarYear = min(max(_minDateTime.year, _currLunarYear), _maxDateTime.year);

    this._monthLunarRange = _calcLunarMonthRange();
    this._currLunarMonth = min(max(_monthLunarRange.first, _currLunarMonth), _monthLunarRange.last);

    this._dayLunarRange = _calcLunarDayRange();
    this._currLunarDay = min(max(_dayLunarRange.first, _currLunarDay), _dayLunarRange.last);


    _lunarYearScrollCtrl =
        FixedExtentScrollController(initialItem: _currLunarYear - _yearLunarRange.first);
    _lunarMonthScrollCtrl =
        FixedExtentScrollController(initialItem:lunar.leapMonth==0?(_currLunarMonth - _monthLunarRange.first):
                                                                   _currLunarMonth>lunar.leapMonth||lunar.isLeap?_currLunarMonth: _currLunarMonth - _monthLunarRange.first);
    _lunarDayScrollCtrl =
        FixedExtentScrollController(initialItem: _currLunarDay - _dayLunarRange.first);

    _scrollCtrlMapLunar = {
      'y': _lunarYearScrollCtrl,
      'M': _lunarMonthScrollCtrl,
      'd': _lunarDayScrollCtrl
    };
    _valueSolarLunarRangeMap = {'SL':_solarLunarRange, 'y': _yearLunarRange, 'M': _monthLunarRange, 'd': _dayLunarRange};
  }

  List<int> _calcYearRange() {
    print(_minDateTime.year.toString() + ", " + _maxDateTime.year.toString());
    return [_minDateTime.year, _maxDateTime.year];
  }

  List<int> _calcLunarMonthRange() {
    int minMonth = 1;
    int maxMonth;
    if(lunar.leapMonth!=0){
      maxMonth =13;
    }else{
      maxMonth=12;
    }

    int minYear = _minDateTime.year;
    int maxYear = _maxDateTime.year;
    if (minYear == _currLunarYear) {
      // selected minimum year, limit month range
      minMonth = _minDateTime.month;
    }
    if (maxYear == _currLunarYear) {
      // selected maximum year, limit month range
      maxMonth = _maxDateTime.month;
    }
    return [minMonth, maxMonth];
  }

  List<int> _calcLunarDayRange({currMonth}) {
    int minDay = 1, maxDay = _calcDayCountOfLunarMonth(lunar);
    int minYear = _minDateTime.year;
    int maxYear = _maxDateTime.year;
    int minMonth = _minDateTime.month;
    int maxMonth = _maxDateTime.month;
    if (currMonth == null) {
      currMonth = _currLunarMonth;
    }
    if (minYear == _currLunarYear && minMonth == currMonth) {
      // selected minimum year and month, limit day range
      minDay = _minDateTime.day;
    }
    if (maxYear == _currLunarYear && maxMonth == currMonth) {
      // selected maximum year and month, limit day range
      maxDay = _maxDateTime.day;
    }
    return [minDay, maxDay];
  }
  int _calcDayCountOfLunarMonth(Lunar lunar){
    switch(_currLunarMonth){
      case 1:
      return  _lengthOfMonth(lunar, _currLunarMonth);
        break;
      case 2:
        return _lengthOfMonth(lunar, _currLunarMonth);
        break;
      case 3:
        return _lengthOfMonth(lunar, _currLunarMonth);
        break;
      case 4:
        return _lengthOfMonth(lunar, _currLunarMonth);
        break;
      case 5:
        return _lengthOfMonth(lunar, _currLunarMonth);
        break;
      case 6:
        return _lengthOfMonth(lunar, _currLunarMonth);
        break;
      case 7:
        return _lengthOfMonth(lunar, _currLunarMonth);
        break;
      case 8:
        return _lengthOfMonth(lunar, _currLunarMonth);
        break;
      case 9:
        return _lengthOfMonth(lunar, _currLunarMonth);
        break;
      case 10:
        return _lengthOfMonth(lunar, _currLunarMonth);
        break;
      case 11:
        return _lengthOfMonth(lunar, _currLunarMonth);
        break;
      case 12:
        return _lengthOfMonth(lunar, _currLunarMonth);
        break;
      case 13:
        return _lengthOfMonth(lunar, _currLunarMonth);
        break;

    }
  }

  _lengthOfMonth(Lunar lunar, int _currMonth){
    if(_isChanged&&lunar.leapMonth!=0 && lunar.leapMonth==_currMonth-1){
      _isChangeToLeap = true;
      return _limitDayOfLunarMonth(lunar,_currMonth,true);
    }
    if(lunar.leapMonth<_currMonth && lunar.leapMonth!=_currMonth-1 && lunar.leapMonth!=0){
      _isChangeToLeap = false;
      return _limitDayOfLunarMonth(lunar,_currMonth-1,false);
    }
    _isChangeToLeap = false;
    return _limitDayOfLunarMonth(lunar,_currMonth,false);
  }
  int _limitDayOfLunarMonth(Lunar lunar, int _currMonth,bool isLeap){
    Lunar  lunar1 = Lunar(lunarDay: 31,lunarMonth: _currMonth,lunarYear: lunar.lunarYear,isLeap: isLeap);
    Solar solar = LunarSolarConverter.lunarToSolar(lunar1);
    Lunar lunar2 = LunarSolarConverter.solarToLunar(solar);
    if(lunar2.lunarDay==1){
      return 30;
    }
    return 29;
  }
  List<int> _findPickerItemRangeLunar(String format) {
    List<int> valueRange;
    _valueSolarLunarRangeMap.forEach((key, value) {
      if (format.contains(key)) {
        valueRange = value;
      }
    });
    return valueRange;
  }
  FixedExtentScrollController _findScrollCtrlLunar(String format) {
    FixedExtentScrollController scrollCtrl;
    _scrollCtrlMapLunar.forEach((key, value) {
      if (format.contains(key)) {
        scrollCtrl = value;
      }
    });
    return scrollCtrl;
  }
  void _changeLunarDaySelection(int index) {
    int dayOfMonth = _dayLunarRange.first + index;
    if (_currLunarDay != dayOfMonth) {
      _currLunarDay = dayOfMonth;
      _onSelectedLunarChange();
      widget.onConfirm(_currLunarYear,
          lunar.leapMonth==0?_currLunarMonth:
          lunar.leapMonth<_currLunarMonth&&_isChanged?_currLunarMonth-1:_currLunarMonth,
          _currLunarDay,
          _isChangeToLeap);
    }
  }
  void _onSelectedLunarChange() {
    if (widget.onChange != null) {
      Lunar lunar = Lunar(lunarYear:_currLunarYear, lunarMonth: _currLunarMonth, lunarDay:  _currLunarDay, isLeap: _isLeapMonth);
      Solar solar = LunarSolarConverter.lunarToSolar(lunar);
      DateTime dateTime = DateTime(solar.solarYear, solar.solarMonth, solar.solarDay);
      widget.onChange(dateTime, _calcSelectIndexListLunar());
    }
  }
  List<int> _calcSelectIndexListLunar() {
    int yearIndex = _currLunarYear - _minDateTime.year;
    int monthIndex = _currLunarMonth - _monthLunarRange.first;
    int dayIndex = _currLunarDay - _dayLunarRange.first;
    return [yearIndex, monthIndex, dayIndex];
  }
  void _changeLunarMonthSelection(int index) {
    int month = _monthLunarRange.first + index;
    if (_currLunarMonth != month) {
      _currLunarMonth = month;
      _changLunarDateRange();
      _onSelectedLunarChange();
      widget.onConfirm(_currLunarYear,
          lunar.leapMonth==0?_currLunarMonth:
          lunar.leapMonth<_currLunarMonth?_currLunarMonth-1:_currLunarMonth,
          _currLunarDay,
          _isChangeToLeap);
    }
  }
  void _changeLunarYearSelection(int index) {
    int year = _yearLunarRange.first + index;
    if (_currLunarYear != year) {
      setState(() {
        _currLunarYear = year;
        solar = Solar(solarYear: _currLunarYear, solarMonth: 5,solarDay: 5);
        lunar = LunarSolarConverter.solarToLunar(solar);
      });

      _changLunarDateRange();
      _onSelectedLunarChange();
      widget.onConfirm(_currLunarYear,
          lunar.leapMonth==0?_currLunarMonth:
          lunar.leapMonth<_currLunarMonth?_currLunarMonth-1:_currLunarMonth,
          _currLunarDay,
          _isChangeToLeap);
    }
  }
  void _changLunarDateRange(){
    if (_isChangeDateRange) {
      return;
    }
    _isChangeDateRange = true;

    _isChanged = true;

    List<int> monthRange = _calcLunarMonthRange();
    bool monthRangeChanged = _monthLunarRange.first != monthRange.first ||
        _monthLunarRange.last != monthRange.last;
    if (monthRangeChanged) {
      // selected year changed
      _currLunarMonth = max(min(_currLunarMonth, monthRange.last), monthRange.first);
    }
    List<int> dayRange = _calcLunarDayRange();
    bool dayRangeChanged =
        _dayLunarRange.first != dayRange.first || _dayLunarRange.last != dayRange.last;
    if (dayRangeChanged) {
      // day range changed, need limit the value of selected day
      if (!widget.onMonthChangeStartWithFirstDate) {
        max(min(_currLunarDay, dayRange.last), dayRange.first);
      } else {
        _currLunarDay = dayRange.first;
      }
    }
    setState(() {
      _monthLunarRange = monthRange;
      _dayLunarRange = dayRange;
      _valueSolarLunarRangeMap['M'] = monthRange;
      _valueSolarLunarRangeMap['d'] = dayRange;
    });
    if (monthRangeChanged) {
      // CupertinoPicker refresh data not working (https://github.com/flutter/flutter/issues/22999)
      int currMonth = _currLunarMonth;
      _lunarMonthScrollCtrl.jumpToItem(monthRange.last - monthRange.first);
      if (currMonth < monthRange.last) {
        _lunarMonthScrollCtrl.jumpToItem(currMonth - monthRange.first);
      }
    }
    if (dayRangeChanged) {
      // CupertinoPicker refresh data not working (https://github.com/flutter/flutter/issues/22999)
      int currDay = _currLunarDay;
      _lunarDayScrollCtrl.jumpToItem(dayRange.last - dayRange.first);
      if (currDay < dayRange.last) {
        _lunarDayScrollCtrl.jumpToItem(currDay - dayRange.first);
      }
    }
    _isChangeDateRange = false;
  }
  @override
  Widget build(BuildContext context) {
    return _renderDatePickerLunarWidget();
  }
  Widget _renderDatePickerLunarWidget() {
    List<Widget> pickers = List<Widget>();
    List<String> formatArr =
    DateTimeFormatter.splitDateFormat(widget.dateFormat);
    formatArr.forEach((format) {
      if(format.contains("d")){
        List<int> valueRange = _findPickerItemRangeLunar(format);
        Widget pickerColumn = _renderDatePickerColumnComponent(
          scrollCtrl: _findScrollCtrlLunar(format),
          valueRange: valueRange,
          format: format,
          valueChanged: (value) {
            _changeLunarDaySelection(value);
          },
        );
        pickers.add(pickerColumn);
      }
      if(format.contains("M")){
        List<int> valueRange = _findPickerItemRangeLunar(format);
        Widget pickerColumn = _renderMonthPickerColumnComponent(
          scrollCtrl: _findScrollCtrlLunar(format),
          valueRange: valueRange,
          format: format,
          valueChanged: (value) {
            if (format.contains('M')) {
              _changeLunarMonthSelection(value);
            }
          },
        );
        pickers.add(pickerColumn);
      }
      if(format.contains("y")){
        List<int> valueRange = _findPickerItemRangeLunar(format);
        Widget pickerColumn = _renderDatePickerColumnComponent(
          scrollCtrl: _findScrollCtrlLunar(format),
          valueRange: valueRange,
          format: format,
          valueChanged: (value) {
            _changeLunarYearSelection(value);
          },
        );
        pickers.add(pickerColumn);
      }
      /* */
    });
    return Expanded(
      flex: 3,
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween, children: pickers),
    );
  }
  Widget _renderMonthPickerColumnComponent({
    @required FixedExtentScrollController scrollCtrl,
    @required List<int> valueRange,
    @required String format,
    @required ValueChanged<int> valueChanged,
  }) {
    return Expanded(
      flex: 1,
      child: Container(
        padding: EdgeInsets.all(8.0),
        height: widget.pickerTheme.pickerHeight,
        decoration: BoxDecoration(color: widget.pickerTheme.backgroundColor),
        child: CupertinoPicker.builder(
            backgroundColor: widget.pickerTheme.backgroundColor,
            scrollController: scrollCtrl,
            itemExtent: widget.pickerTheme.itemHeight,
            onSelectedItemChanged: valueChanged,
            childCount: valueRange.last - valueRange.first + 1,
            itemBuilder: (context, index) {
              var value = valueRange.first +index;
              if(lunar.leapMonth!=0&& value>lunar.leapMonth){
                if(value == lunar.leapMonth+1&&!_isLeapMonth){
                  _isLeapMonth = true;
                  return _renderDatePickerItemComponent(value-1, format, " +");
                } if(value > lunar.leapMonth+1){
                  value = value-1;
                  _isLeapMonth = false;
                }
              }

              return _renderDatePickerItemComponent(value, format,"");
            }
        ),
      ),
    );
  }
  Widget _renderDatePickerColumnComponent({
    @required FixedExtentScrollController scrollCtrl,
    @required List<int> valueRange,
    @required String format,
    @required ValueChanged<int> valueChanged,
  }) {
    return Expanded(
      flex: 1,
      child: Container(
        padding: EdgeInsets.all(8.0),
        height: widget.pickerTheme.pickerHeight,
        decoration: BoxDecoration(color: widget.pickerTheme.backgroundColor),
        child: CupertinoPicker.builder(
            backgroundColor: widget.pickerTheme.backgroundColor,
            scrollController: scrollCtrl,
            itemExtent: widget.pickerTheme.itemHeight,
            onSelectedItemChanged: valueChanged,
            childCount: valueRange.last - valueRange.first + 1,
            itemBuilder: (context, index) {
              var value = valueRange.first +index;
              return _renderDatePickerItemComponent(value, format,"");
            }
        ),
      ),
    );
  }
  Widget _renderDatePickerItemComponent(int value, String format, String plus) {
    return Container(
      height: widget.pickerTheme.itemHeight,
      alignment: Alignment.center,
      child: Text(
        DateTimeFormatter.formatDateTime(value, format, widget.locale) + plus,
        style:
        widget.pickerTheme.itemTextStyle ?? DATETIME_PICKER_ITEM_TEXT_STYLE,
      ),
    );
  }
}
