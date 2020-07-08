
import 'package:flutter_calendar/bloc/event_bloc/blocs.dart';
import 'package:flutter_calendar/widget/list_event.dart';
import 'package:intl/intl.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class ListEvent extends StatefulWidget {
  @override
  EventState createState() {
    // TODO: implement createState
    return EventState();
  }
}

class EventState extends State<ListEvent> {
//  RefreshController _refreshController = RefreshController(initialRefresh: false);
  double extentAfter;
  ScrollController _scrollController;
  final _scrollThreshold = 200.0;

//  void _onLoading() async{
//    // monitor network fetch
//    await Future.delayed(Duration(milliseconds: 1000));
//    // if failed,use loadFailed(),if no data return,use LoadNodata()
//    items.add((items.length+1).toString());
//    if(mounted)
//      setState(() {
//
//      });
//    _refreshController.loadComplete();
//  }
//  @protected
//  void restoreScrollOffset() {
//    if (pixels == null) {
//      final double value = PageStorage.of(context.storageContext)?.readState(context.storageContext) as double;
//      if (value != null)
//        correctPixels(value);
//    }
//  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _scrollController = ScrollController();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<EventsBloc>(
      create: (BuildContext context) => EventsBloc()
        ..add(Fetch(false, DateTime.now().month, DateTime.now().year)),
      child: Scaffold(
        body: BlocBuilder<EventsBloc, EventsState>(builder: (context, state) {
          if (state is EventsUpdate) {
           // _scrollController.addListener(() => _onScroll(state, context));
            return ListEvents(state: state,);
//              ListView.builder(
//
//            physics: BouncingScrollPhysics(),
//          controller: _scrollController,
//          itemCount: state.bottomList.length,
//          itemBuilder: (context, index) {
//          return  new Items().itemEvent(state.bottomList[index]);
//          });

          }
          return Container();
        }),
      ),
    );
  }

//  void _onScroll(EventsUpdate eventsUpdate, BuildContext context) {
//    var state = eventsUpdate;
//    final maxScroll = _scrollController.position.maxScrollExtent;
//    final currentScroll = _scrollController.position.pixels;
////    if (_scrollController.offset < -100) {
////      // print(_scrollController.offset);
////      DateTime tempDate = new DateFormat("yyyy-MM-dd hh:mm:ss")
////          .parse(state.topList[0].start_date);
////      BlocProvider.of<EventsBloc>(context)
////        ..add(Fetch(true, tempDate.month - 1, state.topList[0].solarYear));
////    }
//    if (maxScroll - currentScroll <= _scrollThreshold) {
//      DateTime tempDate = new DateFormat("yyyy-MM-dd hh:mm:ss")
//          .parse(state.bottomList[state.bottomList.length - 1].start_date);
//      BlocProvider.of<EventsBloc>(context)
//        ..add(Fetch(false, tempDate.month + 1,
//            state.bottomList[state.bottomList.length - 1].solarYear));
//    }
//  }

}
