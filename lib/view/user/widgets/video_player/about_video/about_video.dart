import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AboutVideoText extends StatelessWidget {
  const AboutVideoText({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 10),
            child: Container(
                child: Image.asset('webassets/videos/corona_noval.jpeg'),
            ),
          )
          
    );
  }
}
