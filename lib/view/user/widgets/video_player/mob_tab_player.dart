import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerApp extends StatefulWidget {
  @override
  _VideoPlayerAppState createState() => _VideoPlayerAppState();
}

class _VideoPlayerAppState extends State<VideoPlayerApp> {
  VideoPlayerController? _controller;

  @override
  void initState() {
    super.initState();

    // Create a VideoPlayerController for the video you want to play.
    _controller = VideoPlayerController.network(
        'http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/WhatCarCanYouGetForAGrand.mp4');

    // Initialize the VideoPlayerController.
    _controller!.initialize();

    // Play the video.
    _controller!.play();
  }

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: _controller!.value.aspectRatio,
      child: VideoPlayer(_controller!),
    );
  }

  @override
  void dispose() {
    super.dispose();

    // Dispose of the VideoPlayerController.
    _controller!.dispose();
  }
}
