import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_calendar/convert_solar_lunar/lunar_solar_converter.dart';
import 'package:flutter_calendar/cupertino_date_picker/src/widget/date_picker_lunar.dart';
import 'package:flutter_calendar/cupertino_date_picker/src/widget/date_picker_solar.dart';
import 'package:flutter_calendar/utils/solar_lular_utils.dart';

import '../date_time_formatter.dart';
import '../date_picker_theme.dart';
import '../date_picker_constants.dart';
import '../i18n/date_picker_i18n.dart';
import 'date_picker_title_widget.dart';

/// Solar months of 31 days.
const List<int> _solarMonthsOf31Days = const <int>[1, 3, 5, 7, 8, 10, 12];

/// DatePicker widget.
///
/// @author dylan wu
/// @since 2019-05-10
class DatePickerWidget extends StatefulWidget {
  DatePickerWidget({
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
  State<StatefulWidget> createState() => _DatePickerWidgetState(this.minDateTime,this.maxDateTime);
}

class _DatePickerWidgetState extends State<DatePickerWidget> {
  Lunar lunar =  new Lunar();
  Solar solar = new Solar();
  bool _isLunar = false;
  bool _isChangeToLunar= false;
  bool _isLeapMonth = false;
  DateTime _minDateTime, _maxDateTime;
  int  _currSolarYear, _currSolarMonth, _currSolarDay,_currLunarYear, _currLunarMonth, _currLunarDay;
  Widget datePickerWidget;
  FixedExtentScrollController _solarLunarScrollCtrl;

  _DatePickerWidgetState(DateTime minDateTime, DateTime maxDateTime) {
    this._minDateTime = minDateTime ?? DateTime.parse(DATE_PICKER_MIN_DATETIME);
    this._maxDateTime = maxDateTime ?? DateTime.parse(DATE_PICKER_MAX_DATETIME);
    _solarLunarScrollCtrl =
        FixedExtentScrollController(initialItem: 1);
  }
      solarCallBack(year,month,day){
          setState(() {
            print("change");
            _currSolarYear = year;
            _currSolarMonth = month;
            _currSolarDay = day;
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
    Widget solarLunar= _solarLunarPickerColumnComponent();
    // display the title widget
    if (widget.pickerTheme.title != null || widget.pickerTheme.showTitle) {
      Widget titleWidget = DatePickerTitleWidget(
        pickerTheme: widget.pickerTheme,
        locale: widget.locale,
        onCancel: () => _onPressedCancel(),
        onConfirm: () => _onPressedConfirm(),
      );
      return Column(children: <Widget>[titleWidget,
        Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[solarLunar,
            _isChangeToLunar?datePickerLunar:
           datePickerSolar
            ],)
        ]);
    }
    return _isChangeToLunar?datePickerLunar:datePickerSolar;
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
        if(_isChangeToLunar){
          if(_currLunarYear!=null){
          lunar = Lunar(lunarYear: _currLunarYear,lunarMonth: _currLunarMonth,lunarDay: _currLunarDay,isLeap: _isLeapMonth);
          solar= LunarSolarConverter.lunarToSolar(lunar);
          dateTime = DateTime(solar.solarYear,solar.solarMonth,solar.solarDay);
          widget.onConfirm(dateTime, _calcLunarSelectIndexList());
         }
          else{
            dateTime = widget.initialDateTime;
            _currLunarYear = widget.initialDateTime.year;
            _currLunarMonth = widget.initialDateTime.month;
            _currLunarDay = widget.initialDateTime.day;
            widget.onConfirm(dateTime, _calcLunarSelectIndexList());
          }
        }
        else{
          if(_currSolarYear!=null){
       dateTime = DateTime(_currSolarYear, _currSolarMonth, _currSolarDay);
       widget.onConfirm(dateTime, _calcSelectIndexList());
       }
          else{
            dateTime = widget.initialDateTime;
            _currSolarYear = widget.initialDateTime.year;
            _currSolarMonth = widget.initialDateTime.month;
            _currSolarDay = widget.initialDateTime.day;
            widget.onConfirm(dateTime, _calcSelectIndexList());
          }


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

  Widget _solarLunarPickerColumnComponent(){
    return Expanded(
      flex: 1,
      child: Container(
        padding: EdgeInsets.all(8.0),
        width: MediaQuery.of(context).size.width/4,
        height: widget.pickerTheme.pickerHeight,
        decoration: BoxDecoration(color: widget.pickerTheme.backgroundColor),
        child: CupertinoPicker(
          backgroundColor: widget.pickerTheme.backgroundColor,
          scrollController: _solarLunarScrollCtrl,
          itemExtent: widget.pickerTheme.itemHeight,
         // onSelectedItemChanged: ,
            onSelectedItemChanged: (int index) {
            setState(() {
              _onChangeSolarLunar(index);

            });
            print("$index ssssss");
          },
         children: <Widget>[

          Container(
              height: widget.pickerTheme.itemHeight,
              alignment: Alignment.center,
              child: Text(
                "Âm",
                style:
                widget.pickerTheme.itemTextStyle ?? DATETIME_PICKER_ITEM_TEXT_STYLE,
              ),
            ) ,Container(
             height: widget.pickerTheme.itemHeight,
             alignment: Alignment.center,
             child: Text(
               "Dương",
               style:
               widget.pickerTheme.itemTextStyle ?? DATETIME_PICKER_ITEM_TEXT_STYLE,
             ),
           ),
         ],
        ),
      ),
    );
  }


  /// calculate selected index list
   List<int> _calcSelectIndexList() {
    int yearIndex = _currSolarYear - _minDateTime.year;
    int monthIndex = _currSolarMonth - 1;
    int dayIndex = _currSolarDay - 1;
    return [yearIndex, monthIndex, dayIndex];
  }
  List<int> _calcLunarSelectIndexList() {
    int yearIndex = _currLunarYear - _minDateTime.year;
    int monthIndex = _currLunarMonth - 1;
    int dayIndex = _currLunarDay - 1;
    return [yearIndex, monthIndex, dayIndex];
  }

  /// calculate the range of year

  _onChangeSolarLunar(int index){
    if(index==1){
      if(_isLunar){
        setState(() {
          _isChangeToLunar = false;
          _isLunar=false;
        });
      }
    }else{
      setState(() {
        _isChangeToLunar = true;
        _isLunar=true;
        print("lunar");
      });

    }
  }
}
