import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarState extends ChangeNotifier{

  Map<DateTime, List<dynamic>> _events = {};
  Map<DateTime, List<dynamic>> get events => _events;

  CalendarController _calendarController = CalendarController();
  CalendarController get calendarController => _calendarController;

  static String date = DateFormat('yyyy-MM-dd').format(DateTime.now())+' 12:00:00.000Z';
  static DateTime convertedDate = DateTime.parse(date);

  DateTime _selectedDay = convertedDate;
  DateTime get selectedDay => _selectedDay;


  void setSelectedDay (DateTime date){
    _selectedDay = date;
    notifyListeners();
  }
}

final calendarState = ChangeNotifierProvider((ref)=>CalendarState());