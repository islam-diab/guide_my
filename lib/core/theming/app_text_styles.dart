import 'package:flutter/material.dart';
import 'package:guide_my/core/theming/app_color.dart';

class AppTextStyles {
  static const font30SemiBoldBlack = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.w600,
    color: Colors.black,
  );

  static const font30SemiBoldPurple = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.w600,
    color: AppColor.primary,
  );

  static const font16SemiBold = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );
}
