import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_calendar/utils/solar_lular_utils.dart';

// ignore: must_be_immutable
class HourMinute extends StatefulWidget {
    String canDay;
    DateTime dateTime;
     HourMinute({Key key, this.dateTime, this.canDay}) : super(key: key);

  @override
  _HourMinuteState createState() => _HourMinuteState();
}

class _HourMinuteState extends State<HourMinute> {

  Timer _timer;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    const oneSec = const Duration(seconds: 1);
    _timer = new Timer.periodic(
        oneSec,
            (Timer timer) => setState(() {
          DateTime now = DateTime.now();
          widget.dateTime = DateTime(widget.dateTime.day,widget.dateTime.month,widget.dateTime.year,now.hour, now.minute, now.second);
        }));
  }
  @override
  void dispose() {
    _timer.cancel();
    super.dispose();

  }
  @override
  Widget build(BuildContext context) {
    var hourMinute = '${widget.dateTime.hour}:${widget.dateTime.minute.toString().padLeft(2,'0')}';
    var canChiGio = getCanChiGio(widget.canDay, widget.dateTime.hour);

    return  Container(
      width:MediaQuery.of(context).size.width/3-(20/3) ,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            child: Text("Giờ", style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500, fontFamily: "Quicksand"),),
          ),
          Container(
            child: Text(hourMinute, style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,fontFamily: "Quicksand"),),
          ),
          Container(
            child: Text(canChiGio, style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,fontFamily: "Quicksand"),),
          )
        ],
      ),
    );
  }
}
