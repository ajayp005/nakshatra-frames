import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nakshatra_frames/view/fonts/fonts.dart';
import 'package:nakshatra_frames/view/user/widgets/back_button/back_button.dart';
import 'package:nakshatra_frames/view/user/widgets/responsive/responsive.dart';

showAboutPage(BuildContext context) async {
  // https://img.freepik.com/premium-photo/statue-justice-lady-justice-iustitia-justitia-roman-goddess-justice_157125-18202.jpg
  return showDialog(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
        // backgroundColor: Colors.grey,
        title: Row(
          children: [
            const BackButtonContainerWidget(),
            Padding(
              padding: EdgeInsets.only(
                  left: ResponsiveWebSite.isMobile(context) ? 20 : 50),
              child: GooglePoppinsWidgets(
                text: 'A B O U T ',
                fontsize: ResponsiveWebSite.isMobile(context) ? 11 : 15,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              SizedBox(
                  height: 700,
                  width: 1000,
                  child: ResponsiveWebSite.isDesktop(context)
                      ? Column(
                          children: [
                            Stack(
                              children: [
                                Container(
                                  width: double.infinity,
                                  height: 300,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                          'webassets/images/nakshatraframe2.png'),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 200),
                                  child: SizedBox(
                                    height: 400,
                                    width: double.infinity,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          decoration: const BoxDecoration(
                                              color: Colors.grey
                                              // boxShadow: [
                                              //   // BoxShadow(
                                              //   //   color: Colors.grey,
                                              //   //   blurRadius: 8,
                                              //   //   spreadRadius: 2,
                                              //   //   offset: Offset(4, 4),
                                              //   // ),
                                              // ],
                                              // gradient: LinearGradient(
                                              //     colors: [
                                              //       Color.fromARGB(
                                              //           255, 148, 89, 144),
                                              //       Color.fromARGB(
                                              //           255, 101, 43, 97)
                                              //     ],
                                              //     begin: Alignment.centerLeft,
                                              //     end: Alignment.centerRight),
                                              ),
                                          height: 400,
                                          width: 300,
                                          child: SingleChildScrollView(
                                            child: Column(
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 95),
                                                  child: GooglePoppinsWidgets(
                                                    text: "XXXXXX",
                                                    fontsize: 16,
                                                    fontWeight: FontWeight.w500,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 0),
                                                  child: GooglePoppinsWidgets(
                                                    text: "Managing Director",
                                                    fontsize: 12,
                                                    fontWeight: FontWeight.w300,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.all(10),
                                                  child: GooglePoppinsWidgets(
                                                      text:
                                                          '',
                                                      fontsize: 11),
                                                ),
                                                const SizedBox(
                                                  height: 10,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                            child: Padding(
                                          padding:
                                              const EdgeInsets.only(top: 110),
                                          child: Column(
                                            children: [
                                              GooglePoppinsWidgets(
                                                text: "About Company",
                                                fontsize: 15,
                                                fontWeight: FontWeight.bold,
                                                color: const Color.fromARGB(
                                                    255, 101, 43, 97),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(10),
                                                child: GooglePoppinsWidgets(
                                                  text:
                                                      "",
                                                  fontsize: 11,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              )
                                            ],
                                          ),
                                        )),
                                        Container(
                                            decoration: const BoxDecoration(
                                              color: Colors.grey,
                                              // boxShadow: [
                                              //   BoxShadow(
                                              //     color: Color.fromARGB(
                                              //         255, 148, 89, 144),
                                              //     blurRadius: 8,
                                              //     spreadRadius: 2,
                                              //     offset: Offset(4, 4),
                                              //   ),
                                              // ],
                                              // gradient: LinearGradient(
                                              //     colors: [
                                              //       Color.fromARGB(
                                              //           255, 148, 89, 144),
                                              //       Color.fromARGB(
                                              //           255, 101, 43, 97)
                                              //     ],
                                              //     begin: Alignment.centerLeft,
                                              //     end: Alignment.centerRight),
                                            ),
                                            height: 400,
                                            width: 300,
                                            child: SingleChildScrollView(
                                              child: Column(
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 95),
                                                    child: GooglePoppinsWidgets(
                                                      text: "XXXXXXXX",
                                                      fontsize: 16,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 0),
                                                    child: GooglePoppinsWidgets(
                                                      text: "Director",
                                                      fontsize: 12,
                                                      fontWeight:
                                                          FontWeight.w300,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            10),
                                                    child: SizedBox(
                                                      height: 310,
                                                      child:
                                                          GooglePoppinsWidgets(
                                                        text:
                                                            "",
                                                        fontsize: 11,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    height: 10,
                                                  ),
                                                ],
                                              ),
                                            ))
                                      ],
                                    ),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(top: 150, left: 70),
                                  child: CircleAvatar(
                                    backgroundColor:  Colors.white,
                                    radius: 70,
                                    child: CircleAvatar(
                                      backgroundImage: AssetImage(
                                          'webassets/images/dance.png'),
                                      radius: 68,
                                    ),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(top: 150, left: 780),
                                  child: CircleAvatar(
                                    backgroundColor:Colors.white,
                                    radius: 70,
                                    child: CircleAvatar(
                                      backgroundImage: AssetImage(
                                        'webassets/images/dance_flip.png',
                                      ),
                                      radius: 68,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        )
                      : ListView(
                          children: [
                            Container(
                              width: double.infinity,
                              height: ResponsiveWebSite.isMobile(context)
                                  ? 100
                                  : 200,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: const AssetImage(
                                      'assests/images/law_justics.jpeg'),
                                  fit: ResponsiveWebSite.isMobile(context)
                                      ? BoxFit.fitWidth
                                      : BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: ResponsiveWebSite.isMobile(context)
                                  ? 554
                                  : 220,
                              child: Column(
                                children: [
                                  GooglePoppinsWidgets(
                                    text: "About Company",
                                    fontsize: 15,
                                    fontWeight: FontWeight.bold,
                                    color:
                                        const Color.fromARGB(255, 101, 43, 97),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: GooglePoppinsWidgets(
                                      text:
                                          "",
                                      fontsize: 11,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              decoration: const BoxDecoration(
                                   color: Colors.grey
                              ),
                              height: 1200,
                              width: double.infinity,
                              child: Column(
                                children: [
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  const CircleAvatar(
                                    backgroundColor: Colors.white,
                                    radius: 70,
                                    child: CircleAvatar(
                                      backgroundImage: AssetImage(
                                          'assests/images/shai_solo.png'),
                                      radius: 68,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: GooglePoppinsWidgets(
                                      text: "XXXXXXX",
                                      fontsize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 0),
                                    child: GooglePoppinsWidgets(
                                      text: "Managing Director",
                                      fontsize: 12,
                                      fontWeight: FontWeight.w300,
                                      color:Colors.white,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: GooglePoppinsWidgets(
                                        text:
                                            '',
                                        fontsize: 11),
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                                decoration: const BoxDecoration(
                   color: Colors.grey
                                ),
                                height: 650,
                                width: double.infinity,
                                child: Column(
                                  children: [
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    const CircleAvatar(
                                      backgroundColor: Colors.white,
                                      radius: 70,
                                      child: CircleAvatar(
                                        backgroundImage: AssetImage(
                                          'assests/images/shila_dau--photo.jpeg',
                                        ),
                                        radius: 68,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 0),
                                      child: GooglePoppinsWidgets(
                                        text: "XXXXXX",
                                        fontsize: 16,
                                        fontWeight: FontWeight.w500,
                                        color:  Colors.white,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 0),
                                      child: GooglePoppinsWidgets(
                                        text: "Director",
                                        fontsize: 12,
                                        fontWeight: FontWeight.w300,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(10),
                                      child: GooglePoppinsWidgets(
                                        text:
                                            "",
                                        fontsize: 11,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    )
                                  ],
                                )),
                          ],
                        ))
            ],
          ),
        ),
      );
    },
  );
}
