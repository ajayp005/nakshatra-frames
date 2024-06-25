import 'package:flutter/material.dart';
import 'package:nakshatra_frames/view/user/home_page/home_page.dart';

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
      home:NakshatraFramesHomePage()

    );
  }
}
