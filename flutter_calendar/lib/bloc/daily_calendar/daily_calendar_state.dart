import 'package:equatable/equatable.dart';
import 'package:flutter_calendar/modal/event_day.dart';
import 'package:flutter_calendar/modal/quotes.dart';
abstract class DailyCalendarState extends Equatable{

 const DailyCalendarState();
@override
  List<Object> get props => [];
}

class DailyCalendarInitial extends DailyCalendarState {
  final List listEvents;
  final List listQuote;

  DailyCalendarInitial(this.listEvents, this.listQuote);
}

class FetchDataFailure extends DailyCalendarState{

}

class FetchDataSuccess extends DailyCalendarState {
  final List listEvents;
  final List listQuote;
  final List personalEvent;
  const FetchDataSuccess(this.listEvents, this.listQuote, this.personalEvent ) : super() ;}




