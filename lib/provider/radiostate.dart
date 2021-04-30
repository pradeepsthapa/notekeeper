import 'package:audio_service/audio_service.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lec_attendance_system/model/audioplayertask.dart';

void startService(){
  AudioService.start(backgroundTaskEntrypoint: audioPlayerTaskEntrypoint,
    androidNotificationChannelName: 'FM Radio',
    androidNotificationIcon: 'mipmap/ic_launcher',
    androidEnableQueue: true,
  );
}

class AudioState extends ChangeNotifier{

}

final audioState = ChangeNotifierProvider((ref)=>AudioState());