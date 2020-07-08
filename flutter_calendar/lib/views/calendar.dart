import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_calendar/bloc/lunar_day/blocs.dart';
import 'package:flutter_calendar/modal/event_in_year.dart';
import 'package:flutter_calendar/modal/item_xuat_hanh.dart';
import 'package:flutter_calendar/modal/lunar_days.dart';
import 'package:flutter_calendar/modal/thap_nhi_bat_tu_model.dart';
import 'package:flutter_calendar/modal/tiet_khi.dart';
import 'package:flutter_calendar/modal/tuoi_xung_model.dart';
import 'package:flutter_calendar/respons/respons.dart';
import 'package:flutter_calendar/utils/gio_ly_thuan_phong.dart';
import 'package:flutter_calendar/utils/utils_calendar.dart';
import 'package:flutter_calendar/views/list_event.dart';
import 'package:flutter_calendar/widget/item_calendar.dart';
import 'package:flutter_calendar/widget/items.dart';
import 'package:flutter_calendar/widget/nhi_thap_bat_tu_widget.dart';
import 'package:flutter_calendar/widget/tiet_khi_widget.dart';
import 'package:flutter_calendar/widget/widget_tuoi_xung.dart';
import 'package:flutter_calendar/widget/timer_wigget.dart';
import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:table_calendar/table_calendar.dart';

class Calendars extends StatefulWidget {
  final DateTime dateTime;

  const Calendars({Key key, this.dateTime}) : super(key: key);
  @override
  CalendarState createState() {
    // TODO: implement createState
    return CalendarState();
  }
}

class CalendarState extends State<Calendars> {
  void getDB(DateTime dateTime) async {
    await DataRespons.isEvents(dateTime);
  }

  CalendarController calendarController;

