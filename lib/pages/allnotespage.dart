import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:intl/intl.dart';
import 'package:lec_attendance_system/localdb/localdbhelper.dart';
import 'package:lec_attendance_system/pages/addeditnote.dart';
import 'package:lec_attendance_system/provider/themes.dart';

class Journals extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final lists = watch(dbHelper);
    final bool isLight = Theme.of(context).brightness==Brightness.light;
    final theme = context.read(themeState);
    final List<Color> colors = isLight?theme.noteColorLight:theme.noteColorDark;

    return Scaffold(
      appBar: PreferredSize(preferredSize: Size.fromHeight(50),
      child: AppBar(
        backgroundColor: isLight?Theme.of(context).accentColor:Theme.of(context).primaryColor,
        elevation: 0,title: Text("Notes"),),),
      backgroundColor: isLight?Colors.grey[100]:null,
      body:Padding(
        padding: const EdgeInsets.all(8.0),
        child: lists.notes.length==0?Center(child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("No notes added yet !",style: TextStyle(color: Theme.of(context).accentColor,fontSize:17),),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: MaterialButton(
                minWidth: MediaQuery.of(context).size.width *.7,
                elevation: 0,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
                color: isLight?Theme.of(context).accentColor:Theme.of(context).primaryColor,
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (_)=>AddEdit(editMode: false)));
                },
                child: Text("Add New Note",style: TextStyle(color: Colors.white),),),
            )
          ],
        )):StaggeredGridView.countBuilder(
          itemCount: lists.notes.length,
          mainAxisSpacing: 4,crossAxisSpacing: 5,
          crossAxisCount: 4,
          itemBuilder: (BuildContext context, int index) {
            final list = lists.notes[index];
            final DateTime date = DateTime.fromMillisecondsSinceEpoch(int.parse(list.date));
            final String formattedDate = DateFormat().add_yMMMEd().format(date);

            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 3,horizontal: 4),
              child: InkWell(
                splashFactory: InkRipple.splashFactory,
                borderRadius: BorderRadius.circular(7),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (_)=>AddEdit(editMode: true,note: list)));
                },
                child: Ink(decoration: BoxDecoration(
                  color:colors[int.parse(list.color)],
                    borderRadius:BorderRadius.circular(7),border: Border.all(width: 1.3,color: isLight?Colors.grey[300]:Colors.grey[700])),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(12, 9, 0, 12),
                    child: Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      Text(list.title,style: TextStyle(fontWeight: FontWeight.w500),),
                      Padding(padding: const EdgeInsets.symmetric(vertical: 5),
                        child: Text(list.description),),
                        SizedBox(height: 5),
                        Text(formattedDate,style: TextStyle(color: Theme.of(context).textTheme.caption.color,fontSize: 12),),
                        Row(mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            IconButton(icon:Icon(FeatherIcons.edit2,size: 12),onPressed: (){},),
                            IconButton(icon: Icon(FeatherIcons.trash2,size: 12,), onPressed: (){
                              lists.deleteNote(list);
                            })
                          ],
                        ),

                      ],

                    ),
                  ),),
              ),
            );
          },
          staggeredTileBuilder: (int index) { return StaggeredTile.fit(2); },),
      ),
      floatingActionButton: FloatingActionButton(onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (_)=>AddEdit(editMode: false))),child: Icon(FeatherIcons.plus),),
    );
  }
}
