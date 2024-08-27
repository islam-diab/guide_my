import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:guide_my/features/app/ui/home/home_view.dart';
import 'package:guide_my/features/app/ui/home/model/category_model.dart';

class CategoriesListView extends StatefulWidget {
  final List<CategoryModel?> categoriesData;
  const CategoriesListView({super.key, required this.categoriesData});

  @override
  State<CategoriesListView> createState() => _CategoriesListViewState();
}

class _CategoriesListViewState extends State<CategoriesListView> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 100.h,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: widget.categoriesData.length,
            itemBuilder: (covariant, index) {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    selectedIndex = index;
                  });
                },
                child: CategoriesListViewItem(
                  categories: widget.categoriesData[index],
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
