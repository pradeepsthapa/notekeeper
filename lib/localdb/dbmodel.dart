class Data{
  int id;
  String title, details,date;
  bool isfav;
  Data({this.id,this.title, this.details, this.date});

  Map<String,dynamic> toMap(){
    Map map = <String, dynamic>{'id':id,'title':title,'details':details,'date':date,'isfav':isfav?1:0};
    return map;
  }

  Data.fromMap(Map<String,dynamic> map):id = map['id'], title = map['title'], details = map['details'], date = map['date'],isfav=map['isfav']==1;
}