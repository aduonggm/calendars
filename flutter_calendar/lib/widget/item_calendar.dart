
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_calendar/modal/lunar_days.dart';
import 'package:flutter_calendar/respons/respons.dart';
import 'dots.dart';

class CalendarItems extends StatefulWidget{
  final DateTime dateTime;
  final Color textColor;
  final Color background;
  final bool select;

  const CalendarItems({Key key, this.dateTime, this.textColor, this.background, this.select}) : super(key: key);
  @override
  ItemsState createState() {
    // TODO: implement createState
   return ItemsState(this.dateTime,this.textColor, this.background , this.select);
  }

}

class ItemsState extends State<CalendarItems>{
  final DateTime dateTime;
  final Color textColor;
  final Color background;
  final bool select;
  ItemsState(this.dateTime, this.textColor, this.background, this.select);
  LunarDay lunarDay ;
  bool isEvent = false ;

  void getEvent()async{
    isEvent =await DataRespons.isEvents(dateTime);
    setState(() {

    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    lunarDay = DataRespons.getLunarDay(dateTime);
    getEvent();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(4.0),
      alignment: Alignment.center,
      decoration: BoxDecoration(
          border: select ? Border.all(color: Colors.blueAccent) : null,
          color: background,
          borderRadius: BorderRadius.circular(10.0)),
      child: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  color: isEvent ? Colors.blue : null
              ),
              alignment: Alignment.center,
              child: Text(dateTime.day.toString(),
                  style: TextStyle(
                    color: textColor,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  )),
            ),
            flex: 2,
          ),
          Expanded(
            child: Text(
              lunarDay.day == 1
                  ? '${lunarDay.day}/${lunarDay.month}'
                  : lunarDay.day.toString(),
              style: TextStyle(color: textColor),
            ),
            flex: 1,
          ),
          lunarDay.ngayHoangDao != 0 ?DotGoodDay(color: lunarDay.ngayHoangDao ==1? Colors.yellowAccent : Colors.grey,) : Container()
        ],
      ),
    );
  }

}