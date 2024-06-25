import 'package:flutter/material.dart';
import 'package:nakshatra_frames/view/user/widgets/footer/footer_text_widgets.dart';
import 'package:nakshatra_frames/view/user/widgets/responsive/responsive.dart';

class FooterSectionScreen extends StatelessWidget {
  const FooterSectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color:Colors.black),
      height: ResponsiveWebSite.isMobile(context)
          ? 720
          : ResponsiveWebSite.isTablet(context)
              ? 600
              : 320,
      width: double.infinity,
      child: ResponsiveWebSite.isTablet(context)
          ? const Padding(
              padding: EdgeInsets.only(top: 10),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        WhoWeAreWidget(),
                        ConnecWidget(),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        LegalWidget(),
                   //     AddressWidget(),
                      ],
                    )
                  ],
                ),
              ),
            )
          : ResponsiveWebSite.isMobile(context)
              ? const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          WhoWeAreWidget(),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ConnecWidget(),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          LegalWidget(),
                        ],
                      ),
                      // Row(
                      //   mainAxisAlignment: MainAxisAlignment.start,
                      //   crossAxisAlignment: CrossAxisAlignment.start,
                      //   children: [
                      //     AddressWidget(),
                      //   ],
                      // )
                    ],
                  ),
                )
              : const Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          WhoWeAreWidget(),
                          ConnecWidget(),
                          LegalWidget(),
                       //   AddressWidget(),
                        ],
                      ),
                    ],
                  ),
                ),
    );
  }
}
