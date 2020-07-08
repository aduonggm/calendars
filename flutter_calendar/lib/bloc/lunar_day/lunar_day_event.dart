
import 'package:equatable/equatable.dart';


class LunarDayEvent extends Equatable{
  @override
  List<Object> get props => [];

}

class LunarDayChange extends LunarDayEvent{
  final DateTime dateTime;

  LunarDayChange(this.dateTime);
}