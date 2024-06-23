import 'package:flutter/material.dart';
import 'package:nakshatra_frames/view/user/widgets/responsive/responsive.dart';

class HomePageImageWidget extends StatelessWidget {
  const HomePageImageWidget({
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
            child: Text(
          "Home",
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        )),
        SizedBox(
          width: 15,
        ),
        Container(
            child: Text(
          "About Us",
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        )),
        SizedBox(
          width: 15,
        ),
        Container(
            child: Text(
          "Heritage",
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        )),
        SizedBox(
          width: 15,
        ),
        Container(
            child: Text(
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
