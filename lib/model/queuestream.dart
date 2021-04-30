import 'package:audio_service/audio_service.dart';
import 'package:lec_attendance_system/model/queuestate.dart';
import 'package:rxdart/rxdart.dart';

Stream<QueueState> get queueStateStream =>
    Rx.combineLatest2<List<MediaItem>, MediaItem, QueueState>(AudioService.queueStream, AudioService.currentMediaItemStream,
            (queue, mediaItem) => QueueState(queue, mediaItem));