import 'package:flutter/material.dart';
import 'package:lec_attendance_system/model/newsmodel.dart';
import 'package:url_launcher/url_launcher.dart';

class AllNews extends StatelessWidget {

  final List<NewsModel> _newsList = NewsList().newsList;

  @override
  Widget build(BuildContext context) {
    bool isBright = Theme.of(context).brightness==Brightness.light;
    return Scaffold(
      appBar: PreferredSize(preferredSize: Size.fromHeight(50),
        child: AppBar(
            backgroundColor: isBright?Theme.of(context).accentColor:Theme.of(context).primaryColor,
            title: Text("Popular News"),elevation: 0),
      ),
      body: ListView.builder(
          itemCount: _newsList.length,
          physics: BouncingScrollPhysics(),
          itemBuilder: (context,index){
            final newsSite = _newsList[index];
        return Material(child: InkWell(
          splashFactory: InkRipple.splashFactory,
          onTap: (){
            _launchUrl(newsSite.url);
          },
          child: Container(height: 150,padding: EdgeInsets.symmetric(vertical: 5),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 3,vertical: 2),
              child: Row(mainAxisSize: MainAxisSize.min,mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Card(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9)),
                    elevation: 5,
                    child: SizedBox(height: 140,width: 100,child: ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: FadeInImage(placeholder: AssetImage('assets/images/newspaper.png'), image: NetworkImage(newsSite.image),fit: BoxFit.cover,)),),
                  ),
                  Flexible(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 7),
                      child: Material(type: MaterialType.transparency,
                        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 5),
                            Text(newsSite.title,style: TextStyle(fontWeight: FontWeight.bold,color: Theme.of(context).textTheme.headline6.color),),
                            SizedBox(height: 3),
                            Text(newsSite.url,style:TextStyle(fontSize: 12,fontWeight: FontWeight.w800,color: Theme.of(context).accentColor),),
                            SizedBox(height:10),
                            Text(newsSite.description, maxLines:3,overflow: TextOverflow.ellipsis, style: TextStyle(fontSize: 12,color: Theme.of(context).textTheme.caption.color),textAlign: TextAlign.justify),
                            Spacer(),
                            TextButton(onPressed: (){
                              _launchUrl(newsSite.url);
                            }, child: Text("Read Now"))
                          ],),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),),);
      }),
    );

  }
  void _launchUrl(String url)async{
    if(await canLaunch(url)){
    await launch(url);
    } else throw 'Cannnot launch $url';
  }
}
