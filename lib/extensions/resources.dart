import 'package:flutter/material.dart';

class R {
  static Color colorPrimary = const Color(0xff219653);
  // static Color colorSecondary = Color(0xff219ebc);
  static Color colorInfo = const Color(0xff0288db);
  static Color colorWarning = const Color(0xffd9e016);
  static Color colorDanger = const Color(0xffe2225b);
  static Color colorBlack = const Color(0xff0b090a);
  static Color colorWhite = Colors.white;

  static TextStyle textTitle = TextStyle(
      fontFamily: 'MavenPro',
      fontSize: 40,
      color: R.colorPrimary,
      fontWeight: FontWeight.bold);
  static TextStyle textNormal = TextStyle(
      fontFamily: 'MavenPro',
      fontSize: 35,
      color: R.colorBlack,
      fontWeight: FontWeight.bold);
}
