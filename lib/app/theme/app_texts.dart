
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'app_colors.dart';
import 'package:sizer/sizer.dart';

class AppTexts{
    static TextStyle get titleTextStyle => GoogleFonts.kanit(
        color: Colors.black,
        fontSize: 11.sp,
        fontWeight: FontWeight.bold
    );

    static TextStyle get subTitleTextStyle => GoogleFonts.kanit(
        color: Colors.black12.withOpacity(0.5),
        fontSize: 10.sp,
    );

    static TextStyle get titleWeedTagStyle =>GoogleFonts.kanit(
        color: Colors.white,
        fontSize: 12.sp,
        fontWeight: FontWeight.w400
    );

    static TextStyle get subTitleWeedTagStyle => GoogleFonts.kanit(
        color: Colors.white,
        fontSize: 11.sp,
        fontWeight: FontWeight.w400
    );

    static TextStyle get titleTagTextStyle => GoogleFonts.kanit(
        color: defaultTextColor,
        fontSize: 19.sp,
        fontWeight: FontWeight.w400
    );


    static TextStyle get labelTextStyle => GoogleFonts.kanit(
        color: Colors.black12.withOpacity(0.5),
        fontSize: 11.sp,
    );

    static TextStyle get textButtonStyle => GoogleFonts.kanit(
        color: Colors.black12.withOpacity(0.5),
        fontSize: 11.sp,
    );

    static TextStyle get TextFieldStyle=>GoogleFonts.kanit(
        color: Colors.black,
        fontSize: 11.sp,
    );

    static TextStyle get textButton_UnerLineStyle => GoogleFonts.kanit(
        color: Colors.black,
        fontSize: 11.sp,
        fontWeight: FontWeight.w500,
        decoration: TextDecoration.underline,
    );

    static TextStyle get buttonTextStyle => GoogleFonts.kanit(
        color: Colors.white,
        fontSize: 11.sp,
        fontWeight: FontWeight.w600
    );

    static TextStyle get textBodyStyle => GoogleFonts.kanit(
        color: Colors.black12.withOpacity(0.5),
        fontSize: 10.sp,
        fontWeight: FontWeight.w400
    );

    static TextStyle get socialButtonStyle => GoogleFonts.kanit(
        color: primaryColor,
        fontSize: 10.sp,
        fontWeight: FontWeight.w400
    );

    static TextStyle  weekDayStyle(Color color) => GoogleFonts.kanit(
        color: color,
        fontSize: 11.sp,
        fontWeight: FontWeight.bold
    );

    static TextStyle get titleDialogTextStyle => GoogleFonts.kanit(
        color: defaultTextColor,
        fontSize: 17.sp,
        fontWeight: FontWeight.w400
    );
}

