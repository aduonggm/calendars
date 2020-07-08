import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_calendar/bloc/daily_calendar/daily_calendar_event.dart';
import 'package:flutter_calendar/bloc/daily_calendar/daily_calendar_state.dart';
import 'package:flutter_calendar/modal/create_event_modal.dart';
import 'package:flutter_calendar/modal/event_day.dart';
import 'package:flutter_calendar/modal/quotes.dart';
import 'package:flutter_calendar/service/data_service.dart';
import 'package:flutter_calendar/service/database.dart';
import 'package:flutter_calendar/service/person_event_database.dart';
import 'package:flutter_calendar/utils/date_utils.dart';
import 'package:flutter_calendar/utils/solar_lular_utils.dart';
import 'package:flutter_calendar/widget/daily.dart';

class DailyCalendarBloc extends Bloc<DailyCalendarEvent, DailyCalendarState> {
  List<EventDay> listEventDays = new List();
  List<EventDay> listEventDays2 = new List();
  List<Quotes> listQuotes = new List();
  List<CreateEventModal> listPersonalEvent = new List();
  List<String> quoteDefaults = ["", "", ""];
  List<String> authorDefaults = ["", "", ""];
  bool check = false;

  static DateTime dateTime = DateTime.now();
  DateTime getHour = DateTime.now();
  var dayOfWeek = getNameDayOfWeek(dateTime);
  List<Widget> pages = [];
  @override
  DailyCalendarState get initialState =>
      DailyCalendarInitial(listEventDays, listQuotes);
  @override
  Stream<Transition<DailyCalendarEvent, DailyCalendarState>> transformEvents(
      Stream<DailyCalendarEvent> events, transitionFn) {
    return super.transformEvents(events, transitionFn);
  }

  @override
  Stream<DailyCalendarState> mapEventToState(DailyCalendarEvent event) async* {
    var currentState = state;
    if (event is DatabaseFetched) {
      try {
        if (currentState is DailyCalendarInitial) {
          listQuotes = await loadQuotesData();
          List<EventDay> list6 = await DBProvider.db.getEvents(6);
          List<EventDay> list14 = await DBProvider.db.getEvents(14);
          List<EventDay> listEventPersonal = await DBProvider.db.getEventsPersonal();
          listEventDays = list6 + list14 + listEventPersonal;
          yield DailyCalendarInitial(listEventDays, listQuotes);
          yield FetchDataSuccess(listEventDays, listQuotes, listPersonalEvent);
          return;
        }
        if (currentState is FetchDataSuccess) {
          yield FetchDataSuccess(listEventDays, listEventDays,listPersonalEvent);
          return;
        }
      } catch (_) {
        FetchDataFailure();
      }
    }
  }
}
