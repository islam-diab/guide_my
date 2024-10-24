import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:guide_my/core/helper/app_constants.dart';
import 'package:guide_my/core/model/api_result.dart';
import 'package:guide_my/features/home/data/app_repositories.dart';
import 'package:guide_my/features/home/data/model/location_model.dart';
import 'package:guide_my/features/home/logic/home_state.dart';
import 'package:guide_my/features/home/data/model/category_model.dart';
import 'package:hive_flutter/hive_flutter.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(const HomeState.initial());

  final AppRepository appRepository = AppRepository();

  void fetchAllData() async {
    emit(const HomeState.homeLoading());

    await Future.wait([
      getCategoriesAndSaveItInHive(),
      getLocationsAndSaveItInHive(),
    ]);
  }

  List<LocationModel> locationModel = [];
  List<LocationModel> filteredLocation = [];

  Future<void> getLocationsAndSaveItInHive() async {
    ApiResult result = await appRepository.getPositionsFromFirebase();

    if (result.isError) {
      emit(HomeState.locationError(result.value));
    } else {
      locationModel = result.value;
      emit(HomeState.homeSuccess(locationModel));

      var location = Hive.box<LocationModel>(HiveKeys.location);
      await location.clear();

      for (var element in result.value) {
        await location.add(element);
      }
    }
  }

  Future<void> getCategoriesAndSaveItInHive() async {
    ApiResult result = await appRepository.getCategoriesFromFirebase();
    if (result.isError) {
      emit(HomeState.catregoryError(result.value));
    } else {
      var category = Hive.box<CategoryModel>(HiveKeys.category);
      await category.clear();

      for (var element in result.value) {
        await category.add(element);
      }
    }
  }

  void filterLocationByCategory(String categoryName) {
    if (categoryName == 'الكل') {
      emit(HomeState.homeSuccess(locationModel));
    } else {
      filteredLocation = locationModel
          .where((element) => element.category == categoryName)
          .toList();

      emit(HomeState.homeSuccess(filteredLocation));
    }
  }
}
