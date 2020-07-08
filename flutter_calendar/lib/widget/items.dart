
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_calendar/convert_solar_lunar/lunar_solar_converter.dart';
import 'package:flutter_calendar/modal/event_in_year.dart';
import 'package:flutter_calendar/modal/events_in_month.dart';
import 'package:flutter_calendar/modal/item_xuat_hanh.dart';
import 'package:flutter_calendar/modal/lunar_days.dart';
import 'package:flutter_calendar/modal/tiet_khi.dart';
import 'package:flutter_calendar/modal/tuoi_xung_model.dart';
import 'package:flutter_calendar/respons/respons.dart';
import 'package:flutter_calendar/utils/utils_calendar.dart';

class Items {
  Widget itemXuatHanh(XuatHanhModel xuatHanhModel) {
    String name = '';
    String icon = '';
    if (xuatHanhModel.typeHuong == TYPE_HUONGXUATHANH.HUONGXUATHANH_HACTHAN) {
      name = 'Hắc Thần';
      icon = 'hacthan';
    } else if (xuatHanhModel.typeHuong ==
        TYPE_HUONGXUATHANH.HUONGXUATHANH_HYTHAN) {
      name = 'Hỷ Thần';
      icon = 'hythan';
    } else if (xuatHanhModel.typeHuong ==
        TYPE_HUONGXUATHANH.HUONGXUATHANH_TAITHAN) {
      name = 'Tài Thần';
      icon = 'taithan';
    }

    return Container(
      margin: EdgeInsets.only(left: 25, right: 25),
      height: 85,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Image.asset(
          'assets/icons/$icon.png',
          height: 40,
        ),
        Container(
          margin: EdgeInsets.only(top: 5, bottom:  5),
          child: Text(name, style: TextStyle(fontSize: 15),),
        ),
        Text(xuatHanhModel.tenHuong , style: TextStyle(fontSize: 13),)
      ],
    ),);
  }

  itemCalendar(
      DateTime dateTime, Color textColor, Color background, bool select) {
    LunarDay lunarDay = DataRespons.getLunarDay(dateTime);
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
                  //  color: eventsssss? Colors.blue : null
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
          )
        ],
      ),
    );
  }

  Widget tietKhi(TietKhiObject tietKhiObject) {
    List<int> list = DataRespons.getDateFromString(tietKhiObject.time);
    return Column(
      children: <Widget>[
        Image.asset(
          'assets/icons/${tietKhiObject.icon}.png',
          height: 25,
        ),
        Text(tietKhiObject.name, style: TextStyle(fontSize: 13),),
        Text('${list[0]} Tháng ${list[1]}', style: TextStyle(fontSize: 11),)
      ],
    );
  }

  Widget goodHour(dynamic index, bool isHours) {
    TuoiXungModel tuoiXungModel;
    if (!isHours) tuoiXungModel = index;

    return Container(
      padding: EdgeInsets.only(top: 10),
      child:  Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Expanded(
            flex: 2,
            child: Image.asset(
              isHours
                  ? 'assets/icons/${IconCHI[index]}.png'
                  : 'assets/icons/${IconCHI[tuoiXungModel.iDiachi]}.png',
              height: 40,
              width: 40,
              alignment: Alignment.centerLeft,
            )),
        Expanded(
          flex: 6,
          child:Container(

            padding: EdgeInsets.only(left: 10),
            child:  Column(

              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  isHours ? CHI[index] : tuoiXungModel.aNameCanChi,
                  style: TextStyle(
                      color: Color(0xff505050),
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
                Text(isHours ? gioHoangDaoInt(index) : tuoiXungModel.aNameNguHanh,
                  style: TextStyle(
                      color:Color(0xff797979),
                      fontSize: 13,
                      fontWeight: FontWeight.bold),
                ),
                //Container(height: 200, color: Colors.yellow,)
              ],
            ),),
        )
      ],
    ),);
  }

  itemEvent(EventOfMonth eventsOfYear) {
    if (eventsOfYear.eventsInDay != null) {
      if (eventsOfYear.eventsInDay.content != null)
        return Container(
          height: 55,
          child: Row(
            children: <Widget>[
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                        '${eventsOfYear.eventsInDay.dateTime.day}/${eventsOfYear.eventsInDay.dateTime.month}'),
                    eventsOfYear.eventsInDay.lunarDay != null &&
                            eventsOfYear.eventsInDay.lunarDay != 0
                        ? Text(
                            '${eventsOfYear.eventsInDay.lunarDay}/${eventsOfYear.eventsInDay.lunarMonth}',
                            style: TextStyle(color: Colors.red),
                          )
                        : SizedBox()
                  ],
                ),
                flex: 2,
              ),
              Expanded(
                child: Text(eventsOfYear.eventsInDay.title),
                flex: 8,
              )
            ],
          ),
        );
      return Container(
        height: 50,
        alignment: Alignment.center,
        child: Text(eventsOfYear.eventsInDay.title),
      );
    }

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Expanded(
          child: Center(
              child: Text(
            '${eventsOfYear.listEvent[0].dateTime.day}/${eventsOfYear.listEvent[0].dateTime.month}',
          )),
          flex: 2,
        ),
        Expanded(
            flex: 8,
            child: ListView.builder(
              itemBuilder: (_, index) => Container(
                height: 50,
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: Text(eventsOfYear.listEvent[index].title),
                ),
              ),
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: eventsOfYear.listEvent.length,
            ))
      ],
    );
  }

  itemEventInDay(EventsInDay eventsOfYear) {
    return  Container(
      margin: EdgeInsets.only(top: 8),
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
            color: Color(0xffF0F0F0),
            borderRadius: BorderRadius.all(Radius.circular(13))),
        height: 55,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start ,
          children: <Widget>[
            Row(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(bottom: 5),
                  height: 21,
                  width: 21,
                  decoration: BoxDecoration(
                      color: Colors.white, shape: BoxShape.circle),

                ),

                Container(
                  height: 21,
                  margin: EdgeInsets.only(left: 8),
                  child: Text('Cả Ngày' ,style:  TextStyle(fontSize: 14 )),)
              ],
            ),
          Expanded(child:  Text(eventsOfYear.title,style:  TextStyle(fontSize: 13 ),))
          ],
        ),
      );
  }
}
