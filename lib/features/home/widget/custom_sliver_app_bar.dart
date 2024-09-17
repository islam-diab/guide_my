import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:guide_my/core/widget/text_form_field.dart';

class CustomSliverAppBar extends StatelessWidget {
  const CustomSliverAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: true, // Keeps the search bar pinned at the top
      // floating: false,
      expandedHeight: 70.h,
      flexibleSpace: FlexibleSpaceBar(
        background: AppTextFormField(
          controller: TextEditingController(),
          hintText: 'Search',
          textInputAction: TextInputAction.search,
        ),
      ),
    );
  }
}
