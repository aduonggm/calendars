import 'package:flutter/material.dart';
import 'package:flutter_calendar/convert_solar_lunar/lunar_solar_converter.dart';
import 'package:flutter_calendar/cupertino_date_picker/src/i18n/date_picker_i18n.dart';

import '../date_picker_constants.dart';
import '../date_picker_theme.dart';
import 'date_picker_lunar.dart';
import 'date_picker_solar.dart';
import 'date_picker_title_widget.dart';

class OnlyLunar extends StatefulWidget {
  OnlyLunar({
    Key key,
    this.onMonthChangeStartWithFirstDate,
    this.minDateTime,
    this.maxDateTime,
    this.initialDateTime,
    this.solarDate,
    this.dateFormat: DATETIME_PICKER_DATE_FORMAT,
    this.locale: DATETIME_PICKER_LOCALE_DEFAULT,
    this.pickerTheme: DateTimePickerTheme.Default,
    this.onCancel,
    this.onChange,
    this.onConfirm,
  }) : super(key: key) {
    DateTime minTime = minDateTime ?? DateTime.parse(DATE_PICKER_MIN_DATETIME);
    DateTime maxTime = maxDateTime ?? DateTime.parse(DATE_PICKER_MAX_DATETIME);
    assert(minTime.compareTo(maxTime) < 0);
  }

  DateTime minDateTime, maxDateTime, initialDateTime;
  final String dateFormat;
  final DateTimePickerLocale locale;
  final DateTimePickerTheme pickerTheme;
  Solar solarDate;
  final DateVoidCallback onCancel;
  final DateValueCallback onChange, onConfirm;
  final onMonthChangeStartWithFirstDate;


  @override
  State<StatefulWidget> createState() => _OnlyLunarState(this.minDateTime,this.maxDateTime);
}

class _OnlyLunarState extends State<OnlyLunar> {
  Lunar lunar =  new Lunar();
  Solar solar = new Solar();
  bool _isLunar = false;
  bool _isChangeToLunar= false;
  bool _isLeapMonth = false;
  DateTime _minDateTime, _maxDateTime;
  int  _currLunarYear, _currLunarMonth, _currLunarDay;
  Widget datePickerWidget;
  FixedExtentScrollController _solarLunarScrollCtrl;

  _OnlyLunarState(DateTime minDateTime, DateTime maxDateTime) {
    this._minDateTime = minDateTime ?? DateTime.parse(DATE_PICKER_MIN_DATETIME);
    this._maxDateTime = maxDateTime ?? DateTime.parse(DATE_PICKER_MAX_DATETIME);
    _solarLunarScrollCtrl =
        FixedExtentScrollController(initialItem: 1);
  }
  solarCallBack(year,month,day){
    setState(() {
      print("change");
      _currLunarYear = year;
      _currLunarMonth = month;
      _currLunarDay = day;
    });
  }
  lunarCallBack(year,month,day,isLeap){
    setState(() {
      print("change2  $isLeap");
      _currLunarYear = year;
      _currLunarMonth = month;
      _currLunarDay = day;
      _isLeapMonth = isLeap;
    });
  }
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Material(
          color: Colors.transparent, child: _renderPickerView(context)),
    );
  }
  /// render date picker widgets
  Widget _renderPickerView(BuildContext context) {
    Widget datePickerLunar = DatePickerLunar(
      initialDateTime: widget.initialDateTime,
      onChange: widget.onChange,
      locale: widget.locale,
      dateFormat: widget.dateFormat,
      maxDateTime: widget.maxDateTime,
      minDateTime: widget.minDateTime,
      onCancel: widget.onCancel,
      onConfirm: lunarCallBack,
      onMonthChangeStartWithFirstDate: widget.onMonthChangeStartWithFirstDate,
      pickerTheme: widget.pickerTheme,
    );
    // display the title widget
    if (widget.pickerTheme.title != null || widget.pickerTheme.showTitle) {
      Widget titleWidget = DatePickerTitleWidget(
        pickerTheme: widget.pickerTheme,
        locale: widget.locale,
        onCancel: () => _onPressedCancel(),
        onConfirm: () => _onPressedConfirm(),
      );
      return Column(children: <Widget>[titleWidget,
        datePickerLunar
      ]);
    }
    return datePickerLunar;
  }
  /// pressed cancel widget
  void _onPressedCancel() {
    if (widget.onCancel != null) {
      widget.onCancel();
      _isLunar = false;
    }
    Navigator.pop(context);
  }

  /// pressed confirm widget
  _onPressedConfirm() {
    if (widget.onConfirm != null) {
      DateTime dateTime;
        if(_currLunarYear!=null){
          dateTime = DateTime(_currLunarYear, _currLunarMonth, _currLunarDay);
          widget.onConfirm(dateTime, _calcLunarSelectIndexList());
        }
        else{
          dateTime = widget.initialDateTime;
          _currLunarDay = widget.initialDateTime.day;
          _currLunarMonth = widget.initialDateTime.month;
          _currLunarYear = widget.initialDateTime.year;
          widget.onConfirm(dateTime, _calcLunarSelectIndexList());
        }
    }
    Navigator.pop(context);
  }

  /// notify selected date changed
  void _onSelectedChange() {
    if (widget.onChange != null) {
      DateTime dateTime = DateTime(_currLunarYear, _currLunarMonth, _currLunarDay);
      widget.onChange(dateTime, _calcLunarSelectIndexList());
    }
  }

  List<int> _calcLunarSelectIndexList() {
    int yearIndex = _currLunarYear - _minDateTime.year;
    int monthIndex = _currLunarMonth - 1;
    int dayIndex = _currLunarDay - 1;
    return [yearIndex, monthIndex, dayIndex];
  }
/// calculate the range of year
}
