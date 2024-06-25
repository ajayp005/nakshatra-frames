import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nakshatra_frames/view/user/home_page/about/about.dart';
import 'package:nakshatra_frames/view/user/widgets/responsive/responsive.dart';

class HomePageImageWidget extends StatelessWidget {
  const   HomePageImageWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        height: ResponsiveWebSite.isMobile(context)
            ? 550
            : ResponsiveWebSite.isTablet(context)
                ? 650
                : 850,
        width: double.infinity,
        color: Colors.black,
        child: ResponsiveWebSite.isMobile(context)
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
              ));
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
        )),
        const SizedBox(
          width: 15,
        ),
        GestureDetector(
          onTap: () {
            log("1234567890");
            Get.to(
              ()=>const AboutNakshatraFrames());
          },
          child:
          //  OnHoverText(builder: (isHoverd) {
          //   final color = isHoverd ? Colors.amber : cWhite;
          //   return
             const Text(
              "About Us",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            )
        //  }),
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
        )),
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
        )),
        SizedBox(
          width: ResponsiveWebSite.isMobile(context) ? 8 : 200,
        ),
      ],
    );
  }
}
