import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:guide_my/features/app/logic/app_cubit.dart';
import 'package:guide_my/features/app/logic/app_state.dart';
import 'package:guide_my/features/app/ui/home/model/category_model.dart';
import 'package:guide_my/features/app/ui/home/widget/category/categories_list_view.dart';

class CategoryBlocBuilder extends StatelessWidget {
  const CategoryBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubit, AppState>(
      buildWhen: (previous, current) {
        return current is CategoryLoading ||
            current is CategorySuccess ||
            current is CategoryError;
      },
      builder: (context, state) {
        return state.maybeWhen(
          categoryLoading: () => const Text("loading..."),
          categorySuccess: (categoryModel) {
            return setupSucces(categoryModel);
          },
          catregoryError: (error) => Text(error),
          orElse: () {
            return const Text('Something went wrong!');
          },
        );
      },
    );
  }

  Widget setupSucces(List<CategoryModel?>? categorylist) {
    return CategoriesListView(
      categoriesData: categorylist ?? [],
    );
  }
}
