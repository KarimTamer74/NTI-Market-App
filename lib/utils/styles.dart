import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract class Styles {
  static const textStyle10 = TextStyle(
      fontSize: 10, fontWeight: FontWeight.w400, fontFamily: "SpaceGrotesk");

  static const textStyle12w400 = TextStyle(
      fontSize: 12, fontFamily: "SpaceGrotesk", fontWeight: FontWeight.w400);
  static const textStyle12w500 = TextStyle(
      fontSize: 12, fontFamily: "SpaceGrotesk", fontWeight: FontWeight.w500);

  static const textStyle14w500 = TextStyle(
      fontSize: 14, fontFamily: "SpaceGrotesk", fontWeight: FontWeight.w500);
  static const textStyle14w400 = TextStyle(
      fontSize: 14, fontFamily: "SpaceGrotesk", fontWeight: FontWeight.w400);
  static const textStyle14W300 = TextStyle(
      fontFamily: "SpaceGrotesk",
      fontSize: 14,
      fontWeight: FontWeight.w300,
      color: Color(0xff979796));
  static const textStyle22 =
      TextStyle(fontSize: 22, fontFamily: "SpaceGrotesk");
  static const textStyle20 = TextStyle(
      fontSize: 20, fontFamily: "SpaceGrotesk"); // regular font weight
  static TextStyle textStyleBold12 = TextStyle(
      fontSize: 12.sp, fontWeight: FontWeight.bold, fontFamily: "SpaceGrotesk");
  static TextStyle textStyleBold14 = TextStyle(
      fontSize: 14.sp, fontWeight: FontWeight.bold, fontFamily: "SpaceGrotesk");
  static TextStyle textStyle15 = TextStyle(
      fontSize: 15.sp, fontWeight: FontWeight.w500, fontFamily: "SpaceGrotesk");
  static TextStyle textStyleBold15 = TextStyle(
      fontSize: 15.sp,
      fontWeight: FontWeight.bold,
      fontFamily: "SpaceGrotesk"); //
  static TextStyle textStyle16 = TextStyle(
      fontSize: 16.sp,
      fontWeight: FontWeight.w500,
      fontFamily: "SpaceGrotesk"); //medium font weight

  static TextStyle textStyle18 = TextStyle(
      fontSize: 18.sp,
      fontWeight: FontWeight.w500,
      fontFamily: "SpaceGrotesk"); // medium font weight
  static TextStyle greyTextStyle16 = TextStyle(
      color: Colors.grey, fontSize: 16.sp, fontFamily: "SpaceGrotesk");
  static TextStyle greyTextStyle18 = TextStyle(
      color: Colors.grey, fontSize: 18.sp, fontFamily: "SpaceGrotesk");
  static TextStyle whiteTextStyle18 = TextStyle(
      color: Colors.white, fontSize: 18.sp, fontFamily: "SpaceGrotesk");
  static TextStyle whiteTextStyle20 = TextStyle(
      color: Colors.white,
      fontSize: 20.sp,
      fontFamily: "SpaceGrotesk"); // regular font weight
  static final textStyleSemiBold20 = TextStyle(
      fontSize: 20.sp, fontWeight: FontWeight.w700, fontFamily: "SpaceGrotesk");
  static final textStyleBold20 = TextStyle(
      fontSize: 20.sp, fontWeight: FontWeight.bold, fontFamily: "SpaceGrotesk");
  static final textStyleBold22 = TextStyle(
      fontSize: 22.sp, fontWeight: FontWeight.bold, fontFamily: "SpaceGrotesk");
  static final textStyleBold24 = TextStyle(
      fontSize: 24.sp, fontWeight: FontWeight.bold, fontFamily: "SpaceGrotesk");
  static final textStyleBold26 = TextStyle(
      fontSize: 26.sp, fontWeight: FontWeight.bold, fontFamily: "SpaceGrotesk");
  static TextStyle textStyle24 = TextStyle(
      fontSize: 24.sp, fontWeight: FontWeight.w700, fontFamily: "SpaceGrotesk");
  static TextStyle textStyleBold32 = TextStyle(
      fontSize: 32.sp, fontWeight: FontWeight.bold, fontFamily: "SpaceGrotesk");
}
