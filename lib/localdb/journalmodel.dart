class Note{
  int id;
  bool isfav;
  String title,description,color,date;

  Note({this.id, this.isfav, this.title, this.description, this.color,this.date});

  Map<String,dynamic> toMap(){
    Map map = <String, dynamic>{'id':id,'title':title,'description':description,'date':date,'color':color,'isfav':isfav?1:0};
    return map;
  }

  Note.fromMap(Map<String,dynamic> map):id = map['id'], title = map['title'], description = map['description'], date = map['date'],color=map['color'],isfav=map['isfav']==1;

}