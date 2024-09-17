import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:guide_my/core/helper/spase.dart';
import 'package:guide_my/core/widget/app_shimmer_from_colors.dart';

class LocationShimmer extends StatelessWidget {
  const LocationShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.only(bottom: 16.h),
            child: Row(
              children: [
                const AppShimmer(height: 110, width: 120, radius: 12),
                horizontalSpace(16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const AppShimmer(height: 18, width: 170, radius: 12),
                      verticalSpace(12),
                      const AppShimmer(height: 14, width: 120, radius: 16),
                      verticalSpace(12),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const AppShimmer(height: 14, width: 100, radius: 12),
                          Row(
                            children: [
                              const AppShimmer(
                                  height: 25, width: 25, radius: 5),
                              horizontalSpace(10),
                              const AppShimmer(
                                  height: 25, width: 25, radius: 5),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
