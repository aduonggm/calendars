import 'package:flutter/material.dart';
import 'package:flutter_calendar/convert_solar_lunar/lunar_solar_converter.dart';
import 'package:flutter_calendar/cupertino_date_picker/src/i18n/date_picker_i18n.dart';

import '../date_picker_constants.dart';
import '../date_picker_theme.dart';
import 'date_picker_solar.dart';
import 'date_picker_title_widget.dart';

class OnlySolar extends StatefulWidget {
  OnlySolar({
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
  State<StatefulWidget> createState() => _OnlySolarState(this.minDateTime,this.maxDateTime);
}

class _OnlySolarState extends State<OnlySolar> {
  Lunar lunar =  new Lunar();
  Solar solar = new Solar();

  DateTime _minDateTime, _maxDateTime;
  int  _currSolarYear, _currSolarMonth, _currSolarDay;
  Widget datePickerWidget;

  _OnlySolarState(DateTime minDateTime, DateTime maxDateTime) {
    this._minDateTime = minDateTime ?? DateTime.parse(DATE_PICKER_MIN_DATETIME);
    this._maxDateTime = maxDateTime ?? DateTime.parse(DATE_PICKER_MAX_DATETIME);

  }
  solarCallBack(year,month,day){
    setState(() {
      print("change");
      _currSolarYear = year;
      _currSolarMonth = month;
      _currSolarDay = day;
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
    Widget datePickerSolar = DatePickerSolar(
      initialDateTime: widget.initialDateTime,
      onChange: widget.onChange,
      locale: widget.locale,
      dateFormat: widget.dateFormat,
      maxDateTime: widget.maxDateTime,
      minDateTime: widget.minDateTime,
      onCancel: widget.onCancel,
      onConfirm: solarCallBack,
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
        datePickerSolar
      ]);
    }
    return datePickerSolar;
  }
  /// pressed cancel widget
  void _onPressedCancel() {
    if (widget.onCancel != null) {
      widget.onCancel();
    }
    Navigator.pop(context);
  }

  /// pressed confirm widget
  _onPressedConfirm() {
    if (widget.onConfirm != null) {
      DateTime dateTime;
        if(_currSolarYear!=null){
          dateTime = DateTime(_currSolarYear, _currSolarMonth, _currSolarDay);
          widget.onConfirm(dateTime,_calcSelectIndexList());
        }
        else{
          dateTime = widget.initialDateTime;
          _currSolarYear = widget.initialDateTime.year;
          _currSolarMonth = widget.initialDateTime.month;
          _currSolarDay = widget.initialDateTime.day;
          widget.onConfirm(dateTime,_calcSelectIndexList());
        }

    }
    Navigator.pop(context);
  }

  /// notify selected date changed
  void _onSelectedChange() {
    if (widget.onChange != null) {
      DateTime dateTime = DateTime(_currSolarYear, _currSolarMonth, _currSolarDay);
      widget.onChange(dateTime, _calcSelectIndexList());
    }
  }

  /// calculate selected index list
  List<int> _calcSelectIndexList() {
    int yearIndex = _currSolarYear - _minDateTime.year;
    int monthIndex = _currSolarMonth - 1;
    int dayIndex = _currSolarDay - 1;
    return [yearIndex, monthIndex, dayIndex];
  }
  /// calculate the range of year
}
