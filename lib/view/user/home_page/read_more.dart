import 'package:flutter/material.dart';
import 'package:nakshatra_frames/view/fonts/fonts.dart';
import 'package:nakshatra_frames/view/user/widgets/responsive/responsive.dart';

class NakshatraReadMoreContainerWidget extends StatelessWidget {
  const NakshatraReadMoreContainerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      color: const Color.fromARGB(255, 19, 19, 19),
      height: ResponsiveWebSite.isMobile(context)
          ? 250
          : ResponsiveWebSite.isTablet(context)
              ? 300
              : 350,
      child: Row(
        mainAxisAlignment:ResponsiveWebSite.isMobile(context)?MainAxisAlignment.center:
         MainAxisAlignment.spaceBetween,
        children: [
          // Padding(
          //   padding: const EdgeInsets.only(left: 10),
          //   child: SizedBox(
          //     height: ResponsiveWebSite.isTablet(context)
          //         ? 200
          //         : ResponsiveWebSite.isMobile(context)
          //             ? double.infinity
          //             : 300,
          //     width: ResponsiveWebSite.isTablet(context)
          //         ? 120
          //         : ResponsiveWebSite.isMobile(context)
          //             ? 100
          //             : 220,
          //     // child: Image.asset(
          //     //   'webassets/images/dance.png',
          //     //   fit:ResponsiveWebSite.isMobile(context)?BoxFit.fitHeight: BoxFit.fitWidth,
          //     // ),
          //   ),
          // ),
          Column(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: EdgeInsets.only(top: ResponsiveWebSite.isDesktop(context)?50:ResponsiveWebSite.isMobile(context)?10:20 ),
                child: SizedBox(
                  height:ResponsiveWebSite.isMobile(context)?30: 60,
                  width: size.width / 1.9,
                  child: Center(
                    child: Padding(
                      padding: ResponsiveWebSite.isDesktop(context)
                          ? const EdgeInsets.only()
                          : const EdgeInsets.only(left: 0,top: 10),
                      child: GooglePoppinsWidgets(
                          text:
                              'Crafting Dreams into Reality',
                          fontsize: ResponsiveWebSite.isTablet(context) ? 15 :ResponsiveWebSite.isMobile(context)?13: 18,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
              // GestureDetector(
              //   onTap: () {
              //   showAboutPage(context);
              //   },
              //   child: Container(
              //     height:ResponsiveWebSite.isMobile(context)?20: 35,
              //     width: ResponsiveWebSite.isTablet(context) ? 100 : 150,
              //     decoration: BoxDecoration(
              //         border: Border.all(width: 2, color: Colors.yellow)),
              //     child: Center(
              //         child: GooglePoppinsWidgets(
              //       text: 'Read More...',
              //       fontsize:ResponsiveWebSite.isMobile(context)?10:12,
              //       color: Colors.white,
              //     )),
              //   ),
              // )
              SizedBox(
                height:200,
                width: size.width / 1.9,
                child: Center(
                  child: Padding(
                    padding: ResponsiveWebSite.isDesktop(context)
                        ? const EdgeInsets.only()
                        : const EdgeInsets.only(left: 0),
                    child: GooglePoppinsWidgets(
                        text:
                            'At Nakshatra Frames, we are dedicated to the art of storytelling through the magic of film. As a premier film production company based in Trivandrum, India, we specialize in creating captivating movies, engaging ad films, and vibrant YouTube content. As a proud sister concern of Lepton Communications, officially LeptonPlus Communications (OPC) Pvt Ltd, we bring a legacy of creativity, innovation, and excellence to every project.',
                        fontsize: ResponsiveWebSite.isTablet(context) ? 13 :ResponsiveWebSite.isMobile(context)?10: 15,
                        color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
          // SizedBox(
          //          height: ResponsiveWebSite.isTablet(context)
          //       ? 200
          //       : ResponsiveWebSite.isMobile(context)
          //           ? double.infinity
          //           : 300,
          //   width: ResponsiveWebSite.isTablet(context)
          //       ? 50
          //       : ResponsiveWebSite.isMobile(context)
          //           ? 20
          //           : 100,
          //     // child: Image.asset(
          //     //   'webassets/images/dance_flip.png',
          //     //   fit: BoxFit.fitHeight,
          //     // )
          //     ),
        ],
      ),
    );
  }
}
