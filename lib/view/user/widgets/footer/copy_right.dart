import 'package:flutter/material.dart';
import 'package:nakshatra_frames/view/fonts/fonts.dart';
import 'package:nakshatra_frames/view/colors/colors.dart';
import 'package:nakshatra_frames/view/user/widgets/responsive/responsive.dart';

class CopyRightWidget extends StatelessWidget {
  const CopyRightWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color:Colors.black,
      height: 60,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GooglePoppinsWidgets(
            text: 'Copyright ©️ All right reserved | by LeptonCommunications',
            fontsize: ResponsiveWebSite.isMobile(context) ? 8 : 15,
            fontWeight: FontWeight.w500,
            color: cWhite,
          )
        ],
      ),
    );
  }
}