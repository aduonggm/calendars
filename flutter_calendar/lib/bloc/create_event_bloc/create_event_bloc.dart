import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_calendar/bloc/create_event_bloc/create_event_event.dart';
import 'package:flutter_calendar/bloc/create_event_bloc/create_event_state.dart';
import 'package:flutter_calendar/modal/create_event_modal.dart';
import 'package:flutter_calendar/service/database.dart';
import 'package:flutter_calendar/service/person_event_database.dart';

 class CreateEventBloc extends Bloc<CreateEventEvents , CreateEventState>{
   String location = "Địa điểm()";
   String repeat = "Không lặp lại";
   String alerts = "1";
   String note = "Ghi chú";

   CreateEventModal data;
  @override
  // TODO: implement initialState
  CreateEventState get initialState => CreateEventStateInitial();

  @override
  Stream<CreateEventState> mapEventToState(CreateEventEvents event) async* {
      if(event is LoadDataWidget){
        yield CreateEventStateInitial();
      }
      if(event is CreateNewEvent){
        try{
          await  DBProvider.db.createEvent(event.eventDay);

          yield CreateEventSuccess();
          yield CreateEventStateInitial();
        }catch(_){
          yield CreateEventFailed();
          yield CreateEventStateInitial();
        }


      }


}
 }