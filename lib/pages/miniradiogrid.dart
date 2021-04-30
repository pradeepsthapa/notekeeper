import 'package:audio_service/audio_service.dart';
import 'package:flutter/material.dart';
import 'package:lec_attendance_system/pages/fmstations.dart';
import 'package:marquee_text/marquee_text.dart';

class MiniRadioGrid extends StatelessWidget {
  final List<MediaItem> queue;
  final int currentTab;
  MiniRadioGrid({@required this.queue, @required this.currentTab});

  bool _isPlaying = false;

  @override
  Widget build(BuildContext context) {
    final bool isBright = Theme.of(context).brightness==Brightness.light;
    return Column(
      children: [
        GridView.builder(
          primary: false,shrinkWrap: true,
          itemCount: 6,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisSpacing: 2,crossAxisSpacing: 3,
              crossAxisCount: 3),
          itemBuilder: (context, index) {
            final audio = queue[index];
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 7,horizontal: 9),
            child: InkWell(
              borderRadius: BorderRadius.circular(8),
              onTap: (){
                if(AudioService.running&&AudioService.connected){
                  AudioService.skipToQueueItem(audio.id);
                }
                else {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Audio Service is not running. Are you connected to the internet ?"),));
                }
              },
              child: Container(height: 100,child: ClipRRect(borderRadius: BorderRadius.circular(8),
                  child: Stack(
                    children: [
                      FadeInImage(placeholder: AssetImage('assets/images/radio.png'), image: NetworkImage(audio.artUri.toString()),fit: BoxFit.cover),
                      Positioned(
                          bottom: 0,left: 0,right: 0,
                          child: Container(padding: EdgeInsets.all(4),
                              decoration: BoxDecoration(color: Colors.black54,borderRadius: BorderRadius.only(bottomLeft: Radius.circular(8),bottomRight: Radius.circular(8))),
                              child: _isPlaying?MarqueeText(text: audio.title):Text(audio.title,style: TextStyle(fontWeight: FontWeight.w600,color: Colors.white,fontSize: 12),maxLines: 1,overflow: TextOverflow.visible,textAlign: TextAlign.center)))
                    ],
                  )),),
            ),
          );
          },),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 12),
          child: MaterialButton(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
            minWidth: MediaQuery.of(context).size.width *.5,
            elevation: 0,
            color: isBright?Theme.of(context).accentColor:Theme.of(context).primaryColor,
              child: Text("Show All",style: TextStyle(color: Colors.white),),
              onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (_)=>FMStations(currentTab: currentTab)));
              }),
        ),
        SizedBox(height: 20)
      ],
    );
  }
}

