import 'package:flutter/material.dart';
import 'package:nakshatra_frames/view/colors/colors.dart';
import 'package:nakshatra_frames/view/user/widgets/responsive/responsive.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactAndDeatilsWidget extends StatelessWidget {
  const ContactAndDeatilsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Container(
        color: cBlack,
        height:ResponsiveWebSite.isMobile(context)?530:ResponsiveWebSite.isTablet(context)?560: 400,
        child: ResponsiveWebSite.isDesktop(context)
            ? Row(
                //>>>>>>>>>>>>>>>>>>>>    DESK TOP VIEW <<<<<<<<<<<<<<<<<<<<<<
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    height: 360,
                    width: 320,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 40,
                          width: 250,
                          child: Row(
                            children: [
                              SizedBox(
                                  height: 40,
                                  width: 40,
                                  child: Image.asset(
                                      'webassets/images/leptonlogo.png')),
                              const SizedBox(
                                width: 10,
                              ),
                              SizedBox(
                                  height: 40,
                                  width: 200,
                                  child: Image.asset(
                                      'webassets/images/nakshatra_Frames.png'))
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 265,
                          width: 250,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(top: 20),
                                  child: Text(
                                    '7th Floor, Karimpanal Statue Avenue,\nG.H Road, Statue\nTrivandrum-01',
                                    style: TextStyle(color: cWhite),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(top: 5),
                                  child: Text(
                                    '📞 +91 471 4053483',
                                    style: TextStyle(color: cWhite),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(top: 5),
                                  child: Text(
                                    '✉️ framesnakshatra@lepton.com',
                                    style: TextStyle(color: cWhite),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: GestureDetector(
                                    onTap: () {
                                      launchWhatsAppUrl();
                                    },
                                    child: Image.asset(
                                      "webassets/images/whatsApp_image.png",
                                      height: screenSize.width / 15,
                                      width: screenSize.width / 10,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 300,
                    width: 1,
                    color: Colors.amber,
                  ),
                  SizedBox(
                    height: 360,
                    width: 320,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 40,
                          width: 250,
                          child: Row(
                            //  mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                  height: 40,
                                  width: 200,
                                  child: Image.asset(
                                      'webassets/images/lepton_logo_text.png')),
                                      const SizedBox(
                                  height: 35,
                                  width: 35,),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 265,
                          width: 270,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(top: 20),
                                  child: Text(
                                    '5th Floor, Karimpanal Statue Avenue,\nG.H Road, Statue\nTrivandrum-01',
                                    style: TextStyle(color: cWhite),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(top: 5),
                                  child: Text(
                                    '📞 +91 904866651',
                                    style: TextStyle(color: cWhite),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(top: 5),
                                  child: Text(
                                    '✉️ leptoncommunications@gmail.com',
                                    style: TextStyle(color: cWhite),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: GestureDetector(
                                    onTap: () {
                                      launchWhatsAppUrl();
                                    },
                                    child: Image.asset(
                                      "webassets/images/whatsApp_image.png",
                                      height: screenSize.width / 15,
                                      width: screenSize.width / 10,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            :
            //>>>>>>>>>>>>>>>> MOBILE VIEW    <<<<<<<<<<<<<<<<<<<<<

            Column(
                children: [
                  SizedBox(
                    height: 260,
                    width: 320,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 40,
                          width: 250,
                          child: Row(
                            children: [
                              SizedBox(
                                  height: 40,
                                  width: 40,
                                  child: Image.asset(
                                      'webassets/images/leptonlogo.png')),
                              const SizedBox(
                                width: 10,
                              ),
                              SizedBox(
                                  height: 40,
                                  width: 200,
                                  child: Image.asset(
                                      'webassets/images/nakshatra_Frames.png'))
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 205,
                          width: 250,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(top: 20),
                                  child: Text(
                                    '7th Floor, Karimpanal Statue Avenue,\nG.H Road, Statue\nTrivandrum-01',
                                    style: TextStyle(color: cWhite),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(top: 5),
                                  child: Text(
                                    '📞 +91 471 4053483',
                                    style: TextStyle(color: cWhite),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(top: 5),
                                  child: Text(
                                    '✉️ framesnakshatra@lepton.com',
                                    style: TextStyle(color: cWhite),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: GestureDetector(
                                    onTap: () {
                                      launchWhatsAppUrl();
                                    },
                                    child: Image.asset(
                                      "webassets/images/whatsApp_image.png",
                                      height: 60,
                                      width: 100,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  
                  SizedBox(
                    height: 260,
                    width: 320,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 40,
                          width: 250,
                          child: Row(
                            //  mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                  height: 40,
                                  width: 200,
                                  child: Image.asset(
                                      'webassets/images/lepton_logo_text.png')),
                                      const SizedBox(
                                  height: 35,
                                  width: 35,),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 205,
                          width: 270,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(top: 20),
                                  child: Text(
                                    '5th Floor, Karimpanal Statue Avenue,\nG.H Road, Statue\nTrivandrum-01',
                                    style: TextStyle(color: cWhite),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(top: 5),
                                  child: Text(
                                    '📞 +91 904866651',
                                    style: TextStyle(color: cWhite),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(top: 5),
                                  child: Text(
                                    '✉️ leptoncommunications@gmail.com',
                                    style: TextStyle(color: cWhite),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: GestureDetector(
                                    onTap: () {
                                      launchWhatsAppUrl();
                                    },
                                    child: Image.asset(
                                      "webassets/images/whatsApp_image.png",
                                       height: 60,
                                      width: 100,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ));
  }
}

final Uri _whatsAppUrl = Uri.parse(
    "https://wa.me/9048666651/?text=${Uri.parse('Would like to get an Appointment')}");

Future<void> launchWhatsAppUrl() async {
  if (!await launchUrl(_whatsAppUrl)) {
    throw 'Could not launch $_whatsAppUrl';
  }
}
