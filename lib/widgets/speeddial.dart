import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:lec_attendance_system/pages/addeditnote.dart';

import 'eventdialog.dart';

SpeedDial buildSpeedDial(BuildContext context, DateTime date) {
  return SpeedDial(marginEnd: 18, marginBottom: 20,
    icon: Icons.add,
    iconTheme: Theme.of(context).accentIconTheme,
    activeBackgroundColor: Theme.of(context).accentColor,
    activeForegroundColor: Colors.white,
    foregroundColor: Theme.of(context).accentColor,
    activeChild: Icon(Icons.close),
    // animatedIconTheme: IconThemeData(size: 22.0,color: Colors.white),
    buttonSize: 53.0,
    visible: true,
    closeManually: false,
    curve: Curves.bounceIn,
    overlayColor: Colors.black,
    overlayOpacity: 0.12,
    onOpen: () => print('OPENING DIAL'),
    onClose: () => print('DIAL CLOSED'),
    tooltip: 'Tap to open',
    heroTag: 'tag',
    elevation: 0,
    childMarginBottom: 9,
    childMarginTop: 9,
    gradientBoxShape: BoxShape.circle,
    gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [Theme.of(context).accentColor, Theme.of(context).accentColor.withOpacity(0.7)],),
    children: [
      SpeedDialChild(
        child: Icon(Icons.notes,color: Colors.white),
        backgroundColor: Colors.blue,
        label: 'Add Journal',
        foregroundColor: Colors.transparent,
        labelBackgroundColor: Colors.black45,
        labelStyle: TextStyle(fontSize: 15.0, color: Colors.white),
        onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>AddEdit())),
        onLongPress: () => print('SECOND CHILD LONG PRESS'),
      ),
      SpeedDialChild(
        child: Icon(Icons.event_note,color: Colors.white),
        backgroundColor: Colors.green,
        label: 'Add Event',
        foregroundColor: Colors.transparent,
        labelBackgroundColor: Colors.black45,
        labelStyle: TextStyle(fontSize: 15.0,color: Colors.white),
        onTap: () => eventDialog(context, date),
        onLongPress: () => print('Long Pressed'),
      ),
    ],
  );
}