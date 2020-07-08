import 'dart:convert';

import 'dart:io';
import 'package:flutter_calendar/modal/create_event_modal.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DBPersonEventProvider {
  DBPersonEventProvider._();
  static final DBPersonEventProvider db = DBPersonEventProvider._();
  Database _database;
  Future<Database> get database async {
    if (_database != null) return _database;
    // if _database is null we instantiate it
    _database = await initDB();
    return _database;
  }

  initDB() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, "DataPersonEvent.sqlite");
    return openDatabase(path, version: 1, onOpen: (db) {},
          onCreate: (Database db, int version) async {
                  await db.execute(
                      "CREATE TABLE IF NOT EXISTS EVENT "
                      "(id INTEGER PRIMARY KEY AUTOINCREMENT,"
                      "id_type INTEGER,"
                      "type TEXT,"
                      "title TEXT,"
                      "type_date INTEGER,"
                      "all_day INTEGER,"
                      "start_day TEXT,"
                      "end_day TEXT,"
                      "location TEXT,"
                      "repeat INTEGER,"
                      "alert TEXT,"
                      "note TEXT)");
    });
  }

  Future<List<CreateEventModal>> getAll() async {
    final db = await database;
    var res = await db.query("EVENT");
    List<CreateEventModal> lists = [];
    for(Map i in res){
      CreateEventModal results = CreateEventModal.fromJsonMap(i);
      lists.add(results);
    }
    return lists;
  }
   createEvent(CreateEventModal createEventModal) async{
    final db = await database;
    var result = await db.insert("EVENT", createEventModal.toJson());
    return result;
  }

  deleteEvent(int id)async{
    final db = await database;
   return await db.delete("EVENT", where: 'id = ?', whereArgs: [id]);
  }
}