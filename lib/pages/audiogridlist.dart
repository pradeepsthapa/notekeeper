import 'package:audio_service/audio_service.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:marquee_text/marquee_text.dart';

class GridList extends StatelessWidget {
  final List<MediaItem> queue;
  GridList({@required this.queue});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 12),
      child: GridView.builder(
        primary: false,
        itemCount: queue.length??0,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisSpacing: 9,mainAxisSpacing: 12, crossAxisCount: 3),
        itemBuilder: (context, index) {
          final meta = queue[index];
          return InkWell(
            onTap: (){
              AudioService.skipToQueueItem(meta.id);
            },
            child: Stack(
              children: [
                ClipRRect(borderRadius:BorderRadius.circular(9),
                  child: CachedNetworkImage(
                    fit: BoxFit.cover,
                    color:AudioService.currentMediaItem?.id==meta.id?Colors.black45:null,
                    colorBlendMode: AudioService.currentMediaItem?.id==meta.id?BlendMode.multiply:null,
                    imageUrl: meta.artUri.toString()??'',
                    placeholder: (context,url)=>ClipRRect(borderRadius:BorderRadius.circular(9),
                        child: Image.asset('assets/images/radio.png',fit: BoxFit.cover)),
                    errorWidget: (context,url,error)=>Image.asset('assets/images/radio.png',fit: BoxFit.cover),
                  ),
                ),
                Positioned(bottom:0,left: 0,right: 0,
                  child: Container(
                    decoration:BoxDecoration(color: Colors.black54,borderRadius: BorderRadius.only(bottomLeft: Radius.circular(7),bottomRight: Radius.circular(7))),
                    child: Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        if(AudioService.currentMediaItem?.id==meta.id) Flexible(child: Padding(
                          padding: const EdgeInsets.only(left: 7),
                          child: MarqueeText(text:meta.title??'',speed: 12,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
                        ))
                        else Flexible(child: Padding(
                          padding: const EdgeInsets.only(left: 7),
                          child: Text(meta.title??'',overflow: TextOverflow.ellipsis,maxLines: 1,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
                        )),
                      ],
                    ),
                  ),
                ),
                if(AudioService.currentMediaItem?.id==meta.id) Center(child: Image.asset('assets/images/live.png',width: 50,height: 50),
                )
              ],
            ),
          );
        },),
    );
  }
}