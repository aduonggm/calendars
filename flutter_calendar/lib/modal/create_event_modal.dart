import 'package:equatable/equatable.dart';
import 'package:flutter_calendar/modal/alert_event.dart';

class CreateEventModal extends Equatable{
  int idPrv;
  int id;
  String typeEvent;
  String title;
  int typeDate;
  int allDay;
  String startDate;
  String endDate;
  String location;
  int repeat;
  String alerts;
  String note;


  CreateEventModal({this.id, this.typeEvent, this.title, this.typeDate,
    this.allDay, this.startDate, this.endDate, this.location, this.repeat,
    this.alerts, this.note});

  CreateEventModal.fromJsonMap(Map<String, dynamic> map)
      : idPrv = map["id"],
        id = map["id_type"],
        typeEvent = map["type"],
        title = map["title"],
        typeDate = map["type_date"],
        allDay = map["all_day"],
        startDate = map["start_day"],
        endDate = map["end_day"],
        location = map["location"],
        repeat = map["repeat"],
        alerts = map["alert"],
        note = map["note"];


  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = idPrv;
    data['id_type'] = id;
    data['type'] = typeEvent;
    data['title'] = title;
    data['type_date'] = typeDate;
    data['all_day'] = allDay;
    data['start_day'] = startDate;
    data['end_day'] = endDate;
    data['location'] = location;
    data['repeat'] = repeat;
    data['alert'] = alerts;
    data["note"] = note;
    return data;
  }

  @override
  // TODO: implement props
  List<Object> get props => [
    this.id,
    this.typeEvent,
    this.title,
    this.typeDate,
    this.allDay,
    this.startDate,
    this.endDate,
    this.location,
    this.repeat,
    this.alerts,
    this.note
  ];

}