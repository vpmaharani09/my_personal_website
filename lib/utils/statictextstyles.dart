import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:personal_website/assets.gen.dart';
import 'package:personal_website/colors.gen.dart';
import 'package:personal_website/fonts.gen.dart';

class StaticTextStyles {
  static TextStyle merriweather14Fw700({Color? color}) => TextStyle(
      fontFamily: FontFamily.merriweather,
      fontSize: 14.sp,
      color: color ?? ColorName.mineshaft,
      fontWeight: FontWeight.w700);

  static merriweather40Fw900({Color? color}) => TextStyle(
      fontFamily: FontFamily.merriweather,
      fontSize: 40.sp,
      color: color ?? ColorName.mineshaft,
      fontWeight: FontWeight.w900);

  static merriweather36Fw300({Color? color}) => TextStyle(
      fontFamily: FontFamily.merriweather,
      fontSize: 36.sp,
      color: color ?? ColorName.mineshaft,
      fontWeight: FontWeight.w300);

  static jakartasans44Fw700({Color? color}) => TextStyle(
      fontFamily: FontFamily.plusJakartaSans,
      fontSize: 44.sp,
      color: color ?? ColorName.ebonyClay,
      fontWeight: FontWeight.w700);

  static jakartasans36Fw700({Color? color}) => TextStyle(
      fontFamily: FontFamily.plusJakartaSans,
      fontSize: 36.sp,
      color: color ?? ColorName.ebonyClay,
      fontWeight: FontWeight.w700);

  static jakartasans18Fw700({Color? color}) => TextStyle(
      fontFamily: FontFamily.plusJakartaSans,
      fontSize: 18.sp,
      color: color ?? ColorName.ebonyClay,
      fontWeight: FontWeight.w700);

  static jakartasans16Fw500({Color? color}) => TextStyle(
      fontFamily: FontFamily.plusJakartaSans,
      fontSize: 16.sp,
      color: color ?? ColorName.ebonyClay,
      fontWeight: FontWeight.w500);

  static inter16Fw500({Color? color}) => TextStyle(
      fontFamily: FontFamily.inter,
      fontSize: 16.sp,
      color: color ?? ColorName.ebonyClay,
      fontWeight: FontWeight.w500);

  static inter16Fw400({Color? color, double? height}) => TextStyle(
      fontFamily: FontFamily.inter,
      fontSize: 16.sp,
      color: color ?? ColorName.ebonyClay,
      fontWeight: FontWeight.w400,
      height: height);

  static inter14Fw500({Color? color}) => TextStyle(
      fontFamily: FontFamily.inter,
      fontSize: 14.sp,
      color: color ?? ColorName.ebonyClay,
      fontWeight: FontWeight.w500);

  static inter12Fw500({Color? color}) => TextStyle(
      fontFamily: FontFamily.inter,
      fontSize: 12.sp,
      color: color ?? ColorName.ebonyClay,
      fontWeight: FontWeight.w500);

  static inter14Fw400({Color? color, double? lineHeight}) => TextStyle(
      height: lineHeight,
      fontFamily: FontFamily.inter,
      fontSize: 14.sp,
      color: color ?? ColorName.ebonyClay,
      fontWeight: FontWeight.w400);

  static jakartasans18Fw500({Color? color, TextDecoration? textDecoration}) =>
      TextStyle(
          fontFamily: FontFamily.plusJakartaSans,
          fontSize: 18.sp,
          color: color ?? ColorName.ebonyClay,
          fontWeight: FontWeight.w500,
          decoration: textDecoration);

  static poppins18Fw500({Color? color}) => TextStyle(
        fontFamily: FontFamily.poppins,
        fontSize: 18.sp,
        color: color ?? ColorName.ebonyClay,
        fontWeight: FontWeight.w500,
      );
  static poppins16Fw500({Color? color}) => TextStyle(
        fontFamily: FontFamily.poppins,
        fontSize: 16.sp,
        color: color ?? ColorName.ebonyClay,
        fontWeight: FontWeight.w500,
      );

  static poppins18Fw700({Color? color}) => TextStyle(
        fontFamily: FontFamily.poppins,
        fontSize: 18.sp,
        color: color ?? ColorName.ebonyClay,
        fontWeight: FontWeight.w700,
      );

  static poppins9Fw600({Color? color}) => TextStyle(
        fontFamily: FontFamily.poppins,
        fontSize: 9.sp,
        color: color ?? ColorName.ebonyClay,
        fontWeight: FontWeight.w600,
      );

  static poppins16Fw600({Color? color}) => TextStyle(
        fontFamily: FontFamily.poppins,
        fontSize: 16.sp,
        color: color ?? ColorName.ebonyClay,
        fontWeight: FontWeight.w600,
      );

  static poppins12Fw600({Color? color}) => TextStyle(
        fontFamily: FontFamily.poppins,
        fontSize: 12.sp,
        color: color ?? ColorName.ebonyClay,
        fontWeight: FontWeight.w600,
      );

  static poppins16Fw700({Color? color}) => TextStyle(
        fontFamily: FontFamily.poppins,
        fontSize: 16.sp,
        color: color ?? ColorName.ebonyClay,
        fontWeight: FontWeight.w700,
      );

  static poppins14Fw600({Color? color}) => TextStyle(
        fontFamily: FontFamily.poppins,
        fontSize: 14.sp,
        color: color ?? ColorName.ebonyClay,
        fontWeight: FontWeight.w600,
      );
}
