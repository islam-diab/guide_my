import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:guide_my/core/helper/app_constants.dart';
import 'package:guide_my/features/home/data/model/category_model.dart';
import 'package:guide_my/features/home/home_view.dart';
import 'package:hive/hive.dart';

class CategoriesListView extends StatefulWidget {
  const CategoriesListView({super.key});

  @override
  State<CategoriesListView> createState() => _CategoriesListViewState();
}

class _CategoriesListViewState extends State<CategoriesListView> {
  List<CategoryModel> categoriesData = [];
  var category = Hive.box<CategoryModel>(HiveKeys.category);

  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    var category = Hive.box<CategoryModel>(HiveKeys.category);
    categoriesData = category.values.toList();
    return Column(
      children: [
        SizedBox(
          height: 90.h,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: categoriesData.length,
            itemBuilder: (covariant, index) {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    selectedIndex = index;
                  });
                },
                child: CategoriesListViewItem(
                  categories: categoriesData[index],
                  itemIndex: index,
                  selectedIndex: selectedIndex,
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
