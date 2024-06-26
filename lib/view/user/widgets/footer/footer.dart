import 'package:flutter/material.dart';
import 'package:nakshatra_frames/view/colors/colors.dart';
import 'package:nakshatra_frames/view/fonts/fonts.dart';
import 'package:nakshatra_frames/view/user/widgets/responsive/responsive.dart';

class NakshatraFooterBar extends StatelessWidget {
  const NakshatraFooterBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color:Colors.black),
      height: ResponsiveWebSite.isDesktop(context) ? 200 :510 ,
      width: double.infinity,
      child: Column(
        children: [
          SizedBox(
            height:  ResponsiveWebSite.isDesktop(context) ? 200 :510 ,
            width: double.infinity,
            child: ResponsiveWebSite.isDesktop(context)
                ? 
                 Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Container(
                            height: 100,
                            width: 100,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image:
                                    AssetImage('webassets/images/leptonlogo.png'),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Padding(
                          padding: const EdgeInsets.only(right: 100,left: 00),
                          child: SizedBox(
                            height: 150,
                            child: Center(
                              child: GooglePoppinsWidgets(
                                  color: cWhite,
                                  text:
                                      'Lepton Plus Communications is a customer oriented company offering digital solutions in Healthcare,E-Commerce Applications Home Automation and Social Networking.We are commited to providing high end sustainable products and services that enhances the quality of life',
                                  fontsize: 13),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 00),
                          child: SizedBox(
                            height: 150,
                            child: GooglePoppinsWidgets(text: 
                            '📌 Lepton Plus Communications (OPC) Pvt.Ltd\n'
                                  '5 th Floor,Karimpanal Statue Avenue , G.H. Road \n'
                                  'Statue,Thiruvanathapuram - 695001,Kerala,India\n'
                              '📞 +91 97469 66651 | +91 97463 66651 | +91 471 4053483\n'
                              '✉️ info@leptoncommunications.com\n'
                              '✉️ leptoncommunications@gmail.com',color: cWhite, fontsize: 13),
                          ),
                        ),
                      )
                    ],
                  ):
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 80,
                        width: 80,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image:
                                AssetImage('webassets/images/leptonlogo.png'),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10,right: 10),
                        child: SizedBox(
                          // color: Colors.red,
                          height: 180,
                          width: 350,
                          child: Center(
                            child: GooglePoppinsWidgets(
                                color: cWhite,
                                text:
                                    'Lepton Plus Communications is a customer oriented company offering digital solutions in Healthcare,E-Commerce Applications. Home Automation and Social Networking.We are commited to providing high end sustainable products and services that enhances the quality of life',
                                fontsize: 12),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 350,
                          height: 100,
                          child: GooglePoppinsWidgets(text: 
                          '📌 Lepton Plus Communications (OPC) Pvt.Ltd\n'
                                '5 th Floor,Karimpanal Statue Avenue , G.H. Road \n'
                                'Statue,Thiruvanathapuram - 695001,Kerala,India\n'
                            '📞 +91 97469 66651 | +91 97463 66651 | +91 471 4053483\n'
                            '✉️ info@leptoncommunications.com\n'
                            '✉️ leptoncommunications@gmail.com',color: cWhite, fontsize: 11),
                        ),
                    ],
                  )
          ),
        ],
      ),
    );
  }
}
