import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_storage/get_storage.dart';

class Themes extends ChangeNotifier{

  final _box = GetStorage();
  bool _darkMode = false;
  int _themeIndex = 0;
  bool get darkMode => _darkMode;
  int get themeIndex => _themeIndex;

  Themes(){
    readInitials();
  }

  void readInitials(){
    _box.writeIfNull('themeIndex', 0);
    _box.writeIfNull('darkMode', false);
    _themeIndex = _box.read('themeIndex');
    _darkMode = _box.read('darkMode');
    notifyListeners();
  }

  final List<Color> primaryColors = [Colors.blue.shade900,Colors.red.shade900,Colors.green.shade900,Colors.teal.shade900,Colors.purple.shade900];
  final List<Color> accentColors = [Colors.blue.shade700,Colors.red,Colors.green,Colors.teal,Colors.purple];

  final List<String> noteColors = ["White","Yellow","Blue","Green","Pink","Teal","Orange","Indigo"];
  final List<Color> noteColorLight = [Colors.white,Color(0xffffffbf),Color(0xff76ffff),Color(0xffb0ff57),Color(0xffffb2dd),Color(0xff88ffff),Color(0xffffc947),Color(0xffffc4ff)];
  final List<Color> noteColorDark = [Colors.black12,Color(0xffcacc5d),Color(0xff00cbcc),Color(0xff32cb00),Color(0xffc94f7c),Color(0xff009faf),Color(0xffc66900),Color(0xff883997)];

  void changeTheme(int index){
    _themeIndex = index;
    _box.write('themeIndex', index);
    notifyListeners();
  }

  void changeDarkMode(){
    _darkMode =! _darkMode;
    _box.write('darkMode', _darkMode);
    notifyListeners();
  }
}

final themeState = ChangeNotifierProvider((ref)=>Themes());