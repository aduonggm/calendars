
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_calendar/bloc/event_bloc/blocs.dart';
import 'package:flutter_calendar/modal/events_in_month.dart';
import 'package:rect_getter/rect_getter.dart';
import 'package:table_calendar/table_calendar.dart';
import 'bottom_loader.dart';
import 'items.dart';

class ListEvents extends StatefulWidget {
  final EventsUpdate state;

  const ListEvents({Key key, this.state}) : super(key: key);

  @override
  ListState createState() {
    return ListState();
  }
}

class ListState extends State<ListEvents> {
  GlobalKey _keyRed = GlobalKey();
  final Key centerKey = ValueKey('second-sliver-list');
  double currentScroll = 0.0;
  static var keysOfTop = {};
  static var keysOfBottom = {};
  static var listBottomKey = RectGetter.createGlobalKey();
  static var listTopKey = RectGetter.createGlobalKey();
  CalendarController calendarController;

  final double heightItems = 50;
  ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = new ScrollController();
    calendarController = new CalendarController();

  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();

    _scrollController.dispose();
    calendarController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<EventsBloc>(
      create: (context) => EventsBloc()
        ..add(Fetch(false, DateTime.now().month, DateTime.now().year)),
      child: BlocListener<EventsBloc, EventsState>(
        condition: (previous, current) => previous.props != current.props,
        listener: (context, state) {
          if (state is EventsUpdate && state.dateTime != null) {
            calendarController.setSelectedDay(state.dateTime);
          }
//          if (state is EventsUpdate && state.offset != null) {
//
//            print('offfset items ${_scrollToIndex(state, state.offset)}    ');
//
//            _scrollController.jumpTo( _scrollToIndex(state, state.offset) );
//          }
        },
        child: BlocBuilder<EventsBloc, EventsState>(builder: (context, state) {
          if (state is EventsUpdate) {
            return Scaffold(


              floatingActionButton:  FloatingActionButton(
                onPressed: () {
                 setState(() {
                   _scrollController.animateTo(10, duration: Duration(milliseconds: 1500), curve: Curves.easeInOutBack);
                  // calendarController.setSelectedDay(DateTime.now());
                 });
                },
                child: Icon(Icons.event),
                backgroundColor: Colors.green,
              ),
              body:  SafeArea(
                top: true,
                bottom: false,
                child: Column(
                  children: <Widget>[

                    state.dateTime !=null? Text('Tháng  ${state.dateTime.month.toString().padLeft(2,'0')} - ${state.dateTime.year}')
                    : Text('Tháng  ${DateTime.now().month.toString().padLeft(2,'0')} - ${DateTime.now().year}') ,
                    TableCalendar(
                      headerVisible: false,
                      locale: 'vi_VN',
                      calendarController: calendarController,
                      startingDayOfWeek: StartingDayOfWeek.monday,
                      builders: CalendarBuilders(
                        todayDayBuilder: (context, date, events) => new Items()
                            .itemCalendar(
                            date, Colors.black, Colors.grey, false),
                        selectedDayBuilder: (context, date, events) {
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
                          if (date.weekday == DateTime.sunday) {
                            return new Items()
                                .itemCalendar(date, Colors.red, null, false);
                          }
                          return new Items()
                              .itemCalendar(date, Colors.black, null, false);
                        },
                      ),
                      initialCalendarFormat: CalendarFormat.week,
                    ),
                    Expanded(
                        child: Container(
                          height: MediaQuery.of(context).size.height,
                          child: NotificationListener(

                            onNotification: (ScrollNotification  scrollNotification) {
                              //scroll up
                              if( scrollNotification.metrics.maxScrollExtent  - scrollNotification.metrics.pixels <= 200){
                                if (state.bottomList[state.bottomList.length - 1].eventsInDay != null) {
                                  BlocProvider.of<EventsBloc>(context)..add(Fetch(false, state.bottomList[state.bottomList.length - 1].eventsInDay.dateTime.month + 1, state.bottomList[state.bottomList.length - 1].eventsInDay.dateTime.year));
                                } else {
                                  BlocProvider.of<EventsBloc>(context)..add(Fetch(false, state.bottomList[state.bottomList.length - 1].listEvent[0].dateTime.month + 1, state.bottomList[state.bottomList.length - 1].listEvent[0].dateTime.year));
                                }
                                //scroll down
                              }else if(scrollNotification.metrics.pixels - scrollNotification.metrics.minScrollExtent <= 300){

                                if (state.topList != null && state.topList.length > 0) {
                                  BlocProvider.of<EventsBloc>(context)..add(Fetch(true, state.topList[state.topList.length - 1].eventsInDay.dateTime.month - 1, state.topList[state.topList.length - 1].eventsInDay.dateTime.year));
                                } else {
                                  if (state.bottomList[1].eventsInDay != null)
                                    BlocProvider.of<EventsBloc>(context)..add(Fetch(true, state.bottomList[1].eventsInDay.dateTime.month - 1, state.bottomList[1].eventsInDay.dateTime.year));
                                  else
                                    BlocProvider.of<EventsBloc>(context)..add(Fetch(true, state.bottomList[1].listEvent[0].dateTime.month - 1, state.bottomList[1].listEvent[0].dateTime.year));
                                }
                              }
                              if (scrollNotification is ScrollEndNotification) {

                                print('scroll end');

                                if (RectGetter.getRectFromKey(listTopKey).bottom.toInt() >  _getPositions().toInt()) {
                                  print('on topppp');
                                  int index = getVisibleTop();
                                  if (state.topList != null && state.topList.length > 0 && index < state.topList.length) {
                                    print('setCalendar');
                                    getItemInTopList(index, state.topList, context);
                                  }
                                } else {
                                  print('on bottom');
                                  int index = getVisibleBottom();
                                  if (state.bottomList != null &&
                                      state.bottomList.length > 0 &&
                                      index != null &&
                                      index < state.bottomList.length) {
                                    getItemInBottomList(index, state.bottomList, context);
                                  }
                                }
                              }
                              return;
                            },
                            child: CustomScrollView(
                              key: _keyRed,
                              controller: _scrollController,
                              physics: AlwaysScrollableScrollPhysics(),
                              center: centerKey,
                              slivers: <Widget>[
                                SliverList(
                                  delegate:
                                  SliverChildBuilderDelegate((_, int index) {
                                    return RectGetter(
                                      key: listTopKey,
                                      child: ListView.builder(
                                        physics: NeverScrollableScrollPhysics(),
                                        reverse: true,
                                        shrinkWrap: true,
                                        itemCount: state.topList != null
                                            ? state.topList.length
                                            : 0,
                                        itemBuilder:
                                            (BuildContext context, int index) {
                                          keysOfTop[index] =
                                              RectGetter.createGlobalKey();
                                          return RectGetter(
                                            key: keysOfTop[index],
                                            child: new Items()
                                                .itemEvent(state.topList[index]),
                                          );
                                        },
                                      ),
                                    );
                                  }, childCount: 1),
                                ),
                                SliverList(
                                  key: centerKey,
                                  delegate: SliverChildBuilderDelegate((_, indexx) {
                                    return RectGetter(
                                      key: listBottomKey,
                                      child: ListView.builder(
                                        physics: NeverScrollableScrollPhysics(),
                                        // reverse: true,
                                        shrinkWrap: true,
                                        itemCount: state.bottomList.length + 1,
                                        itemBuilder:
                                            (BuildContext context, int index) {
                                          keysOfBottom[index] =
                                              RectGetter.createGlobalKey();
                                          return RectGetter(
                                            key: keysOfBottom[index],
                                            child: index >= state.bottomList.length
                                                ? BottomLoader()
                                                : new Items().itemEvent(
                                                state.bottomList[index]),
                                          );
                                        },
                                      ),
                                    );
                                  }, childCount: 1
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ))
                  ],
                ),
              ),
            );
          }
          if (state is EventsError) {
            return Center(
              child: Text('error'),
            );
          }
          return Container();
        }),
      ),
    );
  }

  getItemInBottomList(int index, List<EventOfMonth> bottomList, BuildContext context) {
    EventOfMonth eventOfMonth = bottomList[index];
    if (eventOfMonth.eventsInDay != null) {
      if (eventOfMonth.eventsInDay.content != null) {
        setCalendar(context, eventOfMonth.eventsInDay.dateTime);
      } else {
        getItemInBottomList(index + 1, bottomList, context);
      }
    } else
setCalendar(context, eventOfMonth.listEvent[0].dateTime);
  }

  setCalendar(BuildContext context , DateTime dateTime){

//    setState(() {
//      calendarController.setSelectedDay(dateTime);
//    });

          BlocProvider.of<EventsBloc>(context)
        ..add(Scroll(dateTime));


  }

  getItemInTopList(int index, List<EventOfMonth> topList, BuildContext context) {
    EventOfMonth eventOfMonth = topList[index];
    if (eventOfMonth.eventsInDay != null) {
      if (eventOfMonth.eventsInDay.content != null) {
        setCalendar(context, eventOfMonth.eventsInDay.dateTime);
      } else {
        getItemInTopList(index -1, topList, context);
      }
    } else {
      setCalendar(context, eventOfMonth.listEvent[0].dateTime);
    }
  }
  int getVisibleTop() {
    int indexxx;
    for (int i = keysOfTop.length - 1; i >= 0; i--) {
      var itemRect = RectGetter.getRectFromKey(keysOfTop[i]);
      if (itemRect != null &&
          itemRect.bottom >  _getPositions() &&
          itemRect.top < MediaQuery.of(context).size.height) {
        indexxx = i;
        return i;
      }
    }
    return indexxx;
  }

  int getVisibleBottom() {
    int indexxxx;
    for (int i = 0; i < keysOfBottom.length; i++) {
      var itemRect = RectGetter.getRectFromKey(keysOfBottom[i]);
      if (itemRect != null &&
          itemRect.bottom >  _getPositions() &&
          itemRect.top < MediaQuery.of(context).size.height) {
        indexxxx = i;
        return i;
      }
    }
    return indexxxx;
  }
  _getPositions() {
    final RenderBox renderBoxRed = _keyRed.currentContext.findRenderObject();
    final positionRed = renderBoxRed.localToGlobal(Offset.zero);
    return positionRed.dy;
  }
}
