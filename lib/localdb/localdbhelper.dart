import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:path/path.dart' as path;
import 'package:sqflite/sqflite.dart' as sql;
import 'dbmodel.dart';
import 'journalmodel.dart';

class DBHelper extends ChangeNotifier {
  static final eventsTable = 'events';
  static final notesTable = 'notes';
  sql.Database db;
  List<Data> _events = [];
  List<Note> _notes = [];
  List<Data> get events => [..._events];
  List<Note> get notes =>[..._notes];
  Map<DateTime, List<Data>> _calendarEvents = {};
  Map<DateTime, List<Data>> get calendarEvents => _calendarEvents;

  DBHelper(){
    init();
  }

  Future<void> init()async{
    if(db==null||!db.isOpen) {
      final dbPath = await sql.getDatabasesPath();
      db = await sql.openDatabase(path.join(dbPath,'events.db'),
        onCreate: (db,version){
          final event = '''create table if not exists $eventsTable (id integer primary key autoincrement not null, title text, details text, isfav text, date text not null)'''.trim().replaceAll(RegExp(r'[\s]{2,}'), ' ');
          final notes = '''create table if not exists $notesTable (id integer primary key autoincrement not null, isfav integer, title text, description text, date text,color text)'''.trim().replaceAll(RegExp(r'[\s]{2,}'), ' ');
          db.execute(event);
          db.execute(notes);
        },
        version: 1,
      );
    }
    await fetchAndSetData();
  }

  void addEvent(Map data) async{
    if(db!=null) {
      final event = Data.fromMap(data);
      await insert(eventsTable, data);
      _events.add(event);
      notifyListeners();
    }
  }

  void addNote(Note data) async{
    if(db!=null) {
      final Map note = data.toMap();
      await insert(notesTable, note);
      _notes.add(data);
      notifyListeners();
    }
  }

  // Future<List<Data>> fetchEventsByDate(String date)async{
  //   if(db==null) await init();
  //     final mapList = await db.query(eventsTable,where: 'date = ?',whereArgs: [date]);
  //     final List<Data> eventData = [for (Map data in mapList) Data.fromMap(data)];
  //     _events = eventData;
  //     return _events;
  //
  // }

  List<Data> eventsByDate(String date){
    final List<Data> events = _events.where((element) => element.date==date).toList();
    return events;
  }

  // void getGroupedEvents(){
  //   _events.forEach((element) {
  //     DateTime date = DateTime.fromMillisecondsSinceEpoch(int.parse(element.date));
  //     DateTime eventDate = DateTime.utc(date.year,date.month,date.day,12);
  //     if(_calendarEvents[eventDate]==null) _calendarEvents[date] = [];
  //     _calendarEvents[date].add(element);
  //     print('Printing event ${_calendarEvents[date]}');
  //   });
  // }


  Future<void> deleteEvent(Data data)async{
    if(db!=null){
      await delete(eventsTable,data.id);
      _events.removeWhere((element) => element==data);
      notifyListeners();
    }
  }

  Future<void> deleteNote(Note data)async{
    if(db!=null){
      await delete(notesTable,data.id);
      _notes.removeWhere((element) => element==data);
      notifyListeners();
    }
  }

  Future<void> updateEvent(Data data)async{
    if(db!=null){
      await update(eventsTable,data.toMap());
      final Data item = _events.firstWhere((element) => element.id==data.id);
      int index = _events.indexOf(item);
      print("replacing");
      _events.replaceRange(index, index+1, [data]);
      notifyListeners();
    }
  }

  Future<void> updateNote(Note note)async{
    if(db!=null){
      await update(notesTable,note.toMap());
      final Note item = _notes.firstWhere((element) => element.date==note.date);
      int index = _notes.indexOf(item);
      _notes.removeAt(index);
      _notes.add(note);
      print("replacing");
      notifyListeners();
    }
  }

  Future<void> fetchAndSetData () async {
    if(db!=null){
      final dataList = await db.query(eventsTable);
      final noteList = await db.query(notesTable);
      List<Data> listFromMap = [for (Map data in dataList) Data.fromMap(data)];
      List<Note> noteFromMap = [for (Map note in noteList) Note.fromMap(note)];
      _events = listFromMap;
      _notes = noteFromMap;
      notifyListeners();
    }
  }


  void getGroupedNotification(List<Data> events){
    events.forEach((element) {
      DateTime date = DateTime.fromMillisecondsSinceEpoch(int.parse(element.date));
      if(_calendarEvents[date]==null) _calendarEvents[date] = [];
      _calendarEvents[date].add(element);
    });
    notifyListeners();
  }

  Future<void> insert(String table, Map<String, dynamic> data) async {
    await init();
    await db.insert(table, data, conflictAlgorithm: sql.ConflictAlgorithm.replace);
    print("Successfully added");

  }

  Future<List<Map<String, dynamic>>> getData(String table) async {
    return await db.query(table, orderBy: 'id desc');
  }

  Future<void> update(String table, Map<String, dynamic>data)async{
    await db.update(table, data, where: 'id = ?', whereArgs: data['id']);
  }

  Future<void> delete(String table, int id)async{
    await db.delete(table,where: 'id = ?',whereArgs: [id]);
    print("Successfully deleted");
  }
}

final dbHelper = ChangeNotifierProvider((ref)=> DBHelper());
