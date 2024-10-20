import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:guide_my/core/helper/app_assets.dart';
import 'package:guide_my/core/helper/spase.dart';
import 'package:guide_my/core/theming/app_text_styles.dart';
import 'package:guide_my/core/widget/app_shimmer_from_colors.dart';
import 'package:guide_my/core/widget/image_bottom.dart';
import 'package:guide_my/features/home/data/model/location_model.dart';
import 'package:guide_my/features/home/logic/home_cubit.dart';

class LocationListViewItem extends StatelessWidget {
  final LocationModel locationModel;
  const LocationListViewItem({super.key, required this.locationModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: CachedNetworkImage(
              imageUrl: locationModel.image,
              placeholder: (context, url) => const AppShimmer(
                height: 110,
                width: 110,
                radius: 12,
              ),
              errorWidget: (context, url, error) => SizedBox(
                height: 110.h,
                width: 110.w,
                child: const Icon(
                  Icons.error,
                  color: Colors.red,
                  size: 70,
                ),
              ),
              imageBuilder: (context, imageProvider) => Container(
                height: 110.h,
                width: 110.w,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: imageProvider,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
          horizontalSpace(16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  locationModel.name,
                  style: AppTextStyles.font16DarkBlueBold,
                ),
                verticalSpace(5),
                Padding(
                  padding: const EdgeInsets.only(right: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        locationModel.location,
                        style: AppTextStyles.font16DarkBlueBold,
                      ),
                      ImageBottom(
                        onTap: () {
                          context.read<HomeCubit>().openLocation();
                        },
                        image: AppAssets.map,
                      )
                    ],
                  ),
                ),
                verticalSpace(10),
                Row(
                  children: [
                    Text(
                      locationModel.phone,
                      style: AppTextStyles.font14GrayMedium,
                    ),
                    const Expanded(child: SizedBox.shrink()),
                    ImageBottom(
                      onTap: () {
                        context.read<HomeCubit>().openCall(locationModel.phone);
                      },
                      image: AppAssets.phone,
                    ),
                    horizontalSpace(20),
                    ImageBottom(
                      onTap: () {
                        context
                            .read<HomeCubit>()
                            .openWhatsApp(locationModel.phone);
                      },
                      image: AppAssets.whatsapp,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


