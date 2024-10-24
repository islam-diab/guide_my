import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:guide_my/core/theming/app_color.dart';
import 'package:guide_my/core/widget/text_form_field.dart';
import 'package:guide_my/features/search/logic/search_cubit.dart';
import 'package:guide_my/features/search/logic/search_state.dart';
import 'package:guide_my/features/home/data/model/location_model.dart';
import 'package:guide_my/features/home/logic/home_state.dart';
import 'package:guide_my/features/home/ui/home/location_list/location_list_view.dart';

part 'widget/sliver_search_app_bar.dart';
part 'widget/result_search_view.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: SafeArea(
          child: CustomScrollView(
            slivers: [
              SliverSearchAppBar(),
              ResultSearchView(),
            ],
          ),
        ),
      ),
    );
  }
}
