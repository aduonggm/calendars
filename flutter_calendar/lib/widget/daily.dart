

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_calendar/modal/month_page_modal.dart';
import 'package:flutter_calendar/utils/date_utils.dart';
import 'package:flutter_calendar/utils/solar_lular_utils.dart';
import 'package:flutter_calendar/utils/utils.dart';
import 'package:flutter_calendar/views/calendar.dart';
import 'package:flutter_calendar/views/change_date.dart';
import 'package:flutter_calendar/views/create_event.dart';
import 'package:flutter_calendar/views/hour_minute.dart';
import 'package:flutter_calendar/widget/allEvent.dart';

class PagesDaily extends StatefulWidget {
  final String image;
  final String quote;
  final String author;
  final DateTime getHour;
  final DateTime dateTime;
  final List<Widget> listEventWidget;

  const PagesDaily(
      {Key key,
      this.getHour,
      this.dateTime,
      this.image,
      this.quote,
      this.author,
      this.listEventWidget})
      : super(key: key);

  @override
  _PagesDailyState createState() => _PagesDailyState();
}

class _PagesDailyState extends State<PagesDaily> {
  List<MonthPageModal> listPageMonth = [];
  PageController pageController;
  int initialPage = 0;
  @override
  void initState() {
    listPageMonth = MonthPageModal.listMonthPage(widget.dateTime);
    getInitialPage();



    super.initState();
  }
getInitialPage(){
    for(int i = 0;i<listPageMonth.length;i++){
      if(widget.dateTime.month==listPageMonth[i].month&&widget.dateTime.year==listPageMonth[i].year){
        initialPage = i;
      }
    }
    pageController  = PageController(viewportFraction: 0.45, initialPage: initialPage);
}
  @override
  Widget build(BuildContext context) {

    DateTime _dateTime = widget.dateTime;
    var lunarDates =
        convertSolar2Lunar(_dateTime.day, _dateTime.month, _dateTime.year);
 //   print("${convertSolar2Lunar(15, 09, 1970)}");
    var lunarDay = lunarDates[0];
    var lunarMonth = lunarDates[1];
    var lunarYear = lunarDates[2];
    var lunarMonthName = getCanChiMonth(lunarMonth, lunarYear);
    var jd = jdn(_dateTime.day, _dateTime.month, _dateTime.year);
    var dayName = getCanDay(jd);
    var canDay = dayName.toString().split(" ");
    var nameDayOfWeek = getNameDayOfWeek(_dateTime);
    final action = CupertinoActionSheet(

      actions: <Widget>[
        CupertinoActionSheetAction(
          child: Row(
            children: <Widget>[
              Image.asset("assets/images/btn_taosk_lichngay.png",width: 35,),
              SizedBox(width: 20,),
              Text("Tạo sự kiện"),
            ],
          ),
          isDefaultAction: true,
          onPressed: () {
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> CreateEvent(dateTime: _dateTime,)));
          },
        ),CupertinoActionSheetAction(
          child: Row(
            children: <Widget>[
              Image.asset("assets/images/btn_chiase_lichngay.png",width: 35,),
              SizedBox(width: 20,),
              Text("Chia sẻ"),
            ],
          ),
          isDefaultAction: true,
          onPressed: () {
            print("Action 2 is been clicked");
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>MyEvent()));
          },
        ),
        CupertinoActionSheetAction(
          child: Row(
            children: <Widget>[
              Image.asset("assets/images/btn_chonngaytot_lichngay.png",width: 35,),
              SizedBox(width: 20,),
              Text("Chọn ngày tốt"),
            ],
          ),
          isDefaultAction: true,
          onPressed: () {
            print("Action 4 is been clicked");
          },
        ), CupertinoActionSheetAction(
          child: Row(
            children: <Widget>[
              Image.asset("assets/images/btn_doingay_lichngay.png",width: 35,),
              SizedBox(width: 20,),
              Text("Đổi ngày"),
            ],
          ),
          isDefaultAction: true,
          onPressed: () {
            print("Action 5 is been clicked");
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> ChangeDate(dateTime: _dateTime,)));
          },
        ), CupertinoActionSheetAction(
          child: Row(
            children: <Widget>[
              Image.asset("assets/images/btn_ngaynaynamxua_lichngay.png",width: 35,),
              SizedBox(width: 20,),
              Text("Ngày này năm xưa"),
            ],
          ),
          isDefaultAction: true,
          onPressed: () {
            print("Action 6 is been clicked");
          },
        ),
      ],
      cancelButton: CupertinoActionSheetAction(
        child: Text("Thoát"),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );

    return Container(
      child: Stack(
        children: <Widget>[
          Container(
            child: Image.asset(widget.image,
              height: double.infinity,
              width: double.infinity,
              alignment: Alignment.topCenter,
              fit: BoxFit.fill,),
          ),

          SafeArea(
            child: Stack(
              children: <Widget>[

                Container(
                  margin: EdgeInsets.only(bottom: 100),
                  padding: EdgeInsets.only(bottom: 50),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                     /* Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              width: 40,
                            ),
                            Container(
                              height: 40,
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              decoration: BoxDecoration(
                                color: Colors.grey.shade300,
                                borderRadius: BorderRadius.circular(40),
                              ),
                              child: Center(
                                  child: Text(
                                "Tháng ${_dateTime.month} - ${_dateTime.year}",
                                style: TextStyle(
                                    color: Colors.blue.shade400,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 16),
                              )),
                            ),
                            Container(
                                width: 40,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.grey.shade300,
                                ),
                                child: IconButton(
                                    icon: Icon(
                                      Icons.add,
                                    ),
                                    onPressed: () {
                                      print("object");

                                      showCupertinoModalPopup(
                                          context: context,
                                          builder: (context) => action,);
                                    }))
                          ],
                        ),
                      ),*/
                     Container(height: 20,),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: Column(
                          children: <Widget>[
                            Center(
                                child: Text(
                              widget.quote,
                              style: textStyleQuote(FontWeight.w400),
                              maxLines: 10,textAlign: TextAlign.center
                            ),),
                            Align(
                              alignment: Alignment.bottomRight,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("-${widget.author}-",
                                    style: textStyleQuote(FontWeight.w600),),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 60),
                  child: Column(
                    children: <Widget>[
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> Calendars(dateTime: widget.dateTime,)));
                        },
                        child: Text('${widget.dateTime.day}',
                            style: TextStyle(
                              color: nameDayOfWeek == "CHỦ NHẬT"
                                  ? Colors.red
                                  : Colors.blue.shade700,
                              fontSize: 130,
                              fontWeight: FontWeight.w700,
                              fontFamily: "Quicksand",
                              shadows: [
                                Shadow(
                                  blurRadius: 5.0,
                                  color: nameDayOfWeek == "CHỦ NHẬT"
                                      ? Colors.red.shade900
                                      : Colors.blue.shade900,
                                  offset: Offset(5.0, 5.0),
                                ),
                              ],
                            )),
                      ),
                      Text(nameDayOfWeek,
                          style: TextStyle(
                            color: nameDayOfWeek == "CHỦ NHẬT"
                                ? Colors.red
                                : Colors.blue.shade700,
                            fontSize: 30,
                            fontWeight: FontWeight.w500,
                            fontFamily: "Quicksand",
                          )),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 30),
                        margin: EdgeInsets.only(top: 10),
                        child: Center(
                          child: Column(
                            children:
                            widget.listEventWidget
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: 123,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10)),
                        color: Colors.grey.shade300),
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      child: Row(
                        children: <Widget>[
                          HourMinute(
                            dateTime: widget.getHour,
                            canDay: canDay[0],
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width / 3 -
                                (20 / 3),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Container(
                                  child: Text(
                                    "Ngày",
                                    style: textStyle(),
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    "$lunarDay",
                                    style: TextStyle(
                                        fontSize: 48,
                                        fontWeight: FontWeight.normal
                                        ,fontFamily: "Quicksand"),
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    dayName,
                                    style: textStyle(),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width / 3 -
                                (20 / 3),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Container(
                                  child: Text(
                                    "Tháng",
                                    style: textStyle(),
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    "$lunarMonth",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,fontFamily: "Quicksand"),
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    lunarMonthName,
                                    style: textStyle(),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
