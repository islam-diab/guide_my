import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:guide_my/core/helper/app_constants.dart';
import 'package:guide_my/features/home/data/model/location_model.dart';
import 'package:guide_my/features/search/logic/search_state.dart';
import 'package:hive_flutter/hive_flutter.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit() : super(const SearchState.initial());

  final TextEditingController searchController = TextEditingController();

  List<LocationModel> searchResult = [];

  void searchLocaionByName(String query) async {
    searchResult.clear();
    emit(const SearchState.loading());
    if (searchController.text.isEmpty) {
      emit(const SearchState.error(error: 'يرجى ادخال نص البحث'));
    } else {
      Box<LocationModel> location = Hive.box<LocationModel>(HiveKeys.location);

      searchResult = location.values
          .where(
              (note) => note.name.toLowerCase().contains(query.toLowerCase()))
          .toList();

      print(searchResult);

      if (searchResult.isEmpty) {
        emit(const SearchState.error(error: 'لا يوجد نتائج'));
      } else {
        emit(SearchState.success(results: searchResult));
      }
    }
  }
}
