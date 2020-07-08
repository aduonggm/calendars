import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_calendar/modal/events_in_month.dart';
import 'package:flutter_calendar/respons/respons.dart';

import 'event_event.dart';
import 'event_state.dart';
import 'package:rxdart/rxdart.dart';
class EventsBloc extends Bloc<EventsEvent, EventsState> {
  @override
  EventsState get initialState => InitEventState();

  @override
  Stream<Transition<EventsEvent, EventsState>> transformEvents(
      Stream<EventsEvent> events,
      TransitionFunction<EventsEvent, EventsState> transitionFn) {
    return super.transformEvents(
      events.debounceTime(const Duration(milliseconds: 100)),
      transitionFn,);
  }

  @override
  Stream<EventsState> mapEventToState(EventsEvent event) async* {
    final currentState = state;
    if (event is Fetch) {
      try {
        if (currentState is InitEventState) {
          List<EventOfMonth> list =  await getList(event.month , event.year, false);
          List<EventOfMonth> list2 = await getList(event.month -1 , event.year, true);
//          List<EventOfMonth> temp1 = [];
//          List<EventOfMonth> temp2 = [];
//          List<EventOfMonth> temp3 = [];
//          temp1 = await DataRespons.getListEventOfMonth(
//              event.month > 12 ? event.year + 1 : event.year,
//              event.month > 12 ? event.month - 12 : event.month, false);
//          temp2 = await DataRespons.getListEventOfMonth(
//              event.month + 1 > 12 ? event.year + 1 : event.year,
//              event.month + 1 > 12 ? event.month + 1 - 12 : event.month + 1,
//              false);
//          temp3 = await DataRespons.getListEventOfMonth(
//              event.month + 2 > 12 ? event.year + 1 : event.year,
//              event.month + 2 > 12 ? event.month + 2 - 12 : event.month + 2,
//              false);
//          list.addAll(temp1);
//          list.addAll(temp2);
//          list.addAll(temp3);
          yield EventsUpdate(topList: list2, bottomList: list);
          return;
        }
        if (currentState is EventsUpdate) {
          List<EventOfMonth> temp1 = [];
          List<EventOfMonth> temp2 = [];
          List<EventOfMonth> temp3 = [];
          if (!event.isTop) {
            List<EventOfMonth> list = await getList(event.month , event.year, false);
//            temp1 = await DataRespons.getListEventOfMonth(
//                event.month > 12 ? event.year + 1 : event.year,
//                event.month > 12 ? event.month - 12 : event.month, false);
//            temp2 = await DataRespons.getListEventOfMonth(
//                event.month + 1 > 12 ? event.year + 1 : event.year,
//                event.month + 1 > 12 ? event.month + 1 - 12 : event.month + 1,
//                false);
//            temp3 = await DataRespons.getListEventOfMonth(
//                event.month + 2 > 12 ? event.year + 1 : event.year,
//                event.month + 2 > 12 ? event.month + 2 - 12 : event.month + 2,
//                false);
//            list.addAll(temp1);
//            list.addAll(temp2);
//            list.addAll(temp3);
            yield EventsUpdate(bottomList: currentState.bottomList + list,
                topList: currentState.topList,
                updateTop: list);
          } else {
            List<EventOfMonth> list = await getList(event.month , event.year, true);
//            temp1 = await DataRespons.getListEventOfMonth(
//                event.month <= 0 ? event.year - 1 : event.year,
//                event.month <= 0 ? 12 + event.month : event.month, true);
//            temp2 = await DataRespons.getListEventOfMonth(
//                event.month - 1 <= 0 ? event.year - 1 : event.year,
//                event.month - 1 <= 0 ? event.month - 1 + 12 : event.month - 1,
//                true);
//            temp3 = await DataRespons.getListEventOfMonth(
//                event.month - 2 <= 0 ? event.year - 1 : event.year,
//                event.month - 2 <= 0 ? event.month - 2 + 12 : event.month - 2,
//                true);
//            list.addAll(temp1);
//            list.addAll(temp2);
//            list.addAll(temp3);
            yield EventsUpdate(bottomList: currentState.bottomList,
                topList: currentState.topList + list);
          }
        }
      } catch (_) {
        yield EventsError();
      }
    }

    if (event is Scroll) {
      if (currentState is EventsUpdate) {
        yield EventsUpdate(topList: currentState.topList,
            bottomList: currentState.bottomList,
            dateTime: event.dateTime);
      }
    }

//    if(event is PickDate){
//      if(currentState is EventsUpdate){
//        yield EventsUpdate(bottomList: currentState.bottomList, topList:  currentState.topList, offset: event.dateTime);
//      }
//    }
  }

  Future<List<EventOfMonth>> getList(int month , year, bool top) async {
    List<EventOfMonth> list = [];
    List<EventOfMonth> temp1 = [];
    List<EventOfMonth> temp2 = [];
    List<EventOfMonth> temp3 = [];
    if(top){
      temp1 = await DataRespons.getListEventOfMonth(
          month <= 0 ? year - 1 : year,
          month <= 0 ? 12 + month : month, true);
      temp2 = await DataRespons.getListEventOfMonth(
          month - 1 <= 0 ? year - 1 : year,
          month - 1 <= 0 ? month - 1 + 12 : month - 1,
          true);
      temp3 = await DataRespons.getListEventOfMonth(
          month - 2 <= 0 ? year - 1 : year,
          month - 2 <= 0 ? month - 2 + 12 : month - 2,
          true);
      list.addAll(temp1);
      list.addAll(temp2);
      list.addAll(temp3);

    }else{
      temp1 = await DataRespons.getListEventOfMonth(
          month > 12 ? year + 1 : year,
          month > 12 ? month - 12 : month, false);
      temp2 = await DataRespons.getListEventOfMonth(
          month + 1 > 12 ? year + 1 : year,
          month + 1 > 12 ? month + 1 - 12 : month + 1,
          false);
      temp3 = await DataRespons.getListEventOfMonth(
          month + 2 > 12 ? year + 1 : year,
          month + 2 > 12 ? month + 2 - 12 : month + 2,
          false);
      list.addAll(temp1);
      list.addAll(temp2);
      list.addAll(temp3);
    }
    return list;


  }


}




