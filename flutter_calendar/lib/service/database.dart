import 'dart:async';
import 'dart:convert';
import 'package:flutter_calendar/modal/event_day.dart';
import 'package:flutter_calendar/modal/event_in_year.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqflite/sqlite_api.dart';


final String loop_info = 'loop_info';
final String start_date = 'start_date';
final String image_url = 'image_url';
final String content = 'content';
final String localId = 'localId';
final String TabName = 'EVENT';
final String tags = 'tags';
final String title = 'title';
final String type_id = 'type_id';

// init tab event
//CREATE TABLE "EVENT" (
//	`localId`	INTEGER PRIMARY KEY AUTOINCREMENT,
//	`serverId`	INTEGER,
//	`category_id`	INTEGER,
//	`title`	TEXT,
//	`content`	TEXT,
//	`image_url`	TEXT,
//	`location`	TEXT,
//	`location_longitude`	TEXT,
//	`location_latitude`	TEXT,
//	`tags`	TEXT,
//	`start_date`	TEXT,
//	`end_date`	TEXT,
//	`status`	INTEGER,
//	`type_id`	INTEGER,
//	`metadata`	TEXT,
//	`loop`	INTEGER,
//	`create_time`	TEXT,
//	`modify_time`	TEXT,
//	`create_by`	INTEGER,
//	`modify_by`	INTEGER,
//	`date_type`	INTEGER,
//	`loop_info`	TEXT,
//	`timezone`	TEXT,
//	`alert_info`	TEXT,
//	`rsvp`	INTEGER,
//	`allDay`	INTEGER,
//	`timezone_offset`	INTEGER,
//	`changeType`	INTEGER,
//	`calendar_id`	TEXT,
//	`occurrence_id`	TEXT,
//	`ical_uid`	TEXT,
//	`account_id`	TEXT,
//	`attendee_response_status`	TEXT,
//	`old_calendar_id`	TEXT,
//	`google_id`	TEXT,
//	`facebook_id`	TEXT
//)

class DBProvider {
  DBProvider._();

  static final DBProvider db = DBProvider._();
  Database _database;

  Future<Database> get database async {
    if (_database != null) return _database;
    // if _database is null we instantiate it
    _database = await initDB();
    return _database;
  }

  initDB() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, "DataEvent.sqlite");
    return await openDatabase(path, version: 1, onOpen: (db) {},
        onCreate: (Database db, int version) async {
          await db.execute("CREATE TABLE IF NOT EXISTS $TabName "
              "($localId	INTEGER PRIMARY KEY AUTOINCREMENT,"
              "serverId	INTEGER,"
              "category_id	INTEGER,"
              "$title	TEXT,"
              "$content	TEXT,"
              "$image_url	TEXT,"
              "location	TEXT,"
              "location_longitude	TEXT"
              ",location_latitude	TEXT,"
              "$tags	TEXT,"
              "$start_date	TEXT,"
              "end_date	TEXT,status	INTEGER,"
              "$type_id	INTEGER,"
              "metadata	TEXT,"
              "loop	INTEGER,"
              "create_time	TEXT,"
              "modify_time	TEXT,"
              "create_by	INTEGER,"
              "modify_by	INTEGER,"
              "date_type	INTEGER,"
              "$loop_info	TEXT,"
              "timezone	TEXT,"
              "alert_info	TEXT,"
              "rsvp	INTEGER,"
              "allDay	INTEGER,"
              "timezone_offset	INTEGER"
              ",changeType	INTEGER,"
              "calendar_id	TEXT,"
              "occurrence_id	TEXT,"
              "ical_uid	TEXT,"
              "account_id	TEXT,"
              "attendee_response_status	TEXT,"
              "old_calendar_id	TEXT,"
              "google_id	TEXT,"
              "facebook_id	TEXT)");
        });
  }

  Future<List<EventDay>> getEvents(int type) async {
    final db = await database;
    var res = await db.query("$TabName",where: "$type_id = ?",whereArgs: [type]);
    List<EventDay> listss = [];
    for(Map i in res){
      EventDay results = EventDay.fromJsonMap(i);
      listss.add(results);
    }
    return listss;
  }
  Future<List<EventDay>> getEventsPersonal() async {
    final db = await database;
    var res = await db.query("$TabName",where: "changeType = ?",whereArgs: [1]);
    List<EventDay> listss = [];
    for(Map i in res){
      EventDay results = EventDay.fromJsonMap(i);
      listss.add(results);
    }
    return listss;
  }


  /*getEventOfYear(int type) async {
    final db = await database;
    var res = await db.query("$TabName", where: "$type_id = ?", whereArgs: [type]);
    List<EventsOfYear> listss = [];
    for(Map i in res){
      EventsOfYear eventsOfYear = EventsOfYear.fromJsonMap(i);
      listss.add(eventsOfYear);
    }
    return listss;
  }*/
  getEventOfYear(int type,int types) async {
    final db = await database;
    var res = await db.query("$TabName", where: "$type_id =  $type or $type_id = $types");
    List<EventsInDay> listss = [];
    for(Map i in res){
      EventsInDay eventsOfYear = EventsInDay.fromJsonMap(i);
      listss.add(eventsOfYear);
    }

    return listss;
  }
  createEvent(EventDay eventDay) async{
    final db = await database;
    var result = await db.insert("EVENT", eventDay.toJson());
    return result;
  }
  deleteAll() async {
    final db = await database;
    db.rawDelete("Delete * from $TabName");
  }
}