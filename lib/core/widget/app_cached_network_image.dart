import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:guide_my/core/widget/app_shimmer_from_colors.dart';

class AppCachedNetworkImage extends StatelessWidget {
  final String imageUrl;
  final double? hight, width;
  const AppCachedNetworkImage({
    super.key,
    required this.imageUrl,
    this.hight,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return imageUrl != ""
        ? CachedNetworkImage(
            imageUrl: imageUrl,
            placeholder: (context, url) {
              return AppShimmer(
                height: hight,
                width: width,
                radius: 0,
              );
            },
            errorWidget: (context, url, error) => SizedBox(
              height: hight,
              width: width,
              child: const Icon(
                Icons.error,
                color: Colors.red,
                size: 70,
              ),
            ),
            imageBuilder: (context, imageProvider) => Container(
              height: hight,
              width: width,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: imageProvider,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          )
        : Center(
            child: SizedBox(
              height: hight,
              width: width,
              child: const Icon(
                Icons.error,
                color: Colors.red,
                size: 70,
              ),
            ),
          );
  }
}
