import 'package:flutter/material.dart';

class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF$hexColor";
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}

class ThemeColors {
// Netural Color
  static const Color black = Color(0x00000000);
  static const Color white = Color(0xFFFFFFFF);
  static const Color grey_10 = Color(0xFF1A1A1A);
  static const Color grey_20 = Color(0xFF333333);
  static const Color grey_30 = Color(0xFF4D4D4D);
  static const Color grey_40 = Color(0xFF666666);
  static const Color grey_50 = Color(0xFF808080);
  static const Color grey_60 = Color(0xFF999999);
  static const Color grey_70 = Color(0xFFB3B3B3);
  static const Color grey_80 = Color(0xFFCCCCCC);
  static const Color grey_90 = Color(0xFFE6E6E6);
  static const Color grey_95 = Color(0xFFF6F6F6);

  static const Color primary = Color(0xFF37B4AF);
  static const Color primaryText = Color(0xFF1A1A1A);
  static const Color primaryBTN = Color(0xFF37B4AF);
  static const Color secondaryBTN = Color(0xFF37B4AF);
  static const Color success = Color(0xFF34CC65);
  static const Color error = Color(0xFFFE2222);
  static const Color link = Color(0xFF05C2cF);

  //text theme
  // static TextTheme textTheme = const TextTheme(
  //   headline1: TextStyle(
  //     fontFamily: 'OpenSans',
  //     fontSize: 38.4,
  //     letterSpacing: -1.0,
  //     color: orange,
  //     fontWeight: FontWeight.w400,
  //   ),
  //   headline2: TextStyle(
  //     fontFamily: 'OpenSans',
  //     fontSize: 27.2,
  //     letterSpacing: -0.25,
  //     color: white,
  //     fontWeight: FontWeight.w400,
  //   ),
  //   headline3: TextStyle(
  //     fontFamily: 'OpenSans',
  //     fontSize: 21.2,
  //     letterSpacing: 0,
  //     color: white,
  //     fontWeight: FontWeight.w600,
  //   ),
  //   headline4: TextStyle(
  //     fontFamily: 'OpenSans',
  //     fontSize: 20.4,
  //     letterSpacing: 0,
  //     color: white,
  //     fontWeight: FontWeight.w400,
  //   ),
  //   headline5: TextStyle(
  //     fontFamily: 'OpenSans',
  //     fontSize: 18.0,
  //     letterSpacing: 0,
  //     color: white,
  //     fontWeight: FontWeight.w600,
  //   ),
  //   headline6: TextStyle(
  //     fontFamily: 'OpenSans',
  //     fontSize: 17.0,
  //     letterSpacing: 0.25,
  //     color: white,
  //     fontWeight: FontWeight.w400,
  //   ),
  //   subtitle1: TextStyle(
  //     fontFamily: 'OpenSans',
  //     fontSize: 15.3,
  //     letterSpacing: 0.15,
  //     color: white,
  //     fontWeight: FontWeight.w500,
  //   ),
  //   subtitle2: TextStyle(
  //     fontFamily: 'OpenSans',
  //     fontSize: 11.3,
  //     letterSpacing: 0.1,
  //     color: white,
  //     fontWeight: FontWeight.w500,
  //   ),
  //   bodyText1: TextStyle(
  //     fontFamily: 'OpenSans',
  //     fontSize: 13.6,
  //     letterSpacing: 0.5,
  //     color: white,
  //     fontWeight: FontWeight.w500,
  //   ),
  //   bodyText2: TextStyle(
  //     fontFamily: 'OpenSans',
  //     fontSize: 11.9,
  //     letterSpacing: 0.25,
  //     color: white,
  //     fontWeight: FontWeight.w500,
  //   ),
  //   caption: TextStyle(
  //     fontFamily: 'OpenSans',
  //     fontSize: 10.8,
  //     letterSpacing: 0.4,
  //     color: white,
  //     fontWeight: FontWeight.w400,
  //   ),
  //   button: TextStyle(
  //     fontFamily: 'OpenSans',
  //     fontSize: 18.0,
  //     letterSpacing: 0.60,
  //     color: white,
  //     fontWeight: FontWeight.w500,
  //   ),
  //   overline: TextStyle(
  //     fontFamily: 'OpenSans',
  //     fontSize: 8.0,
  //     letterSpacing: 0.1,
  //     color: white,
  //     fontWeight: FontWeight.w400,
  //   ),
  // );
}
