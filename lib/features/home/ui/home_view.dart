import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:guide_my/core/helper/app_assets.dart';
import 'package:guide_my/core/helper/extensions.dart';
import 'package:guide_my/core/helper/spase.dart';
import 'package:guide_my/core/routing/routes.dart';
import 'package:guide_my/core/theming/app_color.dart';
import 'package:guide_my/core/theming/app_text_styles.dart';
import 'package:guide_my/core/widget/text_form_field.dart';
import 'package:guide_my/features/home/data/model/category_model.dart';
import 'package:guide_my/features/home/ui/home/home_container.dart';
import 'package:guide_my/features/home/ui/home/widget/location_list/location_bloc_builder.dart';

import 'home/category/categories_bloc_builder.dart';

part 'home/category/categories_list_view_item.dart';
part 'home/sliver_home_app_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: SafeArea(
          child: CustomScrollView(
            slivers: [
              SliverHomeAppBar(),
              SliverToBoxAdapter(child: HomeContainer()),
              SliverToBoxAdapter(child: CategoryBlocBuilder()),
              LocationBlocBuilder()
            ],
          ),
        ),
      ),
    );
  }
}
