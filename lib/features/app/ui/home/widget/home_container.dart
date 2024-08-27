import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:guide_my/core/helper/app_assets.dart';
import 'package:guide_my/core/theming/app_text_styles.dart';


class HomeContainer extends StatelessWidget {
  const HomeContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 190.h,
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
                  'Find trusted service providers, \ndoctors and restaurants \nnear you with ease.',
                  style: AppTextStyles.font18DarkWhiteNormal,
                ),
                const Expanded(
                  child: SizedBox(),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Find Nearby',
                    style: AppTextStyles.font11GrayRegular,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            right: 50.w,
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
