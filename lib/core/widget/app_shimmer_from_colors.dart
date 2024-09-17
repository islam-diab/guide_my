import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:guide_my/core/theming/app_color.dart';
import 'package:shimmer/shimmer.dart';

class AppShimmer extends StatelessWidget {
  final int height, width;
  final double radius;

  const AppShimmer({
    super.key,
    required this.height,
    required this.width,
    required this.radius,
  });

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: AppColor.lightGray,
      highlightColor: AppColor.lighterGray,
      child: Container(
        height: height.w,
        width: width.h,
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(radius),
          color: Colors.white,
        ),
      ),
    );
  }
}
