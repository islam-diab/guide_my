import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ImageBottom extends StatelessWidget {
  final Function() onTap;
  final String image;
  const ImageBottom({
    super.key,
    required this.onTap,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Image.asset(
        image,
        height: 25.h,
        width: 25.w,
      ),
    );
  }
}
