import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_calendar/convert_solar_lunar/lunar_solar_converter.dart';
import 'package:flutter_calendar/cupertino_date_picker/src/i18n/date_picker_i18n.dart';

import '../date_picker_constants.dart';
import '../date_picker_theme.dart';
import '../date_time_formatter.dart';
import 'date_picker_title_widget.dart';
const List<int> _solarMonthsOf31Days = const <int>[1, 3, 5, 7, 8, 10, 12];
class DatePickerSolar extends StatefulWidget {
  final String dateFormat;
  final DateTimePickerLocale locale;
  final DateTimePickerTheme pickerTheme;
  final DateVoidCallback onCancel;
  final DateValueCallback onChange;
     Function(int,int,int) onConfirm;
  final onMonthChangeStartWithFirstDate;
  DateTime minDateTime, maxDateTime, initialDateTime;

  DatePickerSolar({Key key, this.dateFormat,
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
  _DatePickerSolarState createState() => _DatePickerSolarState(
      this.minDateTime, this.maxDateTime, this.initialDateTime
  );
}

class _DatePickerSolarState extends State<DatePickerSolar> {
  Lunar lunar =  new Lunar();
  Solar solar = new Solar();
  DateTime _minDateTime, _maxDateTime;
  int  _currSolarYear, _currSolarMonth, _currSolarDay;
  Widget datePickerWidget;
  List<int> _solarLunarRange,_yearSolarRange, _monthSolarRange, _daySolarRange;
  FixedExtentScrollController _yearScrollCtrl, _monthScrollCtrl, _dayScrollCtrl;
  Map<String, FixedExtentScrollController> _scrollCtrlMap ;
  Map<String, List<int>> _valueRangeMap;

  bool _isChangeDateRange = false;
  _DatePickerSolarState(DateTime minDateTime, DateTime maxDateTime, DateTime initialDateTime){
    DateTime initDateTime = initialDateTime ?? DateTime.now();
    solar = Solar(solarYear: initDateTime.year,solarMonth: initDateTime.month, solarDay: initDateTime.day);
    this._currSolarYear = solar.solarYear;
    this._currSolarMonth = solar.solarMonth;
    this._currSolarDay = solar.solarDay;

    // handle DateTime range
    this._minDateTime = minDateTime ?? DateTime.parse(DATE_PICKER_MIN_DATETIME);
    this._maxDateTime = maxDateTime ?? DateTime.parse(DATE_PICKER_MAX_DATETIME);

    // limit the range of year
    this._yearSolarRange = _calcYearRange();
    this._currSolarYear = min(max(_minDateTime.year, _currSolarYear), _maxDateTime.year);

    // limit the range of month
    this._monthSolarRange = _calcMonthRange();
    this._currSolarMonth = min(max(_monthSolarRange.first, _currSolarMonth), _monthSolarRange.last);


    // limit the range of day
    this._daySolarRange = _calcDayRange();
    this._currSolarDay = min(max(_daySolarRange.first, _currSolarDay), _daySolarRange.last);
    // create scroll controller

    _yearScrollCtrl =
        FixedExtentScrollController(initialItem: _currSolarYear - _yearSolarRange.first);
    _monthScrollCtrl =
        FixedExtentScrollController(initialItem: _currSolarMonth - _monthSolarRange.first);
    _dayScrollCtrl =
        FixedExtentScrollController(initialItem: _currSolarDay - _daySolarRange.first);

    _scrollCtrlMap = {
      'y': _yearScrollCtrl,
      'M': _monthScrollCtrl,
      'd': _dayScrollCtrl
    };

    _valueRangeMap = {'SL':_solarLunarRange, 'y': _yearSolarRange, 'M': _monthSolarRange, 'd': _daySolarRange};
  }
  List<int> _calcYearRange() {
    print(_minDateTime.year.toString() + ", " + _maxDateTime.year.toString());
    return [_minDateTime.year, _maxDateTime.year];
  }
  List<int> _calcMonthRange() {
    int minMonth = 1, maxMonth = 12;
    int minYear = _minDateTime.year;
    int maxYear = _maxDateTime.year;
    if (minYear == _currSolarYear) {
      // selected minimum year, limit month range
      minMonth = _minDateTime.month;
    }
    if (maxYear == _currSolarYear) {
      // selected maximum year, limit month range
      maxMonth = _maxDateTime.month;
    }
    return [minMonth, maxMonth];
  }
  List<int> _calcDayRange({currMonth}) {
    int minDay = 1, maxDay = _calcDayCountOfMonth();
    int minYear = _minDateTime.year;
    int maxYear = _maxDateTime.year;
    int minMonth = _minDateTime.month;
    int maxMonth = _maxDateTime.month;
    if (currMonth == null) {
      currMonth = _currSolarMonth;
    }
    if (minYear == _currSolarYear && minMonth == currMonth) {
      // selected minimum year and month, limit day range
      minDay = _minDateTime.day;
    }
    if (maxYear == _currSolarYear && maxMonth == currMonth) {
      // selected maximum year and month, limit day range
      maxDay = _maxDateTime.day;
    }
    return [minDay, maxDay];
  }
  int _calcDayCountOfMonth() {
    if (_currSolarMonth == 2) {
      return isLeapYear(_currSolarYear) ? 29 : 28;
    } else if (_solarMonthsOf31Days.contains(_currSolarMonth)) {
      return 31;
    }
    return 30;
  }
  bool isLeapYear(int year) {
    return (year % 4 == 0 && year % 100 != 0) || year % 400 == 0;
  }

  List<int> _findPickerItemRange(String format) {

    List<int> valueRange;
    _valueRangeMap.forEach((key, value) {
      if (format.contains(key)) {
        valueRange = value;
      }
    });
    return valueRange;
  }
  FixedExtentScrollController _findScrollCtrl(String format) {
    FixedExtentScrollController scrollCtrl;
    _scrollCtrlMap.forEach((key, value) {
      if (format.contains(key)) {
        scrollCtrl = value;
      }
    });
    return scrollCtrl;
  }
  void _changeYearSelection(int index) {
    int year = _yearSolarRange.first + index;
    if (_currSolarYear != year) {
      _currSolarYear = year;
      _changeDateRange();
      _onSelectedChange();
      widget.onConfirm(_currSolarYear,_currSolarMonth,_currSolarDay);
    }
  }
  void _changeMonthSelection(int index) {
    int month = _monthSolarRange.first + index;
    if (_currSolarMonth != month) {
      _currSolarMonth = month;
      _changeDateRange();
      _onSelectedChange();
      widget.onConfirm(_currSolarYear,_currSolarMonth,_currSolarDay);
    }
  }
  void _changeDaySelection(int index) {
    int dayOfMonth = _daySolarRange.first + index;
    if (_currSolarDay != dayOfMonth) {
      _currSolarDay = dayOfMonth;
      _onSelectedChange();
      widget.onConfirm(_currSolarYear,_currSolarMonth,_currSolarDay);
    }
  }
  void _changeDateRange() {
    if (_isChangeDateRange) {
      return;
    }
    _isChangeDateRange = true;

    List<int> monthRange = _calcMonthRange();
    bool monthRangeChanged = _monthSolarRange.first != monthRange.first ||
        _monthSolarRange.last != monthRange.last;
    if (monthRangeChanged) {
      // selected year changed
      _currSolarMonth = max(min(_currSolarMonth, monthRange.last), monthRange.first);
    }

    List<int> dayRange = _calcDayRange();
    bool dayRangeChanged =
        _daySolarRange.first != dayRange.first || _daySolarRange.last != dayRange.last;
    if (dayRangeChanged) {
      // day range changed, need limit the value of selected day
      if (!widget.onMonthChangeStartWithFirstDate) {
        max(min(_currSolarDay, dayRange.last), dayRange.first);
      } else {
        _currSolarDay = dayRange.first;
      }
    }
      List<int> curr = [_currSolarYear,_currSolarMonth,_currSolarDay];
    setState(() {
      _monthSolarRange = monthRange;
      _daySolarRange = dayRange;
      _valueRangeMap['M'] = monthRange;
      _valueRangeMap['d'] = dayRange;
    });

    if (monthRangeChanged) {
      // CupertinoPicker refresh data not working (https://github.com/flutter/flutter/issues/22999)
      int currMonth = _currSolarMonth;
      _monthScrollCtrl.jumpToItem(monthRange.last - monthRange.first);
      if (currMonth < monthRange.last) {
        _monthScrollCtrl.jumpToItem(currMonth - monthRange.first);
      }
    }

    if (dayRangeChanged) {
      // CupertinoPicker refresh data not working (https://github.com/flutter/flutter/issues/22999)
      int currDay = _currSolarDay;
      _dayScrollCtrl.jumpToItem(dayRange.last - dayRange.first);
      if (currDay < dayRange.last) {
        _dayScrollCtrl.jumpToItem(currDay - dayRange.first);
      }
    }

    _isChangeDateRange = false;
  }
  void _onSelectedChange() {
    if (widget.onChange != null) {
      DateTime dateTime = DateTime(_currSolarYear, _currSolarMonth, _currSolarDay);
      widget.onChange(dateTime, _calcSelectIndexList());
    }
  }
  List<int> _calcSelectIndexList() {
    int yearIndex = _currSolarYear - _minDateTime.year;
    int monthIndex = _currSolarMonth - _monthSolarRange.first;
    int dayIndex = _currSolarDay - _daySolarRange.first;
    return [yearIndex, monthIndex, dayIndex];
  }
  @override
  Widget build(BuildContext context) {
    return _renderDatePikerSolarWidget();
  }

  Widget _renderDatePikerSolarWidget(){
    List<Widget> pickers = List<Widget>();
    List<String> formatArr =
    DateTimeFormatter.splitDateFormat(widget.dateFormat);
    formatArr.forEach((format) {
      List<int> valueRange = _findPickerItemRange(format);
      Widget pickerColumn = _renderDatePickerColumnComponent(
        scrollCtrl: _findScrollCtrl(format),
        valueRange: valueRange,
        format: format,
        valueChanged: (value) {
          if (format.contains('y')) {
            _changeYearSelection(value);
          } else if (format.contains('M')) {
            _changeMonthSelection(value);
          } else if (format.contains('d')) {
            _changeDaySelection(value);
          }
        },
      );

      pickers.add(pickerColumn);
    });
    return Expanded(
      flex: 3,
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween, children: pickers),
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
              return _renderDatePickerItemComponent(value, format);
            }
        ),
      ),
    );
  }
  Widget _renderDatePickerItemComponent(int value, String format) {
    return Container(
      height: widget.pickerTheme.itemHeight,
      alignment: Alignment.center,
      child: Text(
        DateTimeFormatter.formatDateTime(value, format, widget.locale),
        style:
        widget.pickerTheme.itemTextStyle ?? DATETIME_PICKER_ITEM_TEXT_STYLE,
      ),
    );
  }

}
