import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nakshatra_frames/view/colors/colors.dart';
import 'package:nakshatra_frames/view/user/widgets/google_monstserrat_widget.dart';


class TrademarkAndPolicy extends StatelessWidget {
  const TrademarkAndPolicy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Wrap(
          children: [
            // GoogleMonstserratWidgets(text: "Trademark Policy", fontsize: 15.w,),

            Text(
              "Trademark Policy",
              maxLines: 2,
              // overflow: overflow,
              style: GoogleFonts.montserrat(
                // letterSpacing: letterSpacing,
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: Colors.white60,
              ),
            )
          ],
        ),
        backgroundColor: adminePrimayColor,
      ),
      backgroundColor: adminePrimayColor,
      body: ListView(
        // crossAxisAlignment: CrossAxisAlignment.start,
        // mainAxisAlignment: MainAxisAlignment.start,
        shrinkWrap: true,
        children: [
          // IconButtonBackWidget(color: cWhite),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(left: 50, right: 50, top: 80),
              child: GoogleMonstserratWidgets(
                  text: "Statement \n"
                      "Nakshatre Frames acknowledges that trademarks are a valuable part of Nakshatre Frames’s intellectual property portfolio. They serve to signify that particular products and services originates from Nakshatre Frames. Trademarks also help to distinguish Nakshatre Frames’s products and services from competitors."
                      "Any improper use of our trademarks, whether by any member of staff or other third parties, could significantly diminish the value of such trademarks."
                      "As such, to ensure that the company can maintain, and continue to exploit its trademarks, the company expect all members of staff to act in compliance with this trademark policy.",
                  fontsize: 18,
                  letterSpacing: 3,
                  color: cWhite),
            ),
          ),
          // const SizedBox(height: 10),
        ],
      ),
    );
  }
}
