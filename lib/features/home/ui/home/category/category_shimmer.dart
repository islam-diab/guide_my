import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:guide_my/core/helper/spase.dart';
import 'package:guide_my/core/widget/app_shimmer_from_colors.dart';

class CategoryShimmer extends StatelessWidget {
  const CategoryShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90.h,
      child: ListView.builder(
          itemCount: 7,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(right: 12),
              child: Column(
                children: [
                  const AppShimmer(height: 55, width: 55, radius: 27),
                  verticalSpace(12),
                  const AppShimmer(height: 13, width: 50, radius: 5),
                ],
              ),
            );
          }),
    );
  }
}
