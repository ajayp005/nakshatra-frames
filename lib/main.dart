import 'package:flutter/material.dart';
import 'package:nakshatra_frames/view/user/widgets/video_player/main_video_player.dart';

void main() {
    WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'Nakshatra Frames',
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        body: SafeArea(child: ListView(
          children: const [
            VideoPlayerDemo1()
          ],
        )),
      ),

    );
  }
}
