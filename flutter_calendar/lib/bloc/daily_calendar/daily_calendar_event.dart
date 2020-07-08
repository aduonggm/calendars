
import 'package:equatable/equatable.dart';

abstract class DailyCalendarEvent extends Equatable{

 const DailyCalendarEvent( );

    @override
  List<Object> get props =>[];
}

class DatabaseFetched extends DailyCalendarEvent{}

