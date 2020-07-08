import 'dart:async';
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_calendar/bloc/daily_calendar/daily_calendar_bloc.dart';
import 'package:flutter_calendar/bloc/daily_calendar/daily_calendar_event.dart';
import 'package:flutter_calendar/bloc/daily_calendar/daily_calendar_state.dart';
import 'package:flutter_calendar/convert_solar_lunar/lunar_solar_converter.dart';
import 'package:flutter_calendar/cupertino_date_picker/flutter_cupertino_date_picker.dart';
import 'package:flutter_calendar/cupertino_date_picker/src/i18n/date_picker_i18n.dart';
import 'package:flutter_calendar/liquid_swipe/Helpers/Helpers.dart';
import 'package:flutter_calendar/liquid_swipe/liquid_swipe.dart';
import 'package:flutter_calendar/modal/create_event_modal.dart';
import 'package:flutter_calendar/modal/event_day.dart';
import 'package:flutter_calendar/modal/month_page_modal.dart';
import 'package:flutter_calendar/modal/quotes.dart';
import 'package:flutter_calendar/service/data_service.dart';
import 'package:flutter_calendar/service/database.dart';
import 'package:flutter_calendar/utils/date_utils.dart';
import 'package:flutter_calendar/utils/solar_lular_utils.dart';
import 'package:flutter_calendar/utils/utils.dart';
import 'package:flutter_calendar/views/hour_minute.dart';
import 'package:flutter_calendar/widget/daily.dart';

import 'calendar.dart';

class DailyCalendar extends StatefulWidget {
  @override
  _DailyCalendarState createState() => _DailyCalendarState();
}

