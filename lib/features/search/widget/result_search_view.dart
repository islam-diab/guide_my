part of '../search_view.dart';

class ResultSearchView extends StatelessWidget {
  const ResultSearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(
      builder: (context, state) {
        return state.maybeWhen(
            loading: () => setupLoading(),
            success: (results) => setupSuccess(results),
            error: (error) => setupError(error),
            orElse: () {
              return const SliverToBoxAdapter(child: SizedBox.shrink());
            });
      },
    );
  }
}

Widget setupLoading() {
  return const SliverToBoxAdapter(
      child: Center(child: CircularProgressIndicator()));
}

Widget setupSuccess(List<LocationModel> locationModel) {
  return LocationListView(
    locationModel: locationModel,
  );
}

Widget setupError(String error) {
  return SliverToBoxAdapter(child: Center(child: Text(error)));
}
