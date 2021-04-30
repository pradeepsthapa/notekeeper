import 'package:flutter/material.dart';
import 'package:lec_attendance_system/localdb/journalmodel.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lec_attendance_system/localdb/localdbhelper.dart';
import 'package:lec_attendance_system/provider/themes.dart';

class AddEdit extends StatefulWidget {
  final bool editMode;
  final Note note;

  AddEdit({this.editMode = false, this.note});

  @override
  _AddEditState createState() => _AddEditState();
}

class _AddEditState extends State<AddEdit> {
  final TextEditingController _title = TextEditingController();
  final TextEditingController _description = TextEditingController();
  final TextEditingController _date = TextEditingController();
  bool _checkStatus = false;
  int _selectedColor = 0;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final isBright = Theme.of(context).brightness == Brightness.light;
    final theme = context.read(themeState);
    final db = context.read(dbHelper);
    final List<Color> colors = isBright ? theme.noteColorLight : theme.noteColorDark;

    if(widget.editMode){
      _title.text = widget.note.title;
      _description.text = widget.note.description;
    }

    return Scaffold(
        backgroundColor: isBright ? Colors.grey[200] : null,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: AppBar(
              leading: IconButton(
                icon: Icon(Icons.chevron_left, color: isBright ? Colors.black : Colors.white),
                onPressed: () => Navigator.pop(context),),
              title: Text(widget.editMode?"Edit Note":"Add Note", style: TextStyle(color: isBright?Colors.black:Colors.white)),
              elevation: 0,
              backgroundColor: isBright ? Colors.grey[100] : Colors.black),
        ),
        body: Card(
          elevation: 5,
          shadowColor: Colors.black12,
          color: widget.editMode?colors[int.parse(widget.note.color)]:colors[_selectedColor],
          margin: EdgeInsets.all(12),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(width: MediaQuery.of(context).size.width),
                  Row(
                    children: [
                      Container(),
                      Spacer(),
                      Text("Important"),
                      Checkbox(
                          value: _checkStatus,
                          onChanged: (bool status) {
                            setState(() => _checkStatus = status);
                          }),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: colors
                        .map((e) => Padding(padding: const EdgeInsets.all(4.0),
                              child: InkWell(
                                  onTap: () => setState(() => _selectedColor = colors.indexOf(e)),
                                  child: Container(
                                    child: Padding(padding: const EdgeInsets.all(1.5), child: Container(color: e),),
                                    height: 30,
                                    width: 30,
                                    decoration: BoxDecoration(
                                        border: _selectedColor == colors.indexOf(e) ? Border.all(width: 1.5, color: Colors.black) : null),
                                  )),
                            )).toList(),
                  ),
                  Form(
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 5),
                          child: TextFormField(
                            controller: _title,
                            validator: (String query) {
                              if (query.isEmpty)
                                return 'Title cannot be empty';
                              else
                                return null;
                            },
                            decoration: InputDecoration(isDense: true, labelText: "Title",
                              floatingLabelBehavior: FloatingLabelBehavior.always,
                              border: OutlineInputBorder(),),
                            onChanged: (String query) {},
                            onFieldSubmitted: (String query) {},
                          ),
                        ),
                        SizedBox(height: 12),

                        Padding(padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 5),
                          child: TextFormField(controller: _description,
                            maxLines: 7,
                            validator: (String query) {
                              if (query.isEmpty)
                                return 'Description field cannot be empty';
                              else return null;
                            },
                            decoration: InputDecoration(labelText: "Description",
                              floatingLabelBehavior: FloatingLabelBehavior.always,
                              border: OutlineInputBorder(),
                            ),
                            onChanged: (String query) {},
                            onFieldSubmitted: (String query) {},
                          ),
                        ),
                        SizedBox(height: 20),
                        Padding(padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 5),
                          child: MaterialButton(
                            minWidth: MediaQuery.of(context).size.width,
                            padding: EdgeInsets.all(12),
                            color: Theme.of(context).accentColor,
                            elevation: 0,
                            onPressed: () {
                              _formKey.currentState.validate();
                              final bool isValid =
                                  _formKey.currentState.validate();
                              if (isValid) {
                                _formKey.currentState.save();
                                String currentDate = DateTime.now().millisecondsSinceEpoch.toString();
                                final Note note = Note(title: _title.text,description: _description.text,isfav: _checkStatus,date: currentDate,color: _selectedColor.toString());
                                if(widget.editMode) db.updateNote(note);
                                else db.addNote(note);
                                Navigator.pop(context);
                              }
                            },
                            child: Text(
                              "Save",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                        SizedBox(height: 30)
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
