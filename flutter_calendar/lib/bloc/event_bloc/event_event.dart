
import 'package:equatable/equatable.dart';
class EventsEvent extends Equatable{
  const EventsEvent();
  @override
  List<Object> get props => [];
}
class Fetch extends EventsEvent{
  final bool isTop;
  final int month,year;
  const Fetch( this.isTop, this.month, this.year,);
  @override
  List<Object> get props => [ this.isTop, this.month, this.year];

}

class Scroll extends EventsEvent{
  final DateTime dateTime ;
  Scroll(this.dateTime);
  @override
  List<Object> get props => [this.dateTime];
}

class PickDate extends EventsEvent{
  final DateTime dateTime ;
  PickDate(this.dateTime);
  @override
  List<Object> get props => [this.dateTime];
}
