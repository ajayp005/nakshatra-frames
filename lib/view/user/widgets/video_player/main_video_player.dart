import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:visibility_detector/visibility_detector.dart';

class VideoPlayerDemo1 extends StatefulWidget {
  const VideoPlayerDemo1({super.key});

  @override
  State<VideoPlayerDemo1> createState() => _VideoPlayerDemo1State();
}

class _VideoPlayerDemo1State extends State<VideoPlayerDemo1> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.networkUrl(Uri.parse(longVideo))
      ..initialize().then((_) {
        setState(() {});
      });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _onVisibilityChanged(VisibilityInfo info) {
    log("Visibility changed: ${info.visibleFraction}");
    if (info.visibleFraction == 0 && _controller.value.isPlaying) {
      log("Video paused because it is not visible.");
      _controller.pause();
    } else if (info.visibleFraction > 0 && !_controller.value.isPlaying) {
      log("Video played from current position because it became visible.");
      _controller.seekTo(Duration.zero);
      _controller.setVolume(0.9);
      _controller.play();
    }
  }

  @override
  Widget build(BuildContext context) {
    return VisibilityDetector(
      key: const Key('video-player'),
      onVisibilityChanged: _onVisibilityChanged,
      child: _controller.value.isInitialized
          ? AspectRatio(
              aspectRatio: _controller.value.aspectRatio,
              child: VideoPlayer(_controller),
            )
          : const Center(child: CircularProgressIndicator()),
    );
  }
}

String videoUrlLandscape =
    "https://firebasestorage.googleapis.com/v0/b/bloctest-39269.appspot.com/o/Chasing%20the%20Future%20for%20a%20better%20Today%20%20__%20LEPTON.mp4?alt=media&token=1d37a6f4-c333-4eed-8bfe-28cc29c39bae";
String longVideo =
    "https://firebasestorage.googleapis.com/v0/b/bloctest-39269.appspot.com/o/coronakalathe%20pranayam%20frstvdo.mp4?alt=media&token=633f1d70-497b-407a-a824-7b8342a1dd3d";
