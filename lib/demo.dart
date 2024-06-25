import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final ScrollController _scrollController = ScrollController();

  MyApp({super.key});
  bool _scrollEnabled = true;
 void scrollToSecondContainer() {
    if (_scrollEnabled) {
      _scrollController.animateTo(
        500, // Adjust as needed based on your layout
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
      _scrollEnabled = false; // Disable scrolling after first scroll
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Scroll to Container Example'),
        ),
        body: SingleChildScrollView(
          controller: _scrollController,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                height: MediaQuery.of(context).size.height, // Adjust height as needed
                color: Colors.blue,
                child: Center(
                  child: ElevatedButton(
                    onPressed: () {
                      scrollToSecondContainer();
                    },
                    child: const Text('Scroll Down'),
                  ),
                ),
              ),
              Container(
                height: 500, // Example height for the second container
                color: Colors.green,
                child: const Center(
                  child: Text(
                    'Second Container',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
