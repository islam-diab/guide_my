import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:guide_my/core/theming/app_color.dart';

class AppTextStyles {
  static const font35SemiBoldBlack = TextStyle(
    fontSize: 35,
    fontWeight: FontWeight.w600,
    color: Colors.black,
  );

  static const font30SemiBoldPurple = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.w600,
    color: AppColor.primary,
  );

  static const font25BoldWith = TextStyle(
    fontSize: 25,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );

  static const TextStyle font18DarkBlueBold =  TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w700,
  );

  static TextStyle font18WhiteNormal = const TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.normal,
    color: Colors.white,
  );

  static const font16SemiBold = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );

  static TextStyle font12Regular = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.bold,
  );

  static TextStyle font18BoldPrimary = TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeight.w900,
    color: AppColor.primary,
  );

  static TextStyle font16DarkBlueBold = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.bold,
  );

   static TextStyle font16DarkBlueNormal = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.normal,
  );

  static TextStyle font14GrayMedium = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.normal,
    color: Colors.grey,
  );

  static TextStyle font14WiteMedium = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.normal,
    color: Colors.white,
  );
}
