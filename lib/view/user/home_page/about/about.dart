import 'package:flutter/material.dart';
import 'package:nakshatra_frames/view/fonts/fonts.dart';

class AboutNakshatraFrames extends StatelessWidget {
  const AboutNakshatraFrames({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: GooglePoppinsWidgets(text: "About Us\n"
"Our Vision\n"
"Nakshatra Frames is committed to transforming creative ideas into visual masterpieces. We strive to push the boundaries of conventional filmmaking, delivering stories that resonate with audiences and leave a lasting impact."

"Our Heritage\n"
"As a sister concern of LeptonPlus Communications, Nakshatra Frames benefits from a rich heritage of media and communication expertise. Our association ensures we maintain the highest standards of quality and professionalism in all our endeavors."

"Services\n"
"Our Offerings\n"
"At Nakshatra Frames, we offer a comprehensive range of services tailored to meet the diverse needs of our clients."

"Film Production\n\n"

"Feature Films\n"
"Short Films\n"
"Documentaries\n"
"Advertising Films\n\n"

"Television Commercials\n"
"Digital Ads\n"
"Brand Promotions\n"
"YouTube Content\n\n"

"Web Series\n"
"Vlogs\n"
"Branded Content\n"
"From Concept to Completion\n"
"We handle every aspect of production with meticulous attention to detail, ensuring your vision is realized with precision and creativity.", 
fontsize: 13),
        ),
      ),
    );
  }
}