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
              ? 325
              : 350,
      child: Row(
        mainAxisAlignment:MainAxisAlignment.center,
      // :  MainAxisAlignment.spaceBetween,
        children: [
          Column(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: EdgeInsets.only(top: ResponsiveWebSite.isDesktop(context)?50:ResponsiveWebSite.isMobile(context)?10:20 ),
                child: SizedBox(
                 // color: cBlue,
                  height:ResponsiveWebSite.isMobile(context)?30: 60,
                  width: ResponsiveWebSite.isMobile(context)?250: size.width / 1.9,
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
              SizedBox(
                height:ResponsiveWebSite.isTablet(context)?225: 200,
                width:ResponsiveWebSite.isMobile(context)?290:ResponsiveWebSite.isTablet(context)?350: size.width / 1.9,
                child: Center(
                  child: GooglePoppinsWidgets(
                      text:
                          'At Nakshatra Frames, we are dedicated to the art of storytelling through the magic of film. As a premier film production company based in Trivandrum, India, we specialize in creating captivating movies, engaging ad films, and vibrant YouTube content. As a proud sister concern of Lepton Communications, officially LeptonPlus Communications (OPC) Pvt Ltd, we bring a legacy of creativity, innovation, and excellence to every project.',
                      fontsize: ResponsiveWebSite.isTablet(context) ? 13 :ResponsiveWebSite.isMobile(context)?10: 15,
                      color: Colors.white),
                ),
              ),
            ],
          ),
          
        ],
      ),
    );
  }
}
