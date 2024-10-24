part of '../home_view.dart';

class SliverHomeAppBar extends StatelessWidget {
  const SliverHomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: true,
      floating: false,
      toolbarHeight: 80.h,
      title: AppTextFormField(
        onTap: () {
          context.pushNamed(
            Routes.searchView,
          );
        },
        hintText: 'البحث',
        prefixIcon: const Icon(
          Icons.search,
          color: AppColor.primary,
          size: 25,
        ),
      ),
    );
  }
}
