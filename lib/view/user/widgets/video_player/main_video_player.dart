import 'dart:developer';
import 'dart:ui';

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

    _controller = VideoPlayerController.networkUrl(Uri.parse(longVideo));
      _controller.initialize().then((value) => _controller.play()).then((value) => _controller.pause());
  }
  void _handleTap() {
    print('Container tapped!');
    // Perform any actions you want when the container is "tapped"
  }

  void _onVisibilityChanged(VisibilityInfo info) {
    // _controller.play();
    log("Visibility changed: ${info.visibleFraction}");
    if (info.visibleFraction == 0 && _controller.value.isPlaying) {
      log("Video paused because it is not visible.");
      _controller.pause();
    } else if (info.visibleFraction > 0 && !_controller.value.isPlaying) {
      _controller.initialize().then((value) => _controller.play());
      log("Video played from current position because it became visible.");
      // _controller.seekTo(Duration.zero);
    }
  }

  @override
  Widget build(BuildContext context) {
       WidgetsBinding.instance.addPostFrameCallback((_) {
      _handleTap(); // Call _handleTap function programmatically
    });
    return Listener(
         onPointerDown: (PointerDownEvent event) {
              if (event.kind == PointerDeviceKind.mouse) {
                print('Mouse tapped!');
                // Perform any actions you want when the mouse is tapped
              }
            },
      child: VisibilityDetector(
          key: const Key('video-player'),
          onVisibilityChanged: _onVisibilityChanged,
          child: AspectRatio(
            aspectRatio: _controller.value.aspectRatio,
            child: VideoPlayer(_controller),
          )),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}

String videoUrlLandscape =
    "https://firebasestorage.googleapis.com/v0/b/bloctest-39269.appspot.com/o/Chasing%20the%20Future%20for%20a%20better%20Today%20%20__%20LEPTON.mp4?alt=media&token=1d37a6f4-c333-4eed-8bfe-28cc29c39bae";
String longVideo =
    "https://firebasestorage.googleapis.com/v0/b/bloctest-39269.appspot.com/o/coronakalathe%20pranayam%20frstvdo.mp4?alt=media&token=633f1d70-497b-407a-a824-7b8342a1dd3d";
