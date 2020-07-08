import 'dart:async' show Future;
import 'dart:convert';
import 'dart:core';
import 'package:flutter/services.dart'  show rootBundle;
import 'package:flutter_calendar/modal/event_day.dart';
import 'package:flutter_calendar/modal/quotes.dart';

Future<String> loadAssets(name)async{
  return await rootBundle.loadString(name);
}

/*Future<List<EventDay>> loadEventData()  async{
  var jsonString = await loadAssets('assets/data/events.json');
  List<EventDay> results = List();
  List jsonData = jsonDecode(jsonString);
  jsonData.forEach((element) {
    String localId = element['localId'];
    String category_id = element['category_id'];
    String title = element['title'];
    String content = element['content'];
    String image_url = element['image_url'];
    var start_date = DateTime.parse(element['start_date'].toString());
    var end_date = DateTime.parse(element['end_date'].toString());
    EventDay eventDay = EventDay(localId, category_id, title, content, image_url, start_date, end_date);
    results.add(eventDay);
  });
  return results;
}*/

Future<List<Quotes>> loadQuotesData()  async{
  var jsonString = await loadAssets('assets/data/quotes.json');
  List<Quotes> results = List();
  List jsonData = jsonDecode(jsonString);
  jsonData.forEach((element) {
    String idIdiom = element['idIdiom'];
    String contentIdiom = element['contentIdiom'];
    String authorIdiom = element['authorIdiom'];
    Quotes quotes = Quotes(idIdiom,contentIdiom,authorIdiom);
    results.add(quotes);
  });
  return results;
}
