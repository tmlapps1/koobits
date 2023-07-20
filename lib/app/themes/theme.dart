import 'package:flutter/material.dart';
import 'app_color.dart';

class AppTheme {
  AppTheme._();

  static const String fontName = 'Alverin';
  static const TextStyle headline1 = TextStyle(
      fontSize: 24.0,
      fontWeight: FontWeight.w900,
      color: AppColor.rWhite,
      fontFamily: fontName);
  static const TextStyle headline2 = TextStyle(
      fontSize: 24.0,
      fontWeight: FontWeight.w400,
      color: AppColor.rWhite,
      fontFamily: fontName);
  static const TextStyle headline3 = TextStyle(
    fontSize: 22.0,
    fontWeight: FontWeight.w700,
    color: AppColor.rWhite,
  );
  static const TextStyle headline4 = TextStyle(
      fontSize: 20.0,
      fontWeight: FontWeight.w400,
      color: AppColor.rWhite,
      fontFamily: fontName);
  static const TextStyle headline5 = TextStyle(
      fontSize: 18.0,
      fontWeight: FontWeight.w700,
      color: AppColor.rWhite,
      fontStyle: FontStyle.normal);
  static const TextStyle headline6 = TextStyle(
      fontSize: 18.0,
      fontWeight: FontWeight.w400,
      color: AppColor.rWhite,
      fontFamily: fontName);
  static const TextStyle headline7 = TextStyle(
      fontSize: 14.0,
      fontWeight: FontWeight.w400,
      color: AppColor.rWhite,
      fontFamily: fontName);
  static const TextStyle subtitle1 = TextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.w700,
      color: AppColor.rWhite,
      fontFamily: fontName);

  static const TextStyle subtitle2 = TextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.w400,
      color: AppColor.rWhite,
      fontFamily: fontName);
  static const TextStyle bodyText1 = TextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.w900,
      fontStyle: FontStyle.normal,
      color: AppColor.rWhite,
      fontFamily: fontName);
  static const TextStyle bodyText2 = TextStyle(
      fontSize: 14.0,
      fontWeight: FontWeight.w400,
      color: AppColor.rWhite,
      fontStyle: FontStyle.normal,
      fontFamily: fontName);
  static const TextStyle bodyText3 = TextStyle(
      fontSize: 14.0,
      fontWeight: FontWeight.w400,
      color: AppColor.darkGray,
      fontFamily: fontName);

}
