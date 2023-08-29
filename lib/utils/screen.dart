import 'package:flutter/material.dart';

class ScreenUtil {
  static Size getSize(BuildContext context) {
    return MediaQuery.of(context).size;
  }

  static double getWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  static double getHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  static double getWidthPercentage(BuildContext context, double percentage) {
    return (MediaQuery.of(context).size.width) * (percentage / 100);
  }

  static double getHeightPercentage(BuildContext context, double percentage) {
    return (MediaQuery.of(context).size.height) * (percentage / 100);
  }

  static double divideHeight(BuildContext context, {int divided = 1}) {
    return MediaQuery.of(context).size.height / divided;
  }

  static double divideWidth(BuildContext context, {int divided = 1}) {
    return MediaQuery.of(context).size.width / divided;
  }
}
