import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lec_attendance_system/localdb/calendarcontroller.dart';
import 'package:lec_attendance_system/localdb/localdbhelper.dart';
import 'package:lec_attendance_system/model/fmmodel.dart';
import 'package:lec_attendance_system/model/newsmodel.dart';
import 'package:lec_attendance_system/pages/eventdetails.dart';
import 'package:lec_attendance_system/pages/mininotesgrid.dart';
import 'package:lec_attendance_system/pages/miniradiogrid.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:url_launcher/url_launcher.dart';
import 'allnewslist.dart';
import 'allnotespage.dart';
import 'eventspage.dart';

class Home extends ConsumerWidget {

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    final calendar = watch(calendarState);
    final eventNotes = watch(dbHelper).calendarEvents;

    return Scaffold(
      body: ListView(
        children: [
          _buildSection(context,"Today's Events"),
          Card(
            clipBehavior: Clip.antiAlias,margin: EdgeInsets.symmetric(vertical: 9,horizontal: 12),elevation: 3,shadowColor: Colors.black38,
            child: TableCalendar(
              events: eventNotes,
              initialCalendarFormat: CalendarFormat.twoWeeks,
              calendarController: calendar.calendarController,
              startingDayOfWeek: StartingDayOfWeek.monday,
              calendarStyle: CalendarStyle(),
              headerStyle: HeaderStyle(
                  rightChevronPadding: EdgeInsets.all(5),
                  leftChevronPadding: EdgeInsets.all(5),
                  leftChevronIcon: Icon(Icons.chevron_left,color: Colors.white),
                  rightChevronIcon: Icon(Icons.chevron_right,color: Colors.white),
                  titleTextStyle: TextStyle(color: Colors.white),
                  formatButtonTextStyle: TextStyle(color: Colors.white),
                  formatButtonDecoration: BoxDecoration(border: Border.all(color: Colors.white),borderRadius: BorderRadius.circular(24)),
                  decoration: BoxDecoration(color: isDark?Theme.of(context).primaryColor:Theme.of(context).accentColor),
                  headerMargin: EdgeInsets.only(bottom: 7),
                  formatButtonShowsNext: false),
              onDaySelected: (selectedDay, events, moreevents){
                calendar.setSelectedDay(selectedDay);
              },
              // firstDay: DateTime.utc(2010, 10, 16),
              // focusedDay: DateTime.now(),
              // lastDay: DateTime.utc(2030, 3, 14),
            ),
          ),
          Row(
            children: [
              _buildSection(context,"Events"),
              Spacer(),
              TextButton(onPressed: ()=>Navigator.push(context, CupertinoPageRoute(builder: (context)=>EventDetails())),
                child: Text("Show All",style: TextStyle(color: Theme.of(context).accentColor.withOpacity(0.7),fontSize: 14),),),
              Padding(
                padding: const EdgeInsets.only(bottom: 3),
                child: Icon(FeatherIcons.arrowRightCircle,size: 15,color: Theme.of(context).accentColor),
              ),
              SizedBox(width: 9)
            ],
          ),
          EventPage(),
          SizedBox(height: 24),
          Row(
            children: [
              _buildSection(context,"Notes"),
              Spacer(),
              TextButton(onPressed: ()=>Navigator.push(context, CupertinoPageRoute(builder: (context)=>Journals())),
                child: Text("Show All",style: TextStyle(color: Theme.of(context).accentColor.withOpacity(0.7),fontSize: 14),),),
              Padding(
                padding: const EdgeInsets.only(bottom: 3),
                child: Icon(FeatherIcons.arrowRightCircle,size: 15,color: Theme.of(context).accentColor),
              ),
              SizedBox(width: 9)
            ],
          ),
          MiniNotesGrid(),
          Row(
            children: [
              _buildSection(context,"Popular Newspapers"),
              Spacer(),
              TextButton(onPressed: ()=>Navigator.push(context, CupertinoPageRoute(builder: (context)=>AllNews())),
                child: Text("Show All",style: TextStyle(color: Theme.of(context).accentColor.withOpacity(0.7),fontSize: 14),),),
              Padding(
                padding: const EdgeInsets.only(bottom: 3),
                child: Icon(FeatherIcons.arrowRightCircle,size: 15,color: Theme.of(context).accentColor),
              ),
              SizedBox(width: 9)
            ],
          ),
          _popularNews(context),
          SizedBox(height: 12),
          _buildSection(context,"Nepali Radio Stations"),
          Divider(thickness: 1.5,endIndent: 150,indent: 9,color: Theme.of(context).accentColor.withOpacity(0.3),),
          MiniRadioGrid(queue: MediaLibrary().nepaliLists,currentTab: 0,),
          _buildSection(context,"Hindi Radio Stations"),
          Divider(thickness: 1.5,endIndent: 150,indent: 9,color: Theme.of(context).accentColor.withOpacity(0.3),),
          MiniRadioGrid(queue: MediaLibrary().hindiLists,currentTab: 1,),
        ],
      ),
    );
  }

  Widget _buildSection(BuildContext context,String text){
    return Padding(
      padding: const EdgeInsets.fromLTRB(15, 17, 15, 0),
      child: Text(text,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Theme.of(context).accentColor)),
    );
  }

  Widget _popularNews(BuildContext context){
    final List<NewsModel> _newsList = NewsList().newsList;

    return Container(height: 150,
      child: ListView.builder(
        itemCount: _newsList.length,
        primary: false,shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          final item = _newsList[index];
          return Padding(
            padding: const EdgeInsets.fromLTRB(9, 9, 9, 0),
            child: SizedBox(
                height: 150,width: 115,
                child: InkWell(
                  onTap: ()async{
                    if(await canLaunch(item.url)){
                      await launch(item.url);
                    } else throw 'Cannnot launch ${item.url}';
                  },
                  child: Card(margin: EdgeInsets.zero,elevation: 0,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                    child: Stack(
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(4),
                            child: FadeInImage(placeholder: AssetImage('assets/images/newspaper.png'), image: NetworkImage(item.image),fit: BoxFit.cover,height: MediaQuery.of(context).size.height,)),
                        Positioned(bottom: 0,left: 0,right: 0,
                          child: Container(
                            padding: EdgeInsets.symmetric(vertical: 5,horizontal: 5),
                            decoration: BoxDecoration(color: Colors.black54,borderRadius: BorderRadius.only(bottomRight: Radius.circular(4),bottomLeft: Radius.circular(4))),
                            child: Text(item.title,style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.w600),maxLines: 1,overflow: TextOverflow.visible,textAlign: TextAlign.center,),),
                        )
                      ],
                    ),
                  ),
                )),
          );
        },),
    );
  }

}


