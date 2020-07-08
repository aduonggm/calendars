//import 'dart:ui';
//
//import 'package:calender/model/event_in_year.dart';
//import 'package:calender/model/lunar_days.dart';
//import 'package:calender/respons/respons.dart';
//import 'package:flutter/cupertino.dart';
//import 'package:flutter/material.dart';
//
//class ItemCalendar extends StatefulWidget {
//
//  final DateTime dateTime ;
//  final Color textColor ;
//  final  Color background ;
//  final  bool select;
//
//  const ItemCalendar( this.dateTime, this.textColor, this.background, this.select,{Key key,}) : super(key: key);
//  @override
//  ItemState createState() {
//    return ItemState(  this.dateTime, this.textColor, this.background, this.select);
//  }
//}
//
//class ItemState extends State<ItemCalendar> {
//  final DateTime dateTime ;
//  final Color textColor ;
//  final  Color background ;
//  final  bool select;
//  ItemState(this.dateTime, this.textColor, this.background, this.select);
//  LunarDay lunarDay ;
//  bool isEvent = false;
//
//  void getEvent() async{
//    isEvent = await DataRespons.isEvents(dateTime);
//  }
//
//  @override
//  void initState() {
//
//    super.initState();
//    DataRespons.getLunarDay(dateTime);
//    lunarDay =  DataRespons.getLunarDay(dateTime);
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      body: Container(
//        margin: const EdgeInsets.all(4.0),
//        alignment: Alignment.center,
//        decoration: BoxDecoration(
//            border: select ? Border.all(color: Colors.blueAccent) : null,
//            color: background,
//            borderRadius: BorderRadius.circular(10.0)),
//        child: Column(
//          children: <Widget>[
//            Expanded(
//              child: Container(
//
//                decoration:  BoxDecoration(
//                  color: isEvent? Colors.red : null,
//                ),
//                alignment: Alignment.center,
//                child: Text(dateTime.day.toString(),
//                    style: TextStyle(
//                      color: textColor,
//                      fontSize: 18,
//                      fontWeight: FontWeight.bold,
//                    )),
//              ),
//              flex: 2,
//            ),
//            Expanded(
//              child: Text(
//                lunarDay.day == 1
//                    ? '${lunarDay.day}/${lunarDay.month}'
//                    : lunarDay.day.toString(),
//                style: TextStyle(color: textColor),
//              ),
//              flex: 1,
//            )
//          ],
//        ),
//      ),
//    );
//  }
//}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_calendar/respons/respons.dart';

class Itemss extends StatelessWidget{
  final DateTime dateTime;

  bool sss = false;

   Itemss({Key key, this.dateTime}) : super(key: key);



  void getEvent() async {
    sss = await DataRespons.isEvents(this.dateTime);
    print(sss);
}
  @override
  Widget build(BuildContext context) {
   return Container(
     color: sss? Colors.red: Colors.yellow,
   );
  }

}