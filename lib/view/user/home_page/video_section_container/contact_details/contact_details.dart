import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nakshatra_frames/view/fonts/fonts.dart';
import 'package:nakshatra_frames/view/user/widgets/colors.dart';
import 'package:nakshatra_frames/view/user/widgets/google_monstserrat_widget.dart';
import 'package:nakshatra_frames/view/user/widgets/responsive/responsive.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactAndDeatilsWidget extends StatelessWidget {
  const ContactAndDeatilsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Container(
        color: Colors.black,
        height: 400,
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
                        Container(
                          height: 40,
                          width: 250,
                          child: Row(
                            children: [
                              Container(
                                  height: 40,
                                  width: 40,
                                  child: Image.asset(
                                      'webassets/images/leptonlogo.png')),
                              const SizedBox(
                                width: 10,
                              ),
                              Container(
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
                        Container(
                          height: 40,
                          width: 250,
                          child: Row(
                            //  mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                  height: 40,
                                  width: 200,
                                  child: Image.asset(
                                      'webassets/images/lepton_logo_text.png')),
                                      Container(
                                  height: 40,
                                  width: 40,),
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
                    height: ResponsiveWebSite.isMobile(context) ? 200 : 250,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GoogleMonstserratWidgets(
                          text: '''Emergency contacts''',
                          fontsize:
                              ResponsiveWebSite.isMobile(context) ? 18 : 22,
                          color: cWhite,
                          fontWeight: FontWeight.bold,
                        ),
                        SizedBox(
                          height: 150,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Column(
                              children: [
                                Text(
                                  '📞 +91 471 4053483',
                                  style: TextStyle(
                                      color: cWhite,
                                      fontSize:
                                          ResponsiveWebSite.isMobile(context)
                                              ? 13
                                              : 16),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Text(
                                    '✉️ framesnakshatra@lepton.com',
                                    style: TextStyle(
                                        color: cWhite,
                                        fontSize:
                                            ResponsiveWebSite.isMobile(context)
                                                ? 13
                                                : 16),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () => launchWhatsAppUrl(),
                                  child: SizedBox(
                                    height: 70,
                                    width: 150,
                                    child: Image.asset(
                                      "webassets/images/whatsApp_image.png",
                                      height: 70,
                                      width: 150,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: 1,
                          width: double.infinity,
                          color: Colors.amber,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: ResponsiveWebSite.isMobile(context) ? 200 : 250,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 20, left: 20),
                          child: GooglePoppinsWidgets(
                            text: 'Our Office Address',
                            fontsize: 20,
                            color: cWhite,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 30,
                          ),
                          child: SizedBox(
                            height: 120,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                GooglePoppinsWidgets(
                                  text: 'TRIVANDRUM OFFICE',
                                  fontsize: ResponsiveWebSite.isMobile(context)
                                      ? 14
                                      : 18,
                                  color: cWhite,
                                  fontWeight: FontWeight.w500,
                                ),
                                GooglePoppinsWidgets(
                                  text:
                                      '5th Floor, Karimpanal Statue Avenue,Near\nSecretariat Trivandrum-01\nCall +91 9048666651',
                                  fontsize: 13,
                                  color: cWhite,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
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
