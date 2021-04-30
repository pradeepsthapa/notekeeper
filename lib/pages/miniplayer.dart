import 'package:audio_service/audio_service.dart';
import 'package:flutter/material.dart';
import 'package:marquee_text/marquee_text.dart';

class MiniPlayer extends StatelessWidget {
  final List<MediaItem> queue;
  final MediaItem mediaItem;
  MiniPlayer({@required this.mediaItem, @required this.queue});

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: 60,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          if(mediaItem?.artUri!=null) Image.network(mediaItem.artUri.toString(),fit: BoxFit.cover,width: 60),
          Flexible(flex: 5  ,
            child: Padding(padding: const EdgeInsets.only(left: 9),
              child: MarqueeText(text:mediaItem?.title??'',style: TextStyle(color: Theme.of(context).brightness==Brightness.light?Colors.black:Colors.white),speed: 12),
            ),
          ),
          Spacer(),
          Row(mainAxisSize: MainAxisSize.min,mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(icon: Icon(Icons.skip_previous), iconSize: 30.0, onPressed: mediaItem == queue.first ? null : AudioService.skipToPrevious),
              StreamBuilder<bool>(
                stream: AudioService.playbackStateStream.map((state) => state.playing).distinct(),
                builder: (context, snapshot) {
                  final playing = snapshot.data ?? false;
                  return CircleAvatar(maxRadius: 23,backgroundColor: Theme.of(context).brightness==Brightness.light?Theme.of(context).accentColor:Theme.of(context).primaryColor,
                    child: StreamBuilder<AudioProcessingState>(
                      stream: AudioService.playbackStateStream.map((state) => state.processingState).distinct(),
                      builder: (context, snapshot) {
                        final processingState = snapshot?.data ?? AudioProcessingState.none;
                        if(processingState==AudioProcessingState.buffering||processingState==AudioProcessingState.skippingToNext||processingState==AudioProcessingState.skippingToPrevious||processingState==AudioProcessingState.connecting){
                          return CircularProgressIndicator(valueColor:AlwaysStoppedAnimation<Color>(Colors.white));
                        }
                        else {
                          if (playing) return IconButton(icon: Icon(Icons.pause,color: Colors.white), iconSize: 20.0, onPressed: AudioService.pause);
                          else return IconButton(icon: Icon(Icons.play_arrow,color: Colors.white), iconSize: 20.0, onPressed: AudioService.play);
                        }
                      },
                    ),
                  );
                },
              ),
              IconButton(icon: Icon(Icons.skip_next), iconSize: 30.0, onPressed: mediaItem == queue.last ? null : AudioService.skipToNext),
              SizedBox(width: 10)
            ],)
        ],),
    );
  }
}