class _DailyCalendarState extends State<DailyCalendar>
    with TickerProviderStateMixin {
  List<MonthPageModal> listPageMonth = [];
  PageController pageController;
  int initialPage = 0;

  int previousPage = 0;
  int thisPage = 0;
  List<int> bgr = [1, 2, 3];
  List<int> quote = [1,2,3];
  List<EventDay> listEvenDays = new List();
  List<Quotes> listQuotes = new List();
  List<CreateEventModal> personalEvent = new List();
  List<Widget> event1=[];
  List<Widget> event2=[];
  List<Widget> event3=[];
  List<String> quoteDefaults=["","",""];
  List<String> authorDefaults=["","",""];
  bool check =false;
  bool _isChooseDay = false;
  bool _isFirstChange = true;
  bool selectedToday = false;
  bool isToday = true;
  DateTime getHour = DateTime.now();
  DateTime dateTime = DateTime.now();
  DateTime difDateTime = DateTime.now();
  List<Widget> pagesDaily = [];

  pageChangeCallback(int lpage) {
   // print(lpage);
    setState(() {
      previousPage = thisPage;
      thisPage = lpage;
      getHour = DateTime.now();
      firstAndLastOfMonth();
    });
  }

  updateTypeCallback(UpdateType updateType) {
 //   firstAndLastOfMonth(dateTime);
   // print(updateType);
  }


  setQuotes(){
    Random random = new Random();
    for (int i = 0; i < 3; i++) {
      quote[i] = random.nextInt(989);
      quoteDefaults[i] = listQuotes[quote[i]].contentIdiom;
      authorDefaults[i] = listQuotes[quote[i]].authorIdiom;
    }
  }

  changeTwoPreviousBackground() {
    Random random = new Random();
    for (int i = 0; i < 2; i++) {
      bgr[i] = random.nextInt(10);
      quote[i] = random.nextInt(989);
      quoteDefaults[i] = listQuotes[quote[i]].contentIdiom;
      authorDefaults[i] = listQuotes[quote[i]].authorIdiom;
    }
  }

  changeTwoBehindBackground() {
    Random random = new Random();
    for (int i = 1; i < 3; i++) {
      bgr[i] = random.nextInt(10);
      quote[i] = random.nextInt(989);
      quoteDefaults[i] = listQuotes[quote[i]].contentIdiom;
      authorDefaults[i] = listQuotes[quote[i]].authorIdiom;
    }
  }
  setBackground() {
    Random random = new Random();
    for (int i = 0; i < 3; i++) {
      bgr[i] = random.nextInt(10);
    }
  }

 Future getData()async{
 var dataQuotes = await loadQuotesData();
    setState(() {
      listQuotes=dataQuotes;
    });
}
  @override
  void initState() {
    super.initState();
    listPageMonth = MonthPageModal.listMonthPage(dateTime);
    getInitialPage();
    setBackground();
   getData();
   getData().whenComplete(() => setQuotes());
   changeEventDays();

  }
  getInitialPage(){
    for(int i = 0;i<listPageMonth.length;i++){
      if(dateTime.month==listPageMonth[i].month&&dateTime.year==listPageMonth[i].year){
        initialPage = i;
      }
    }
    pageController  = PageController(viewportFraction: 0.45, initialPage: initialPage);
  }

  void showDatePicker(){
    DatePicker.showDatePicker(
      context,
      initialItem: 1,
      initialDateTime: dateTime,
      dateFormat: "dd/MMMM/yyyy",
      locale: DateTimePickerLocale.vi,
      pickerTheme: DateTimePickerTheme(
        showTitle: true,
      ),
      pickerMode: DateTimePickerMode.date, // show TimePicker
      onCancel: () {
        //debugPrint('onCancel');
      },
      onChange: (_dateTime, List<int> index) {
          dateTime = _dateTime;
      },
      onConfirm: (_dateTime, List<int> index) {
        int page =0;
        for(int i = 0;i<listPageMonth.length;i++){
          if(_dateTime.month==listPageMonth[i].month&&_dateTime.year==listPageMonth[i].year){
            page = i;
          }
        }
        setState(() {
          dateTime = _dateTime;
          pageController.animateToPage(page, duration: Duration(milliseconds: 1500), curve: Curves.easeInOutBack);
          _isChooseDay = true;
          event1=[];
          event2=[];
          event3=[];
        });
      },
    );
  }
  firstAndLastOfMonth(){
    DateTime _dateTime = DateTime.now();
    int page =0;
    if (previousPage == 0 && thisPage == 1)   {
      _dateTime = increaseDay(dateTime);
    }
    else if (previousPage == 1 && thisPage == 2) {
      _dateTime = increaseDay(dateTime);
    }
    else if (previousPage == 2 && thisPage == 0) {
      _dateTime = increaseDay(dateTime);
    }
    else if (previousPage == 0 && thisPage == 2) {
      _dateTime = decreaseDay(dateTime);
    }
    else if (previousPage == 2 && thisPage == 1) {
      _dateTime = decreaseDay(dateTime);
    }
    else if (previousPage == 1 && thisPage == 0) {
      _dateTime = decreaseDay(dateTime);
    }
    for(int i = 0;i<listPageMonth.length;i++){
      if(_dateTime.month==listPageMonth[i].month&&_dateTime.year==listPageMonth[i].year){
        page = i;
        pageController.animateToPage(page, duration: Duration(milliseconds: 800), curve: Curves.easeInOutBack);
      }
    }


  }
  changeEventDays(){
    listEvenDays.forEach((element) {
      var convert =  DateTime.parse(element.start_date);
      if(element.dateType==0){
        if(dateTime.day==convert.day&&dateTime.month==convert.month){
          if(thisPage==0){
              event1.add(widgetEvent(element.title)) ;
          }
          if(thisPage==1){
            event2.add(widgetEvent(element.title)) ;
          }

          if(thisPage==2){
            event3.add(widgetEvent(element.title)) ;
          }
        }
        else{
          if(thisPage==0){
            event2 = [];
            event3 = [];
          }
          if(thisPage==1){
            event1 = [];
            event3 = [];
          }
          if(thisPage==2){
            event2 = [];
            event1 = [];
          }
        }
      }
      else{
        var lunarToday = convertSolar2Lunar(dateTime.day, dateTime.month, dateTime.year);
        var convert = DateTime.parse(element.start_date);
        var convertToLunar = convertSolar2Lunar(convert.day, convert.month, convert.year);
        if(convertToLunar[0]==lunarToday[0]&&convertToLunar[1]==lunarToday[1]){
          if(thisPage==0){
            event1.add(widgetEvent(element.title)) ;
          }
          if(thisPage==1){
            event2.add(widgetEvent(element.title)) ;
          }
          if(thisPage==2){
            event3.add(widgetEvent(element.title)) ;
          }
        }
        else{
          if(thisPage==0){
            event2=[];
            event3=[];
          }if(thisPage==1){
            event1=[];
            event3=[];
          }if(thisPage==2){
            event2=[];
            event1=[];
          }

        }
      }
    });
    Solar solar = Solar(solarDay: dateTime.day,solarMonth: dateTime.month,solarYear: dateTime.year);
    var lunarDay = LunarSolarConverter.solarToLunar(solar);
    if(lunarDay.lunarDay==15){
      if(thisPage==0){
        event1.add(widgetEvent("Ngày rằm")) ;
      }
      if(thisPage==1){
        event2.add(widgetEvent("Ngày rằm")) ;
      }

      if(thisPage==2){
        event3.add(widgetEvent("Ngày rằm")) ;
      }
    }else
    if(lunarDay.lunarDay==1){
      if(thisPage==0){
        event1.add(widgetEvent("Ngày mùng một")) ;
      }
      if(thisPage==1){
        event2.add(widgetEvent("Ngày mùng một")) ;
      }
      if(thisPage==2){
        event3.add(widgetEvent("Ngày mùng một")) ;
      }
    }
    else{
      if(thisPage==0){
        event2=[];
        event3=[];
      }if(thisPage==1){
        event1=[];
        event3=[];
      }if(thisPage==2){
        event2=[];
        event1=[];
      }

    }
  }

  widgetEvent(String event){
    return Container(
      margin: EdgeInsets.only(bottom: 8),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(28),
            color: Colors.grey
      ),
      child: Text(event, style: textStyle(),textAlign: TextAlign.center, ),
    );
  }
  @override
  Widget build(BuildContext context) {
    pagesDaily  = [
      PagesDaily(
        dateTime: thisPage == 0
            ? dateTime
            : thisPage == 1 ? decreaseDay(dateTime) : increaseDay(dateTime),
        getHour: getHour ,
        image: "assets/images/${bgr[0]}.jpg",
        quote: quoteDefaults[0],
        author: authorDefaults[0],
        listEventWidget: event1,
      ),
      PagesDaily(dateTime: thisPage == 0
          ? increaseDay(dateTime)
          : thisPage == 1 ? dateTime : decreaseDay(dateTime),
        getHour: getHour ,
        image: "assets/images/${bgr[1]}.jpg",
        quote: quoteDefaults[1],
        author: authorDefaults[1],
        listEventWidget: event2,
      ),
      PagesDaily(
        dateTime: thisPage == 0
            ? decreaseDay(dateTime)
            : thisPage == 1 ? increaseDay(dateTime) : dateTime,
        getHour: getHour ,
        image: "assets/images/${bgr[1]}.jpg",
        quote: quoteDefaults[1],
        author: authorDefaults[1],
        listEventWidget: event3,

      )
    ];


    changePagesDaily(DateTime dateTime1,DateTime dateTime2,DateTime dateTime3){
      pagesDaily = [
        PagesDaily(dateTime: dateTime1,
          getHour: getHour ,
          image: "assets/images/${bgr[0]}.jpg",
          quote: quoteDefaults[0],
          author: authorDefaults[0],
          listEventWidget: event1,
        ),
        PagesDaily(dateTime: dateTime2,
          getHour: getHour ,
          image: "assets/images/${bgr[1]}.jpg",
          quote: quoteDefaults[1],
          author: authorDefaults[1],
          listEventWidget: event2,

        ),
        PagesDaily(dateTime: dateTime3,
          getHour: getHour ,
          image: "assets/images/${bgr[2]}.jpg",
          quote: quoteDefaults[2],
          author: authorDefaults[2],
          listEventWidget: event3,
        )
      ];
      return pagesDaily;
    }


    return BlocProvider(create: (context)=> DailyCalendarBloc()..add(DatabaseFetched()),
      child: BlocListener<DailyCalendarBloc,DailyCalendarState>(
          listener: (context,state){
            if(state is FetchDataSuccess){
            }
          },
        child: BlocBuilder<DailyCalendarBloc, DailyCalendarState>(

        // ignore: missing_return
          builder: (context, state) {
            if(state is DailyCalendarInitial){

              return Container();
            }
            if (state is FetchDataSuccess) {
              listEvenDays = state.listEvents;
              personalEvent = state.personalEvent;
              if (previousPage ==0&& thisPage==0)   {
                event1=[];
                   changeEventDays();
                  changePagesDaily( dateTime, increaseDay(dateTime),decreaseDay(dateTime));
                difDateTime = dateTime;
                selectedToday = false;
              }
              if (previousPage == 0 && thisPage == 1)   {
                event2=[];
                if(_isChooseDay&&_isFirstChange){
                  dateTime =!selectedToday? increaseDay(dateTime): DateTime.now();
                  _isFirstChange=false;
                }else if(!_isChooseDay){
                  dateTime = !selectedToday? increaseDay(dateTime): DateTime.now();
                  _isFirstChange=false;
                }else{
                  dateTime = dateTime;
                }

                changeEventDays();
                changePagesDaily(decreaseDay(dateTime), dateTime, increaseDay(dateTime));
                _isChooseDay=false;
                difDateTime = dateTime;
                selectedToday = false;

              }
              else if (previousPage == 1 && thisPage == 2) {
                event3=[];
                changeTwoPreviousBackground();
                if(!_isChooseDay){
                  dateTime =!selectedToday? increaseDay(dateTime): DateTime.now();
                }else{
                  dateTime = dateTime;
                }
                changeEventDays();
                changePagesDaily(increaseDay(dateTime), decreaseDay(dateTime), dateTime);
                _isChooseDay=false;
                difDateTime = dateTime;
                selectedToday = false;
              }
              else if (previousPage == 2 && thisPage == 0) {
                event1=[];
                if(!_isChooseDay){
                  dateTime =!selectedToday? increaseDay(dateTime): DateTime.now();
                }else{
                  dateTime = dateTime;
                }

                changeEventDays();
                changePagesDaily(dateTime, increaseDay(dateTime),  decreaseDay(dateTime));
                _isChooseDay=false;
                difDateTime = dateTime;
                selectedToday = false;
              }
              else if (previousPage == 0 && thisPage == 2) {
                event3=[];
                if(_isChooseDay&&_isFirstChange){
                    dateTime =!selectedToday? decreaseDay(dateTime): DateTime.now();
                  _isFirstChange=false;
                }
                if(!_isChooseDay){
                  dateTime =!selectedToday? decreaseDay(dateTime): DateTime.now();
                  _isFirstChange=false;
                }else{
                  dateTime = dateTime;
                }

                changeEventDays();
                changePagesDaily(increaseDay(dateTime),decreaseDay(dateTime),  dateTime);
                _isChooseDay=false;
                difDateTime = dateTime;
                selectedToday = false;
              }
              else if (previousPage == 2 && thisPage == 1) {
                event2=[];
                if(!_isChooseDay){
                  dateTime =!selectedToday? decreaseDay(dateTime): DateTime.now();
                }else{
                  dateTime = dateTime;
                }

                changeEventDays();
                changePagesDaily(decreaseDay(dateTime), dateTime, increaseDay(dateTime));
                _isChooseDay=false;
                difDateTime = dateTime;
                selectedToday = false;
              }
              else if (previousPage == 1 && thisPage == 0) {
                event1=[];
                changeTwoBehindBackground();
                if(!_isChooseDay){
                  dateTime =!selectedToday? decreaseDay(dateTime): DateTime.now();
                }else{
                  dateTime = dateTime;
                }

                changeEventDays();
                changePagesDaily( dateTime, increaseDay(dateTime),decreaseDay(dateTime));
                _isChooseDay=false;
                difDateTime = dateTime;
                selectedToday = false;
              }
              return Stack(
                children: <Widget>[

                  LiquidSwipe(
                    pages: pagesDaily,
                    fullTransitionValue: 200,
                    enableLoop: true,
                    positionSlideIcon: 0.5,
                    onPageChangeCallback: pageChangeCallback,
                    currentUpdateTypeCallback: updateTypeCallback,
                    waveType: WaveType.values[1],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 50),
                    height: 50,
                    child: PageView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: listPageMonth.length,
                        controller: pageController,
                        pageSnapping: true,
                        onPageChanged: (index){
                          DateTime _dateTime = DateTime(listPageMonth[index].year,listPageMonth[index].month,dateTime.day);
                          setState(() {
                            dateTime = _dateTime;
                            _isChooseDay = true;
                            event1=[];event2=[];event3=[];
                          });
                        },
                        itemBuilder: (context,index){
                          return GestureDetector(
                            onTap: (){
                              showDatePicker();
                            },
                            child: Container(
                              child: Center(
                                child: Text("Tháng ${listPageMonth[index].month} - ${listPageMonth[index].year}"
                                  ,style: TextStyle(
                                      color: Colors.blue.shade400,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 16),),
                              ),
                            ),
                          );
                        }),
                  ),
                    dateTime.day==DateTime.now().day
                  &&dateTime.month==DateTime.now().month
                  &&dateTime.year==DateTime.now().year?
                    Container():
                    GestureDetector(
                    onTap: (){
                      setState(() {
                        pageController.animateToPage(initialPage, duration: Duration(milliseconds: 1500), curve: Curves.easeInOutBack);
                         selectedToday = true;
                        event1=[];event2=[];event3=[];

                      });
                    },
                    child: Container(
                      margin: EdgeInsets.only(top: 100,left: 20),
                      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(width: 2),
                          color: Colors.white.withOpacity(0.2)
                      ),
                      child: Text("Hôm nay"),
                    ),
                  ),

                ],
              );
            }
          })),
      );

  }

}


