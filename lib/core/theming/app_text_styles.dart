import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:guide_my/core/theming/app_color.dart';

class AppTextStyles {
  static const font30SemiBoldBlack = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.w600,
    color: AppColor.primary,
  );

  static const font30SemiBoldPurple = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.w600,
    color: AppColor.primary,
  );

  static TextStyle font18DarkBlueBold = const TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w700,
  );

  static TextStyle font18DarkWhiteNormal = const TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.normal,
    color: Colors.white,
  );

  static const font16SemiBold = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );

  static TextStyle font12GrayRegular = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeight.normal,
  );

  static TextStyle font16DarkBlueBold = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.bold,
  );

  static TextStyle font14GrayMedium = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.normal,
    color: Colors.grey,
  );
}
