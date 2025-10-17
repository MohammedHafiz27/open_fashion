import 'package:flutter/widgets.dart';

class SizeConfig {
  static const double tabletBreakPoint = 800;
  static const double desktopBreakPoint = 1200;
  static late double width, height;

  static init(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
  }

  static double heightSize(BuildContext context, double value) {
    value /= 100;
    return MediaQuery.of(context).size.height * value;
  }

  static double widthSize(BuildContext context, double value) {
    value /= 100;
    return MediaQuery.of(context).size.width * value;
  }

  double getResponsiveSize(BuildContext context, {required double size}) {
    double scaleFactor = getScaleFactor(context);
    double responsiveSize = size * scaleFactor;
    double lowerLimit = size * 0.8;
    double upperLimit = size * 1.2;
    return responsiveSize.clamp(lowerLimit, upperLimit);
  }

  double getScaleFactor(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    if (width < SizeConfig.tabletBreakPoint) {
      return width / 450;
    } else {
      return width / 800;
    }
  }
}
