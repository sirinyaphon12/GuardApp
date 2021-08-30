import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'app_colors.dart';
import 'package:sizer/sizer.dart';

class AppTexts {
  static TextStyle get titleTextStyle => fontTheme(
      color: Colors.black, fontSize: 11.sp, fontWeight: FontWeight.bold);

  static TextStyle get subTitleTextStyle => fontTheme(
        color: Colors.black12.withOpacity(0.5),
        fontSize: 10.sp,
      );

  static TextStyle get subTitleWeedTagStyle => fontTheme(
      color: Colors.white, fontSize: 11.sp, fontWeight: FontWeight.w400);

  static TextStyle get titleTagTextStyle => fontTheme(
      color: defaultTextColor, fontSize: 19.sp, fontWeight: FontWeight.w400);

  static TextStyle get labelTextStyle => fontTheme(
        color: Colors.black12.withOpacity(0.5),
        fontSize: 11.sp,
      );

  static TextStyle get textButtonStyle => fontTheme(
        color: Colors.black12.withOpacity(0.5),
        fontSize: 11.sp,
      );

  static TextStyle get TextFieldStyle => fontTheme(
        color: Colors.black,
        fontSize: 11.sp,
      );

  static TextStyle get textButtonUderLineStyle => fontTheme(
        color: Colors.black,
        fontSize: 11.sp,
        fontWeight: FontWeight.w500,
        decoration: TextDecoration.underline,
      );

  static TextStyle get buttonTextStyle => fontTheme(
      color: Colors.white, fontSize: 11.sp, fontWeight: FontWeight.w600);

  static TextStyle get textBodyStyle => fontTheme(
      color: Colors.black12.withOpacity(0.5),
      fontSize: 10.sp,
      fontWeight: FontWeight.w400);

  static TextStyle outLinedButtonStyle({Color? textColor}) => fontTheme(
      color: textColor ?? primaryColor,
      fontSize: 10.sp,
      fontWeight: FontWeight.w400);

  static TextStyle get titleDialogTextStyle => fontTheme(
      color: defaultTextColor, fontSize: 17.sp, fontWeight: FontWeight.w400);

  static TextStyle get labelPickDialogTextStyle => fontTheme(
        color: defaultTextColor,
        fontSize: 15.sp,
      );

  static TextStyle weekDayStyle(Color color) =>
      fontTheme(color: color, fontSize: 11.sp, fontWeight: FontWeight.bold);

  static TextStyle get titleWeedTagStyle => fontTheme(
      color: Colors.white, fontSize: 12.sp, fontWeight: FontWeight.w400);

  static TextStyle fontTheme(
      {FontWeight? fontWeight,
      double? fontSize,
      Color? color,
      double? height,
      double? letterSpacing,
      Color? backgroundColor,
      List<Shadow>? shadows,
      double? wordSpacing,
      TextBaseline? textBaseline,
      Paint? foreground,
      Paint? background,
      TextDecoration? decoration}) {
    return GoogleFonts.kanit(
        fontWeight: fontWeight,
        fontSize: fontSize,
        color: color,
        height: height,
        letterSpacing: letterSpacing,
        backgroundColor: backgroundColor,
        shadows: shadows,
        wordSpacing: wordSpacing,
        textBaseline: textBaseline,
        foreground: foreground,
        background: background,
        decoration: decoration);
  }
}
