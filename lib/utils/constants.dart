import 'package:flutter/material.dart';

class Constants {
  static const Color scaffoldColorBackground = Colors.white;
  static const Color brandColorBlack = Color(0xFF303030);
  static const Color brandColorGray = Color(0xFFEEEEEE);
  static const Color neutralColorBlack = Color(0xFF303030);
  static const Color neutralColorGray = Color(0xFF9E9F9F);
  static const Color neutralColorGrayLight = Color(0xFFDCDCDC);
  static const Color neutralColorWhite = Color(0xFFFDFDFD);
  static const Color accentColorGreen = Color(0xFF34C759);
  static const Color accentColorRed = Color(0xFFFF3B30);
  static const Color accentColorYellow = Color(0xFFFFCC00);
  static const SizedBox defaultSpaceVertical = SizedBox(height: 16);
  static const SizedBox largeSpaceVertical = SizedBox(height: 24);
  static const SizedBox defaultSpaceHorizontal = SizedBox(width: 16);
  static const SizedBox largeSpaceHorizontal = SizedBox(width: 24);
  static const SizedBox smallSpaceVertical = SizedBox(height: 8);
  static Expanded defaultExpanded = Expanded(child: Container());
  static const Divider defaultDivider = Divider(
    height: 1,
    thickness: 1.2,
    color: Constants.neutralColorGrayLight,
  );
  static const Divider largeDivider = Divider(
    thickness: 10,
    color: Constants.brandColorGray,
  );
}
