import 'package:animations/animations.dart';
import 'package:audio_service/audio_service.dart';
import 'package:flutter/material.dart';
import 'package:lec_attendance_system/model/queuestate.dart';
import 'package:lec_attendance_system/model/queuestream.dart';
import 'package:loading_animations/loading_animations.dart';
import 'audiogridlist.dart';
import 'miniplayer.dart';
import 'nowplaying.dart';

class FMStations extends StatelessWidget {
  final int currentTab;
  FMStations({@required this.currentTab});

  @override
  Widget build(BuildContext context) {
    final isBright = Theme.of(context).brightness==Brightness.light;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: isBright?Theme.of(context).accentColor:Theme.of(context).primaryColor,
        title: Text("All Stations"),centerTitle: true),
      body: StreamBuilder<bool>(
        stream: AudioService.runningStream,
        builder: (context, snapshot) {
          final running = snapshot.data ?? false;
          if(snapshot.hasError) return Center(child: Text(snapshot.error.toString()));
          if (!running) return Center(child: Column(mainAxisSize: MainAxisSize.min,mainAxisAlignment: MainAxisAlignment.center,
            children: [
              LoadingFlipping.circle(borderColor: Theme.of(context).accentColor),
              SizedBox(height: 30),
              Text("Connecting...",style: TextStyle(fontWeight: FontWeight.w700,color: Theme.of(context).brightness == Brightness.light?Colors.black:Colors.white),),
            ],
          ));
          else return StreamBuilder<QueueState>(
            stream: queueStateStream,
            builder: (context, snapshot) {
              final queueState = snapshot.data;
              final queue = queueState?.queue ?? [];
              final nepaliList = queue.where((element) => element.album=="Nepali").toList();
              final hindiList = queue.where((element) => element.album=="Hindi").toList();
              if(queue==null||queue.isEmpty) return Center(child: LoadingJumpingLine.circle(backgroundColor: Theme.of(context).accentColor));
              if(snapshot.hasError) return Center(child: Text(snapshot.error.toString()));
              return DefaultTabController(
                initialIndex: currentTab??0,
                length: 2,
                child: Column(
                  children: [
                    Container(color: Theme.of(context).brightness==Brightness.light?Theme.of(context).accentColor:Theme.of(context).primaryColor,
                      child: TabBar(
                        indicatorWeight: 1,
                        indicatorColor: Colors.white,
                        tabs: [
                          Tab(text:"Nepali Stations"),
                          Tab(text:"Hindi Stations"),
                        ],),
                    ),
                    Expanded(
                      child: TabBarView(children: [
                        GridList(queue: nepaliList),
                        GridList(queue: hindiList)
                      ]),
                    ),
                  ],),
              );
            },
          );
        },
      ),
      bottomNavigationBar: StreamBuilder<QueueState>(
        stream: queueStateStream,
        builder: (context, snapshot) {
          final queueState = snapshot.data;
          final queue = queueState?.queue ?? [];
          final mediaItem = queueState?.mediaItem;
          if(queue.isNotEmpty&&queue!=null)
            return OpenContainer(closedColor: Colors.transparent,openColor: Colors.transparent,
              openBuilder: (context, action) {
                return CurrentlyPlaying(title: mediaItem.title);
              },
              closedBuilder: (context, action) {
                return Card(margin: EdgeInsets.zero,elevation: 7,
                  child: InkWell(
                    splashFactory: InkRipple.splashFactory,
                    onTap: action,
                    child: MiniPlayer(queue: queue, mediaItem: mediaItem),
                  ),
                );
              },);
          else return SizedBox();
        },
      ),
    );
  }
}





