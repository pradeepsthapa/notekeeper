import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:lec_attendance_system/localdb/localdbhelper.dart';
import 'package:lec_attendance_system/provider/themes.dart';
import 'addeditnote.dart';

class MiniNotesGrid extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final lists = watch(dbHelper);
    final bool isLight = Theme.of(context).brightness==Brightness.light;
    final theme = context.read(themeState);
    final List<Color> colors = isLight?theme.noteColorLight:theme.noteColorDark;

    return Container(
      height: 120,width: double.infinity,
        child:Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 10),
          child: lists.notes.length==0?Center(child: Column(mainAxisSize: MainAxisSize.min,
            children: [
              Text("No notes added yet !",style: TextStyle(color: Theme.of(context).textTheme.caption.color,fontSize:17),),
              MaterialButton(
                minWidth: 120,
                elevation: 0,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
                color: isLight?Theme.of(context).accentColor:Theme.of(context).primaryColor,
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (_)=>AddEdit(editMode: false)));
                },
                child: Text("Add Now",style: TextStyle(color: Colors.white),),)
            ],
          ))
              :ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: lists.notes.length,
            primary: false,shrinkWrap: true,
            itemBuilder: (BuildContext context, int index) {
              final list = lists.notes[index];
              final DateTime date = DateTime.fromMillisecondsSinceEpoch(int.parse(list.date));
              final String formattedDate = DateFormat().add_yMMMEd().format(date);

              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 3,horizontal: 7),
                child: InkWell(
                  splashFactory: InkRipple.splashFactory,
                  borderRadius: BorderRadius.circular(7),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (_)=>AddEdit(editMode: true,note: list)));
                  },
                  child: Ink(decoration: BoxDecoration(
                      color:colors[int.parse(list.color)],
                      borderRadius:BorderRadius.circular(7)),
                    child: Padding(padding: const EdgeInsets.all(5.0),
                      child: Column(mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.start,mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(list.title,style: TextStyle(fontWeight: FontWeight.w700),),
                          Spacer(),
                          Text(list.description,maxLines: 3),
                          Text(formattedDate,style: TextStyle(color: Theme.of(context).textTheme.caption.color,fontSize: 12),),
                        ],

                      ),
                    ),),
                ),
              );
            },
            ),
        ));
  }
}
