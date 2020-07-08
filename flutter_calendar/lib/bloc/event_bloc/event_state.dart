
import 'package:equatable/equatable.dart';
import 'package:flutter_calendar/modal/events_in_month.dart';

class EventsState extends Equatable {
  const EventsState();

  @override
  List<Object> get props => [];
}

class InitEventState extends EventsState {}

class EventsError extends EventsState {}

class EventsUpdate extends EventsState {
  final List<EventOfMonth> topList;
  final List<EventOfMonth> bottomList;
  final List<EventOfMonth> updateTop;
  final DateTime dateTime;
  final DateTime offset;
  final bool hasReachedMax;

  const EventsUpdate(
      {this.offset,
      this.dateTime,
      this.updateTop,
      this.bottomList,
      this.topList,
      this.hasReachedMax});

  EventsUpdate copyWith({
    List<EventOfMonth> bottomList,
    List<EventOfMonth> update,
    List<EventOfMonth> topList,
    DateTime dateTime,
    bool hasReachedMax,
  }) {
    return EventsUpdate(
        bottomList: bottomList != null ? bottomList : this.bottomList,
        hasReachedMax: hasReachedMax ?? this.hasReachedMax,
        topList: topList != null ? topList : this.topList,
        dateTime: dateTime);
  }

  @override
  List<Object> get props => [
        this.topList,
        hasReachedMax,
        this.bottomList,
        this.updateTop,
        this.dateTime,
        this.offset
      ];
}
