import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:lec_attendance_system/localdb/calendarcontroller.dart';
import 'package:lec_attendance_system/localdb/localdbhelper.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void eventDialog(BuildContext context, DateTime date){
  final FocusNode _focusNode = FocusNode();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _title = TextEditingController();
  final TextEditingController _details = TextEditingController();
  final TextEditingController _date = TextEditingController();
  final db = context.read(dbHelper);
  final calendar = context.read(calendarState);

  showModal(
      configuration: FadeScaleTransitionConfiguration(
        barrierDismissible: false,
        reverseTransitionDuration: Duration(milliseconds: 240),
        transitionDuration: Duration(milliseconds: 300),),
      context: context, builder: (context) {
    return Form(
      key: _formKey,
      child: AlertDialog(
        title: TextFormField(
          controller: _title,
          validator: (String query){
            if(query.isEmpty) return 'Title cannot be empty';
            else return null;
          },
          decoration: InputDecoration(
              contentPadding: EdgeInsets.only(top: 15),
              prefixIcon: Icon(Icons.date_range),
              hintText: 'Add Title'),
          onChanged: (String query){},
          onFieldSubmitted: (String query){
          },
        ),
        content: Column(mainAxisSize: MainAxisSize.min,children: [
          TextFormField(
            controller: _details,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.only(top:14),
              prefixIcon: Icon(Icons.short_text),
              hintText: "Add Details",
            ),
            validator: (String query){
              if(query.isEmpty) return 'Please add description';
              else return null;
            },
          ),
          TextFormField(
            readOnly: true,
            controller: _date,
            keyboardType: TextInputType.datetime,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.only(top:15),
              prefixIcon: IconButton(icon: Icon(Icons.calendar_today,size: 20),onPressed: ()async{
                final DateTime picked = await showDatePicker(context: context, initialDate: date, firstDate: DateTime(2021), lastDate: DateTime(2022));
                print(picked);
              },),
              hintText: DateFormat('yyyy-MM-dd').format(date),
            ),
          ),
        ],),
        actions: [
          TextButton(onPressed: ()=>Navigator.pop(context), child: Text("Cancel",style: TextStyle(color: Colors.redAccent),)),
          TextButton(onPressed: (){
            _formKey.currentState.validate();
            final bool isValid = _formKey.currentState.validate();
            if(isValid) {
              _formKey.currentState.save();
              final Map<String,dynamic> data = {'title':_title.text,'details':_details.text,'date':date.millisecondsSinceEpoch.toString()};
              db.addEvent(data);
              print(data);
              // calendar.events[calendar.calendaorController.selectedDay].add(_details.text);
              // ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Form is validate successfully"),));
              Navigator.pop(context);
            }
          },
              child: Text("Save")),
        ],
      ),
    );
  });
}