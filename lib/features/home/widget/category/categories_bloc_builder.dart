import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:guide_my/features/home/logic/home_cubit.dart';
import 'package:guide_my/features/home/logic/home_state.dart';
import 'package:guide_my/features/home/widget/category/categories_list_view.dart';
import 'package:guide_my/features/home/widget/category/category_shimmer.dart';

class CategoryBlocBuilder extends StatelessWidget {
  const CategoryBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) {
        return current is HomeLoading ||
            current is CategorySuccess ||
            current is CategoryError;
      },
      builder: (context, state) {
        return state.maybeWhen(
          homeLoading: () => const CategoryShimmer(),
          categorySuccess: () => const CategoriesListView(),
          catregoryError: (error) => Text(error),
          orElse: () {
            return const Text('Something went wrong!');
          },
        );
      },
    );
  }
}
