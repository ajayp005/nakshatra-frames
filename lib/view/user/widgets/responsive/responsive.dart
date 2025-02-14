
import 'dart:math';

import 'package:flutter/material.dart';

class ResponsiveWebSite extends StatelessWidget {
  final Widget mobile;
  final Widget tablet;
  final Widget desktop;
  const ResponsiveWebSite(
      {required this.mobile,
      required this.tablet,
      required this.desktop,
      super.key});

  static bool isMobile(BuildContext context) {

    return MediaQuery.of(context).size.width < 500;
  }

  static bool isTablet(BuildContext context) {
    return MediaQuery.of(context).size.width < 1000 &&
        MediaQuery.of(context).size.width >= 501;
  }

  static bool isDesktop(BuildContext context) {
    return MediaQuery.of(context).size.width >= 1001;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth >= 1001) {
          return desktop;
        } else if (constraints.maxWidth >= 501) {
          return tablet;
        } else {
          return mobile;
        }
      },
    );
  }
}

class ScaleSize {

  static double textScaleFactor(BuildContext context, {required double maxTextScaleFactor }) {
    final width = MediaQuery.of(context).size.width;
    double val = (width / 1300) * maxTextScaleFactor;
    return max(1, min(val, maxTextScaleFactor));
  }
}