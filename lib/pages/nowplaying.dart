import 'package:audio_service/audio_service.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:lec_attendance_system/model/queuestate.dart';
import 'package:lec_attendance_system/model/queuestream.dart';

class CurrentlyPlaying extends StatelessWidget {
  final String title;
  CurrentlyPlaying({@required this.title});

  @override
  Widget build(BuildContext context) {
    bool isBright = Theme.of(context).brightness==Brightness.light;
    return WillPopScope(
      onWillPop: () async{
        return true;
      },
      child: Scaffold(
        appBar: AppBar(
            backgroundColor: isBright?Theme.of(context).accentColor:Theme.of(context).primaryColor,
            title: Text(title??''),elevation: 0),
        body: Container(height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [isBright?Theme.of(context).accentColor:Theme.of(context).primaryColor,Theme.of(context).accentColor.withOpacity(0.7),Theme.of(context).accentColor.withOpacity(0.5),Theme.of(context).primaryColor.withOpacity(0.5)],
                stops: [0.2,0.5,0.7,0.9],
                begin: Alignment.topCenter,end: Alignment.bottomLeft
            ),
          ),
          child: SingleChildScrollView(
            child: Column(mainAxisAlignment: MainAxisAlignment.start,
              children: [
                StreamBuilder<QueueState>(
                  stream: queueStateStream,
                  builder: (context, snapshot) {
                    final queueState = snapshot.data;
                    final queue = queueState?.queue ?? [];
                    final mediaItem = queueState?.mediaItem;
                    return Column(mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(height: 50),
                        if(mediaItem?.artUri!=null) ClipRRect(borderRadius:BorderRadius.circular(12),
                          child: CachedNetworkImage(height:200,width:200,
                            imageUrl: mediaItem.artUri.toString(),fit:BoxFit.cover,
                            placeholder: (context,url)=>Image.asset('assets/radio.png',fit: BoxFit.cover,height: 200,width: 200),
                          ),
                        ),
                        SizedBox(height: 30,),
                        Text(mediaItem.title,overflow: TextOverflow.ellipsis,maxLines: 2,style: TextStyle(fontWeight: FontWeight.w600,fontSize: 15,color: Colors.white),),
                        SizedBox(height: 30),
                        if (queue != null && queue.isNotEmpty)
                          Row(mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              IconButton(icon: Icon(Icons.skip_previous,color: Colors.white), iconSize: 30.0, onPressed: mediaItem == queue.first ? null : AudioService.skipToPrevious),
                              SizedBox(width: 5),
                              StreamBuilder<bool>(
                                stream: AudioService.playbackStateStream.map((state) => state.playing).distinct(),
                                builder: (context, snapshot) {
                                  final playing = snapshot.data ?? false;
                                  return CircleAvatar(maxRadius: 30,
                                    backgroundColor: Theme.of(context).brightness==Brightness.light?Theme.of(context).accentColor:Theme.of(context).primaryColor,
                                    child: StreamBuilder<AudioProcessingState>(
                                      stream: AudioService.playbackStateStream.map((state) => state.processingState).distinct(),
                                      builder: (context, snapshot) {
                                        final processingState = snapshot.data ?? AudioProcessingState.none;
                                        if(processingState==AudioProcessingState.buffering||processingState==AudioProcessingState.skippingToNext||processingState==AudioProcessingState.skippingToPrevious||processingState==AudioProcessingState.connecting){
                                          return CircularProgressIndicator(valueColor:AlwaysStoppedAnimation<Color>(Colors.white));
                                        }
                                        else {
                                          if (playing) return IconButton(icon: Icon(Icons.pause,color: Colors.white,), iconSize: 30.0, onPressed: AudioService.pause);
                                          else return IconButton(icon: Icon(Icons.play_arrow,color: Colors.white,), iconSize: 30.0, onPressed: AudioService.play);
                                        }
                                      },
                                    ),
                                  );
                                },
                              ),
                              SizedBox(width: 5),
                              IconButton(icon: Icon(Icons.skip_next,color: Colors.white), iconSize: 30.0, onPressed: mediaItem == queue.last ? null : AudioService.skipToNext),
                            ],
                          ),
                      ],);
                  },
                ),

              ],),
          ),),
      ),
    );
  }
}
