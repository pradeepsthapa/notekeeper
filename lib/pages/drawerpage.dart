import 'package:animations/animations.dart';
import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lec_attendance_system/pages/licenses.dart';
import 'package:lec_attendance_system/provider/themes.dart';
import 'package:share/share.dart';
import 'package:url_launcher/url_launcher.dart';
import 'allnewslist.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'eventdetails.dart';
import 'fmstations.dart';
import 'allnotespage.dart';


class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = context.read(themeState);
    final isBright = Theme.of(context).brightness==Brightness.light;

    return Drawer(child: ListView(children: [
      UserAccountsDrawerHeader(
        decoration: BoxDecoration(color: isBright?Theme.of(context).accentColor:Theme.of(context).primaryColor),
          currentAccountPicture: ClipRRect(
              borderRadius:BorderRadius.circular(50),child: CircleAvatar(
              backgroundColor: Colors.black26,
              child:Text("P",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),))),
          accountName: Text('Pradeep Thapa',style: TextStyle(fontWeight: FontWeight.bold),), accountEmail: Text('pradeepsthapa@gmail.com')),
      ListTile(
        dense: true,
        leading: Icon(FeatherIcons.book),
        title: Text("Notes"),
        onTap: (){
          Scaffold.of(context).openEndDrawer();
          Navigator.push(context, CupertinoPageRoute(builder: (_)=>Journals()));
        },
      ),
      ListTile(
        dense: true,
        leading: Icon(FeatherIcons.clock),
        title: Text("All Events"),
        onTap: (){
          Scaffold.of(context).openEndDrawer();
          Navigator.push(context, CupertinoPageRoute(builder: (_)=>EventDetails()));
        },
      ),
      ListTile(
        dense: true,
        leading: Icon(FeatherIcons.radio),
        title: Text("FM Radio"),
        onTap: (){
          Scaffold.of(context).openEndDrawer();
          Navigator.push(context, CupertinoPageRoute(builder: (_)=> FMStations()));
        },
      ),
      ListTile(
        dense: true,
        leading: Icon(FeatherIcons.bookOpen),
        title: Text("Popular News"),
        onTap: (){
          Scaffold.of(context).openEndDrawer();
          Navigator.push(context, CupertinoPageRoute(builder: (_)=>AllNews()));
        },
      ),
      Divider(indent: 15,endIndent: 15,thickness: 1),
      ExpansionTile(
        leading: Icon(FeatherIcons.aperture),
        title: Text("Color",style: TextStyle(fontSize: 14),),
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 7,horizontal: 12),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: theme.primaryColors.map((e) =>
                    InkWell(
                      borderRadius: BorderRadius.circular(5),
                      splashFactory: InkRipple.splashFactory,
                      onTap: ()=>theme.changeTheme(theme.primaryColors.indexOf(e)),
                      child: Padding(padding: const EdgeInsets.all(7.0),
                        child: Container(height: 30,width: 33,
                          decoration:BoxDecoration(borderRadius: BorderRadius.circular(4), border: theme.themeIndex==theme.primaryColors.indexOf(e)?Border.all(width: 2,color: e):null),
                          child: Container(margin: EdgeInsets.all(2),
                            decoration: BoxDecoration(color: e, borderRadius: BorderRadius.circular(4)),),),),
                    )).toList()),
          )],
      ),
      SwitchListTile(title:Text('Dark Mode'),
          dense: true,
          activeColor: Theme.of(context).primaryColor,
          secondary: Icon(FeatherIcons.moon),
          value: theme.darkMode, onChanged: (bool value)=>theme.changeDarkMode()),
      Divider(indent: 15,endIndent: 15,thickness: 1),
      ListTile(leading: Icon(FeatherIcons.share2),
        dense: true,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
        title: Text("Share"),
        onTap: ()=>share(context),
      ),
      ListTile(leading: Icon(FeatherIcons.bookOpen),
        dense: true,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
        title: Text("Licenses"),
        onTap: ()=>Navigator.push(context, CupertinoPageRoute(builder: (_)=>Licenses())),
      ),
      ListTile(leading: Icon(FeatherIcons.user),
        dense: true,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
        title: Text('About App'),
        onTap: (){
          showModal(
              configuration: FadeScaleTransitionConfiguration(transitionDuration: Duration(milliseconds: 300)),
              context: context,builder: (context){
            return AlertDialog(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
              content: Column(mainAxisSize: MainAxisSize.min,crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("This app records events and notes/journals and saves it in the local stoarge. This app is for educational purpose only. For any query, information or bug reports please contact me in the below information.",style: TextStyle(),textAlign: TextAlign.start,),
                  SizedBox(height: 12),
                  Center(child: Text("Email",style: TextStyle(fontWeight: FontWeight.w500))),
                  SizedBox(height: 7),
                  Center(child: Text("pradeepsthapa@gmail.com",style: TextStyle(color: Theme.of(context).textTheme.caption.color),)),
                ],
              ),
              actions: [
                Align(alignment: Alignment.bottomRight,
                  child: TextButton(child: Text('Close',textAlign: TextAlign.end),
                      onPressed: ()=>Navigator.pop(context)),
                ),
              ],

            );
          });
        },
      ),
      ListTile(
        dense: true,
        leading: Icon(FeatherIcons.grid),
        title: Text("More Apps"),
        onTap: ()async{
          const url = 'https://play.google.com/store/apps/developer?id=pTech';
          if(await canLaunch(url)){
            await launch(url);
          }
          else{
            throw 'Could not launch $url';
          }
        },
      ),
      ListTile(leading: Icon(FeatherIcons.power),
        dense: true,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
        title: Text("Exit"),
        onTap: ()=>SystemNavigator.pop(),
      ),

    ],),);
  }
}

void share(BuildContext context) {
  final String text = 'https://play.google.com/store/apps/details?id=com.ccbc.songbook';
  final RenderBox renderBox = context.findRenderObject();
  Share.share(text,sharePositionOrigin: renderBox.localToGlobal(Offset.zero)&renderBox.size);
}