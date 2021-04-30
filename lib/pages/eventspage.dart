import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:lec_attendance_system/localdb/calendarcontroller.dart';
import 'package:lec_attendance_system/localdb/dbmodel.dart';
import 'package:lec_attendance_system/localdb/localdbhelper.dart';

class EventPage extends ConsumerWidget {

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final db = watch(dbHelper);
    final String date = watch(calendarState).selectedDay.millisecondsSinceEpoch.toString();
    final List<Data> eventList = db.eventsByDate(date);
    if(eventList.isEmpty)
      return Center(
          child: Padding(padding: const EdgeInsets.all(8.0),
            child: Text("No events found for ${DateFormat('yyyy-MM-dd').format(DateTime.fromMillisecondsSinceEpoch(int.parse(date)))} !",style: TextStyle(color: Theme.of(context).textTheme.caption.color,fontStyle: FontStyle.italic),),
    ));
    return ListView.builder(
      primary: false,shrinkWrap: true,
      itemCount: eventList.length,
      itemBuilder: (context, index) {
        final event = eventList[index];
        return Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          clipBehavior: Clip.antiAlias,margin: EdgeInsets.symmetric(vertical: 7,horizontal: 12),elevation: 5,shadowColor: Colors.black12,
          child: Slidable(
            secondaryActions: [
              IconSlideAction(
                caption: 'Edit',
                color: Colors.black45,
                icon: Icons.edit,
                onTap: () {},
              ),
              IconSlideAction(caption: 'Delete',
                color: Colors.red,
                icon: Icons.delete,
                onTap: ()=>db.deleteEvent(event),
              ),
            ],
            actionPane: SlidableDrawerActionPane(),
            child: ListTile(
              onTap: (){},
              trailing: IconButton(icon: Icon(Icons.chevron_right),onPressed: (){},),
              title: Text(event.title,style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Padding(
                padding: const EdgeInsets.fromLTRB(0, 7, 0, 7),
                child: Text(event.details, maxLines: 7,overflow: TextOverflow.ellipsis,style: GoogleFonts.nunitoSans(),),
              ),
              dense: true,
            ),
          ),
        );
      },);
  }
}
