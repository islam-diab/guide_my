import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:guide_my/core/helper/app_assets.dart';
import 'package:guide_my/core/helper/extensions.dart';
import 'package:guide_my/core/routing/routes.dart';
import 'package:guide_my/core/theming/app_text_styles.dart';

class HomeContainer extends StatelessWidget {
  const HomeContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            width: double.infinity,
            height: 165.h,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
              image: const DecorationImage(
                  image: AssetImage(
                    AppAssets.homeContainer,
                  ),
                  fit: BoxFit.cover),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'اضف بسهولة مقدمي الخدمات \nوالأطباء والمطاعم الموثوق بهم \nبالقرب منك.',
                  style: AppTextStyles.font18WhiteNormal,
                ),
                const Expanded(
                  child: SizedBox.shrink(),
                ),
                ElevatedButton(
                  onPressed: () {
                    context.pushNamed(Routes.addLocationScreen);
                  },
                  child: Text(
                    'اضافة موقع',
                    style: AppTextStyles.font12Regular,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            left: 30.w,
            bottom: 20.h,
            child: Image.asset(
              AppAssets.map,
              height: 80.h,
            ),
          )
        ],
      ),
    );
  }
}
