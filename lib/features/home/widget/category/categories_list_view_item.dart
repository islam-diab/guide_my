part of '../../home_view.dart';

class CategoriesListViewItem extends StatelessWidget {
  final CategoryModel? categories;
  final int itemIndex;
  final int selectedIndex;
  const CategoriesListViewItem(
      {super.key,
      required this.categories,
      required this.itemIndex,
      required this.selectedIndex});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 12),
      child: Column(
        children: [
          selectedIndex == itemIndex
              ? CircleAvatar(
                  radius: 28,
                  backgroundColor: AppColor.primary,
                  child: SvgPicture.asset(
                    AppAssets.google,
                    height: 30.h,
                    width: 30.w,
                  ),
                )
              : CircleAvatar(
                  radius: 28,
                  backgroundColor: Colors.white,
                  child: SvgPicture.asset(
                    AppAssets.google,
                    height: 30.h,
                    width: 30.w,
                  ),
                ),
          verticalSpace(12),
          Text(
            categories?.name ?? 'General',
            style: AppTextStyles.font12Regular,
          ),
        ],
      ),
    );
  }
}
