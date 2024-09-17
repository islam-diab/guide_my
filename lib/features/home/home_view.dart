import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:guide_my/core/helper/app_assets.dart';
import 'package:guide_my/core/helper/spase.dart';
import 'package:guide_my/core/theming/app_color.dart';
import 'package:guide_my/core/theming/app_text_styles.dart';
import 'package:guide_my/core/widget/text_form_field.dart';
import 'package:guide_my/features/home/data/model/category_model.dart';
import 'package:guide_my/features/home/widget/category/categories_bloc_builder.dart';
import 'package:guide_my/features/home/widget/home_container.dart';
import 'package:guide_my/features/home/widget/location_list/location_bloc_builder.dart';

part 'widget/category/categories_list_view_item.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
          child: Column(
            children: [
              AppTextFormField(
                controller: TextEditingController(),
                hintText: 'Search',
                textInputAction: TextInputAction.search,
              ),
              const HomeContainer(),
              verticalSpace(30),
              const CategoryBlocBuilder(),
              verticalSpace(30),
              const LocationBlocBuilder(),
            ],
          ),
        ),
      ),
    );
  }
}
