part of '../search_view.dart';

class SliverSearchAppBar extends StatelessWidget {
  const SliverSearchAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: true,
      floating: false,
      toolbarHeight: 80.h,
      title: AppTextFormField(
        controller: context.read<SearchCubit>().searchController,
        onChanged: (p0) {
          context.read<SearchCubit>().searchLocaionByName(p0);
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