  @override
  void initState() {
    super.initState();
    calendarController = new CalendarController();
    // lunarDayBloc = BlocProvider.of<LunarDayBloc>(context);
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<LunarDayBloc>(
        create: (BuildContext context) => LunarDayBloc()
          ..add(LunarDayChange( DateTime.now())),
        child: BlocBuilder<LunarDayBloc, LunarDayState>(
            // ignore: missing_return
            builder: (context, state) {
          if (state is LunarDayUpdate) {
            NhiThapBatTuModel nhiThapBatTuModel = state.nhiThapBatTuModel;
            int indexName = nhiThapBatTuModel.tenSao.indexOf(':');
            String str =
                nhiThapBatTuModel.tenSao.substring(indexName + 1).trim() ==
                        "Xấu"
                    ? "#ec260c"
                    : "#1975d1";
            return Scaffold(
              appBar: AppBar(
                title: Text('Calendar'),
              ),
              body: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    TableCalendar(
                      headerVisible: false,
                      initialSelectedDay: widget.dateTime ?? DateTime.now(),
                      locale: 'vi_VN',
                      calendarController: calendarController,
                      startingDayOfWeek: StartingDayOfWeek.monday,
                      builders: CalendarBuilders(
                        todayDayBuilder: (context, date, events) => new Items()
                            .itemCalendar(
                                date, Colors.black, Colors.grey, false),
                        selectedDayBuilder: (context, date, events) {

                          BlocProvider.of<LunarDayBloc>(context)
                              .add(LunarDayChange(date));
                          if (date.weekday == DateTime.sunday) {
                            return new Items()
                                .itemCalendar(date, Colors.red, null, true);
                          }
                          return new Items()
                              .itemCalendar(date, Colors.black, null, true);
                        },
                        outsideDayBuilder: (context, date, events) =>
                            new Items().itemCalendar(date,
                                Colors.black.withOpacity(0.5), null, false),
                        outsideWeekendDayBuilder: (context, date, events) =>
                            new Items().itemCalendar(date,
                                Colors.black.withOpacity(0.5), null, false),
                        dayBuilder: (context, date, events) {
                          if (date.weekday == DateTime.sunday)
                            return CalendarItems(
                              dateTime: date,
                              select: false,
                              textColor: Colors.red,
                              background: null,
                            );
                          return CalendarItems(
                            dateTime: date,
                            select: false,
                            textColor: Colors.black,
                            background: null,
                          );

//                      return  new Items().itemCalendar(date,Colors.red, null,false);
//                    return  new Items().itemCalendar(date,Colors.black, null,false);
                        },
                      ),
                      initialCalendarFormat: CalendarFormat.month,
                    ),
                    //TuoiXungWidget(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(left: 10, right: 10),
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                child: Container(
                                  height: 338,
                                  margin: EdgeInsets.only(right: 10),
                                  child: Column(
                                    children: <Widget>[
                                      Container(
                                        padding: EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                            color: Color(0xffF0F0F0),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(10))),
                                        height: 219,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.stretch,
                                          children: <Widget>[
                                            Text(
                                              'Ngày ${state.lunarDay.day} Tháng ${state.lunarDay.month} (${state.isLeap}),\nNăm ${state.lunarDay.NameOfYear}',
                                              style: TextStyle(
                                                  fontSize: 21,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            state.lunarDay.ngayHoangDao != 0
                                                ? Text(
                                                    state.lunarDay
                                                                .ngayHoangDao ==
                                                            -1
                                                        ? 'Ngày Hắc Đạo'
                                                        : 'Ngày Hoàng Đạo',
                                                    style:
                                                        TextStyle(fontSize: 18),
                                                  )
                                                : SizedBox(),
                                            Text(
                                              'Ngày: ${state.lunarDay.NameOfDay}',
                                              style: TextStyle(fontSize: 18),
                                            ),
                                            Text(
                                              'Tháng: ${state.lunarDay.CanThang} ${state.lunarDay.ChiThang}',
                                              style: TextStyle(fontSize: 18),
                                            )
                                          ],
                                        ),
                                      ),
                                      Container(
                                          padding: EdgeInsets.all(10),
                                          decoration: BoxDecoration(
                                              color: Color(0xffF0F0F0),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10))),
                                          height: 107,
                                          child: Timers(
                                            dateTime: state.dateTime,
                                            listGoodHour:
                                                state.lunarDay.gioHoangDao,
                                          )

//                            Column(
//                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                              crossAxisAlignment: CrossAxisAlignment.stretch,
//                              children: <Widget>[
//                                Expanded(
//                                  child: Text('Giờ Hoàng Đạo',
//                                      style: TextStyle(fontSize: 16)),
//                                ),
//                                Text(
//                                  '${DateTime.now().hour}:${DateTime.now().minute}',
//                                  style: TextStyle(
//                                    fontSize: 36,
//                                  ),
//                                ),
//                                Text('Giờ ${getNameOfHour(state.dateTime)}',
//                                    style: TextStyle(fontSize: 16))
//                              ],
//                            ),
                                          )
                                    ],
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                  ),
                                ),
                                flex: 220,
                              ),
                              Expanded(
                                  flex: 125,
                                  child: Container(
                                    height: 338,
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                        color: Color(0xffF0F0F0),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10))),
                                    child: Column(
                                      children: <Widget>[
                                        Text(
                                          'Giờ Hoàng Đạo',
                                          style: TextStyle(fontSize: 14),
                                        ),
                                        ListView.builder(
                                          physics:
                                              NeverScrollableScrollPhysics(),
                                          shrinkWrap: true,
                                          itemBuilder: (context, index) =>
                                              new Items().goodHour(
                                                  state.lunarDay
                                                      .gioHoangDao[index],
                                                  true),
                                          itemCount:
                                              state.lunarDay.gioHoangDao.length,
                                        )
                                      ],
                                    ),
                                  ))
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          height: 1,
                          color: Color(0xffDDDDDD),
                        ),
                        state.lisEvent.length > 0
                            ? Container(
                                padding: EdgeInsets.all(10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      'SỰ KIỆN',
                                      style: TextStyle(fontSize: 16),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top: 15),
                                      child: ListView.builder(
                                          itemCount: state.lisEvent.length,
                                          shrinkWrap: true,
                                          physics:
                                              NeverScrollableScrollPhysics(),
                                          itemBuilder: (context, index) {
                                            final EventsInDay ev =
                                                state.lisEvent[index];
                                            return new Items()
                                                .itemEventInDay(ev);
                                          }),
                                    )
                                  ],
                                ),
                              )
                            : Container(),
                        Container(
                          height: 4,
                          color: Color(0xffF0F0F0),
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'TUỔI XUNG THEO NGÀY',
                                style: TextStyle(fontSize: 16),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 5),
                                child: GridView.builder(
                                  gridDelegate:
                                      SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2,
                                    childAspectRatio:
                                        MediaQuery.of(context).size.width /
                                            (100),
                                  ),
                                  itemBuilder: (_, index) => new Items()
                                      .goodHour(
                                          state.listTuoiXungTheoNgay[index],
                                          false),
                                  itemCount: state.listTuoiXungTheoNgay.length,
                                  scrollDirection: Axis.vertical,
                                  shrinkWrap: true,
                                  physics: NeverScrollableScrollPhysics(),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          height: 4,
                          color: Color(0xffF0F0F0),
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'TUỔI XUNG THEO THÁNG',
                                style: TextStyle(fontSize: 16),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 5),
                                child: GridView.builder(
                                  gridDelegate:
                                      SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2,
                                    childAspectRatio:
                                        MediaQuery.of(context).size.width /
                                            (100),
                                  ),
                                  itemBuilder: (_, index) => new Items()
                                      .goodHour(
                                          state.listTuoiXungTheoThang[index],
                                          false),
                                  itemCount: state.listTuoiXungTheoThang.length,
                                  scrollDirection: Axis.vertical,
                                  shrinkWrap: true,
                                  physics: NeverScrollableScrollPhysics(),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          height: 4,
                          color: Color(0xffF0F0F0),
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'XUẤT HÀNH',
                                style: TextStyle(fontSize: 16),
                              ),
                              Container(
                                alignment: Alignment.center,
                                height: 85,
                                width: MediaQuery.of(context).size.width,
                                margin: EdgeInsets.only(top: 15),
                                child: ListView.builder(
                                  itemBuilder: (context, index) => new Items()
                                      .itemXuatHanh(state.listXuatHanh[index]),
                                  itemCount: state.listXuatHanh.length,
                                  shrinkWrap: true,
                                  physics: NeverScrollableScrollPhysics(),
                                  scrollDirection: Axis.horizontal,
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),

                    Container(
                      color: Color(0xffF0F0F0),
                      height: 4,
                    ),

                    Container(
                      child: listTietKhi.length == 2
                          ? LinearPercentIndicator(
                              alignment: MainAxisAlignment.center,
                              animation: true,
                              lineHeight: 2,
                              animationDuration: 200,
                              percent: state.percent,
                              //center: Text((state.percent *100).toString() +'%'),
                              linearStrokeCap: LinearStrokeCap.roundAll,
                              progressColor: Colors.greenAccent,
                              leading: new Items().tietKhi(listTietKhi[0]),
                              trailing: new Items().tietKhi(
                                listTietKhi[1],
                              ),
                            )
                          : new Items().tietKhi(
                              listTietKhi[0],
                            ),
                      padding: EdgeInsets.only(
                          top: 10, left: 20, right: 20, bottom: 10),
                    ),

                    //  NhiThapWidget(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        HtmlWidget(
                            ' $openTag $str > ${state.nhiThapBatTuModel.tenSao.substring(0, indexName)} $closeTag <font color=#333333> ${state.nhiThapBatTuModel.tenSao.substring(indexName)}$closeTag'),
                        Text(state.nhiThapBatTuModel.binhSao),
                        HtmlWidget(
                            '$openTag #1975d1 >Nên Làm: $closeTag ${state.nhiThapBatTuModel.nenLam}'),
                        HtmlWidget(
                            '$openTag #ec260c >Kiêng cữ: $closeTag${state.nhiThapBatTuModel.kiengcu}'),
                        HtmlWidget(
                            '$openTag #1975d1 >Ngoại lệ: $closeTag${state.nhiThapBatTuModel.ngoaile}'),
                        Text(state.nhiThapBatTuModel.thoVinh),
                        Padding(
                          padding: EdgeInsets.all(20),
                          child: Text('Sao Tốt Xấu'),
                        ),
                        ListView.builder(
                            physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: state.listSao.length,
                            itemBuilder: (context, index) {
                              return Text(state.listSao[index].tenSao +
                                  '  ' +
                                  state.listSao[index].mota);
                            }),
                        Padding(
                          padding: EdgeInsets.all(20),
                          child: Text('Ngày Tốt Xấu'),
                        ),
                        ListView.builder(
                            physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: state.listNgayTotXau.length,
                            itemBuilder: (context, index) {
                              return Text(state.listNgayTotXau[index].tenNgay +
                                  '  ' +
                                  state.listNgayTotXau[index].mota);
                            }),
                        ListView.builder(
                            physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: state.lisEvent.length,
                            itemBuilder: (context, index) {
                              return HtmlWidget(state.lisEvent[index].title +
                                  '  ' +
                                  state.lisEvent[index].content);
                            }),
                      ],
                    )
                  ],
                ),
              ),
            );
          }
          if (state is LunarDayInit) {
            return Container(
                color: Colors.white,
                child: Center(
                  child: CircularProgressIndicator(),
                ));
          }
        }));
  }
}
