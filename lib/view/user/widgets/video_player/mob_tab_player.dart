import 'package:flutter/material.dart';
import 'package:nakshatra_frames/view/colors/colors.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerApp extends StatefulWidget {
  const VideoPlayerApp({super.key});

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
     'https://www.youtube.com/watch?v=C_OxdN5r2kk'
       //'http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/WhatCarCanYouGetForAGrand.mp4'
        );

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





class VideoPlayerSmall extends StatefulWidget {
  const VideoPlayerSmall({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _VideoPlayerSmallState createState() => _VideoPlayerSmallState();
}

class _VideoPlayerSmallState extends State<VideoPlayerSmall> {
  late VideoPlayerController _smallcontroller;
  late Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    super.initState();
    // ignore: deprecated_member_use
    _smallcontroller = VideoPlayerController.network(
      'https://firebasestorage.googleapis.com/v0/b/bloctest-39269.appspot.com/o/leptonlilstars.mp4?alt=media&token=2658d296-64af-4b09-90bd-f55a7e1fe2b7'
    );

    _initializeVideoPlayerFuture = _smallcontroller.initialize().then((_) {
      setState(() {}); 
    });
    _smallcontroller.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: FutureBuilder(
        future: _initializeVideoPlayerFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return Center(
              child: GestureDetector(    
                 onTap: () {
                  setState(() {
                    _smallcontroller.pause();
                  });
                },
                child: AspectRatio(
                  aspectRatio: _smallcontroller.value.aspectRatio,
                  child: VideoPlayer(_smallcontroller),
                ),
              ),
            );
          } else if (snapshot.hasError) {
            return const Center(child: Text("Error loading video"));
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.transparent,
        mini: true,
        onPressed: () {
          setState(() {
            _smallcontroller.value.isPlaying
                ? _smallcontroller.pause()
                : _smallcontroller.play();
          });
        },
        child: Icon(color: cWhite,
          _smallcontroller.value.isPlaying ? Icons.pause : Icons.play_arrow,
        ),
      ),floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  @override
  void dispose() {
    _smallcontroller.dispose();
    super.dispose();
  }
}


class VideoPlayerSecond extends StatefulWidget {
  const VideoPlayerSecond({super.key});

  @override
  _VideoPlayerSecondState createState() => _VideoPlayerSecondState();
}

class _VideoPlayerSecondState extends State<VideoPlayerSecond> {
  late VideoPlayerController _secondcontroller;
  late Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    super.initState();

    // Create a VideoPlayerController for the video you want to play.
    _secondcontroller = VideoPlayerController.network(
'https://firebasestorage.googleapis.com/v0/b/bloctest-39269.appspot.com/o/leptonteleop.mp4?alt=media&token=47a2480a-c955-488c-ae26-e591f229c454'
    );

    // Initialize the VideoPlayerController and store the Future for later use.
    _initializeVideoPlayerFuture = _secondcontroller.initialize().then((_) {
      setState(() {}); // Ensure the state is updated when the initialization is complete
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: FutureBuilder(
        future: _initializeVideoPlayerFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            // If the VideoPlayerController has finished initialization, build the VideoPlayer widget.
            return Center(
              child: AspectRatio(
                aspectRatio: _secondcontroller.value.aspectRatio,
                child: VideoPlayer(_secondcontroller),
              ),
            );
          } else if (snapshot.hasError) {
            // If there's an error during initialization, show an error message.
            return const Center(child: Text("Error loading video"));
          } else {
            // If the VideoPlayerController is still initializing, show a loading spinner.
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.transparent,
         mini: true,
        onPressed: () {
          setState(() {
            _secondcontroller.value.isPlaying
                ? _secondcontroller.pause()
                : _secondcontroller.play();
          });
        },
        child: Icon(color: cWhite,
          _secondcontroller.value.isPlaying ? Icons.pause : Icons.play_arrow,
        ),
      ),floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  @override
  void dispose() {
    // Dispose of the VideoPlayerController.
    _secondcontroller.dispose();
    super.dispose();
  }
}



class VideoPlayerAppThird extends StatefulWidget {
  const VideoPlayerAppThird({super.key});

  @override
  _VideoPlayerAppThirdState createState() => _VideoPlayerAppThirdState();
}

class _VideoPlayerAppThirdState extends State<VideoPlayerAppThird> {
  late VideoPlayerController _thirdcontroller;
  late Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    super.initState();

    // Create a VideoPlayerController for the video you want to play.
    _thirdcontroller = VideoPlayerController.network(
     'https://firebasestorage.googleapis.com/v0/b/bloctest-39269.appspot.com/o/leptonteleop2.mp4?alt=media&token=4f8177ab-4e5a-495e-b090-38cb4f6af022'
    );

    // Initialize the VideoPlayerController and store the Future for later use.
    _initializeVideoPlayerFuture = _thirdcontroller.initialize().then((_) {
      setState(() {}); // Ensure the state is updated when the initialization is complete
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: FutureBuilder(
        future: _initializeVideoPlayerFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            // If the VideoPlayerController has finished initialization, build the VideoPlayer widget.
            return Center(
              child: AspectRatio(
                aspectRatio: _thirdcontroller.value.aspectRatio,
                child: VideoPlayer(_thirdcontroller),
              ),
            );
          } else if (snapshot.hasError) {
            // If there's an error during initialization, show an error message.
            return const Center(child: Text("Error loading video"));
          } else {
            // If the VideoPlayerController is still initializing, show a loading spinner.
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.transparent,
         mini: true,
        onPressed: () {
          setState(() {
            _thirdcontroller.value.isPlaying
                ? _thirdcontroller.pause()
                : _thirdcontroller.play();
          });
        },
        child: Icon(color: cWhite,
          _thirdcontroller.value.isPlaying ? Icons.pause : Icons.play_arrow,
        ),
      ),floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  @override
  void dispose() {
    // Dispose of the VideoPlayerController.
    _thirdcontroller.dispose();
    super.dispose();
  }
}


class VideoPlayerAppFourth extends StatefulWidget {
  const VideoPlayerAppFourth({super.key});

  @override
  _VideoPlayerAppFourthState createState() => _VideoPlayerAppFourthState();
}

class _VideoPlayerAppFourthState extends State<VideoPlayerAppFourth> {
  late VideoPlayerController _fourthcontroller;
  late Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    super.initState();

    // Create a VideoPlayerController for the video you want to play.
    _fourthcontroller = VideoPlayerController.network(
     'https://firebasestorage.googleapis.com/v0/b/bloctest-39269.appspot.com/o/Chasing%20the%20Future%20for%20a%20better%20Today%20%20__%20LEPTON.mp4?alt=media&token=1d37a6f4-c333-4eed-8bfe-28cc29c39bae'
    );

    // Initialize the VideoPlayerController and store the Future for later use.
    _initializeVideoPlayerFuture = _fourthcontroller.initialize().then((_) {
      setState(() {}); // Ensure the state is updated when the initialization is complete
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: FutureBuilder(
        future: _initializeVideoPlayerFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            // If the VideoPlayerController has finished initialization, build the VideoPlayer widget.
            return Center(
              child: AspectRatio(
                aspectRatio: _fourthcontroller.value.aspectRatio,
                child: VideoPlayer(_fourthcontroller),
              ),
            );
          } else if (snapshot.hasError) {
            // If there's an error during initialization, show an error message.
            return const Center(child: Text("Error loading video"));
          } else {
            // If the VideoPlayerController is still initializing, show a loading spinner.
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.transparent,
         mini: true,
        onPressed: () {
          setState(() {
            _fourthcontroller.value.isPlaying
                ? _fourthcontroller.pause()
                : _fourthcontroller.play();
          });
        },
        child: Icon(color: cWhite,
          _fourthcontroller.value.isPlaying ? Icons.pause : Icons.play_arrow,
        ),
      ),floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  @override
  void dispose() {
    // Dispose of the VideoPlayerController.
    _fourthcontroller.dispose();
    super.dispose();
  }
}



