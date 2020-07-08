import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_calendar/modal/create_event_modal.dart';
import 'package:flutter_calendar/modal/event_day.dart';

abstract class CreateEventEvents extends Equatable{
  @override
  // TODO: implement props
  List<Object> get props => throw UnimplementedError();
}
class LoadDataWidget extends CreateEventEvents{
 final CreateEventModal data;

  LoadDataWidget({this.data});

}
class CreateNewEvent extends CreateEventEvents{
  final EventDay eventDay;
  CreateNewEvent(this.eventDay);
  @override
  // TODO: implement props
  List<Object> get props => [eventDay];
}

