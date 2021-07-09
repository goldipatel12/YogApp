import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoManager {
  static VideoPlayerController videoController;

  static Future<void> initializeVideoController({
    @required String videoUrl,
  }) async {
    videoController = VideoPlayerController.network(videoUrl ??
        'https://stream.mux.com/kiBM5MAziq4wGLnc2GCVixAL8EXYg7wcUDA00VcSkzNM.m3u8.m3u8');
    await videoController.initialize();
  }
}
