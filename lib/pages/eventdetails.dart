import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:lec_attendance_system/controller/hidebar.dart';
import 'package:lec_attendance_system/localdb/localdbhelper.dart';

class EventDetails extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: Column(
          children: [
            ValueListenableBuilder(
                valueListenable: context.read(hideAppBar).visible, builder: ( context, value, child) {
                  return AnimatedContainer(
                    height: value? MediaQuery.of(context).padding.top + kToolbarHeight : MediaQuery.of(context).padding.top,
                    duration: Duration(milliseconds: 200),child: AppBar(
                      title: Text('Details'),elevation: 0,backgroundColor: Theme.of(context).accentColor,centerTitle: true),);
            },),
            Container(color: Theme.of(context).accentColor,
              child: TabBar(tabs: [Tab(text: "All Events"),Tab(text: "Marked Events",)],),),
            Expanded(child: Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(color: Theme.of(context).scaffoldBackgroundColor,borderRadius: BorderRadius.circular(12)),
              child: TabBarView(
                children: [AllEvents(),MarkedEvents()],),),),
          ],
        ),
      ),
    );
  }
}


class AllEvents extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final eventList = watch(dbHelper);

    final navBar = context.read(hideAppBar);
    if(eventList.events.length==0) return Center(child: Text("You have not added any events yet !"));
    return ListView.builder(
        controller: navBar.controller,
        itemCount: eventList.events.length,
        physics: BouncingScrollPhysics(),
        itemBuilder: (context, index){
          final event = eventList.events[index];
          final DateTime date = DateTime.fromMillisecondsSinceEpoch(int.parse(event.date));
          final String formattedDate = DateFormat().add_yMMMMEEEEd().format(date);

          return Card(
            clipBehavior: Clip.antiAlias,margin: EdgeInsets.symmetric(vertical: 9,horizontal: 5),elevation: 5,shadowColor: Colors.black26,
            child: InkWell(
              splashFactory: InkRipple.splashFactory,
              borderRadius: BorderRadius.circular(5),
              child: Column(mainAxisSize: MainAxisSize.min,crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(9, 9, 5, 5),
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(event.title,style: TextStyle(fontWeight: FontWeight.w600,fontSize: 17),overflow: TextOverflow.fade),
                        IconButton(icon: Icon(Icons.star_border,color: Colors.grey[500],), onPressed: (){})
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(9, 0, 15, 9),
                    child: Text(event.details,style: TextStyle(color: Theme.of(context).textTheme.subtitle1.color),),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(9, 9, 5, 9),
                    child: Row(
                      children: [
                        Text(formattedDate,style: TextStyle(color: Theme.of(context).textTheme.caption.color,fontSize: 12),),
                        Spacer(),
                        IconButton(icon: Icon(FeatherIcons.edit3,size: 15,color: Theme.of(context).textTheme.caption.color),onPressed: ()=>eventList.updateEvent(event),),
                        IconButton(icon: Icon(FeatherIcons.trash2,size: 15,color: Theme.of(context).textTheme.caption.color),onPressed: ()=>eventList.deleteEvent(event),),
                      ],
                    ),
                  ),
                ],),
            ),
          );
        });
  }
}


class MarkedEvents extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(child: Center(child: Text("Your marked events are here !"),),);
  }
}
