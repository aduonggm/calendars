
import 'package:equatable/equatable.dart';
/*






  String note;*/
class EventDay extends Equatable{
  int localId;
  int typeId;
  String title;
  String content;
  String image_url;
  String start_date;
  String end_date;
  String location;
  int loop;
  String alert_info;
  int dateType;
  int allDay;
  int changeType;

  EventDay(
  { this.localId,
    this.typeId,
    this.title,
    this.content,
    this.image_url,
    this.start_date,
    this.end_date,
    this.location,
    this.loop,
    this.alert_info,
    this.dateType,
    this.allDay,this.changeType});

  EventDay.fromJsonMap(Map<String, dynamic> map)
      : localId = map["localId"],
        typeId = map["type_id"],
        title = map["title"],
        content = map["content"],
        image_url = map["image_url"],
        start_date = map["start_date"],
        location = map["location"],
        end_date = map["end_date"],
        loop = map["loop"],
        alert_info = map["alert_info"],
        dateType = map["date_type"],
        allDay = map["allDay"],
        changeType = map["changeType"]
  ;

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = title;
    data['localId'] = localId;
    data['type_id'] = typeId;
    data['content'] = content;
    data['image_url'] = image_url;
    data['start_date'] = start_date;
    data['location'] = location;
    data['end_date'] = end_date;
    data['loop'] = loop;
    data['alert_info'] = alert_info;
    data["date_type"] = dateType;
    data["allDay"] = allDay;
    data["changeType"]= changeType;

    return data;
  }

  @override
  // TODO: implement props
  List<Object> get props => [
    this.localId,
    this.typeId,
    this.title,
    this.content,
    this.image_url,
    this.start_date,
    this.end_date,
    this.location,
    this.loop,
    this.alert_info,
    this.dateType,
    this.allDay
  ];
}