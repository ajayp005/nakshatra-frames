import 'dart:developer';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nakshatra_frames/controller/scroll.dart';
import 'package:nakshatra_frames/view/user/home_page/about/about.dart';
import 'package:nakshatra_frames/view/user/widgets/responsive/responsive.dart';

class HomePageImageWidget extends StatelessWidget {
  final ScrollControllerGetx scrollControllerGetx =
      Get.put(ScrollControllerGetx());
  HomePageImageWidget({
    super.key,
    required this.scrollController,
  });

  final ScrollController scrollController;

  void scrollToSecondContainer() {
    scrollControllerGetx.isScrolled.value = true;
    scrollController.animateTo(
      500.0, // Adjust as needed based on your layout
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: scrollController,
      child: Container(
        height: ResponsiveWebSite.isMobile(context)
            ? 550
            : ResponsiveWebSite.isTablet(context)
                ? 650
                : 850,
        width: double.infinity,
        color: Colors.black,
        child: Stack(
          children: [
            // Displaying the appropriate image based on device type
            ResponsiveWebSite.isMobile(context)
                ? const Image(
                    image: AssetImage(
                      'webassets/images/naksfrmemob.png',
                    ),
                    fit: BoxFit.fill,
                  )
                : const Image(
                    image: AssetImage(
                      'webassets/images/newnksht.png',
                    ),
                    fit: BoxFit.fill,
                  ),
            // Positioned widget to place the Align widget at the bottom center
            Positioned(
              bottom: 200, // Adjust bottom position as needed
              left: 0,
              right: 0,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: SizedBox(
                  width: 200, // Adjust width as needed
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          scrollToSecondContainer();
                        },
                        child: const SizedBox(
                          width: 50,
                          height: 50,
                          child: Icon(
                            Icons.arrow_downward,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      AnimatedTextKit(
                        animatedTexts: [
                          RotateAnimatedText(
                            'Scroll Down',
                            textStyle: const TextStyle(
                              fontSize: 18.0,
                              color: Colors.white,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                        totalRepeatCount: 3, // Repeat animation 3 times
                        pause: const Duration(
                            milliseconds: 500), // Pause between repeats
                        displayFullTextOnTap: true, // Display full text on tap
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AppbarWidgets extends StatelessWidget {
  const AppbarWidgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          child: const Text(
            "Home",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
        ),
        const SizedBox(
          width: 15,
        ),
        GestureDetector(
          onTap: () {
            log("1234567890");
            Get.to(() => const AboutNakshatraFrames());
          },
          child: const Text(
            "About Us",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
        ),
        const SizedBox(
          width: 15,
        ),
        Container(
          child: const Text(
            "Works",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
        ),
        const SizedBox(
          width: 15,
        ),
        Container(
          child: const Text(
            "Contact Us",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
        ),
        SizedBox(
          width: ResponsiveWebSite.isMobile(context) ? 8 : 200,
        ),
      ],
    );
  }
}
