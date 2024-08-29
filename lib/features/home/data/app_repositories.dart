import 'package:guide_my/core/helper/functions.dart';
import 'package:guide_my/core/model/api_result.dart';
import 'package:guide_my/features/home/data/app_data_sources.dart';

class AppRepository {
  final FirebaseAppDataSource firebaseAppDataSource = FirebaseAppDataSource();
  Future<ApiResult> getCategoriesFromFirebase() async {
    if (await isConnectedNetwork()) {
      ApiResult result =
          await firebaseAppDataSource.getCategoriesFromFirebase();

      if (result.isError) {
        ApiResult(
            value: 'Something went wrong when fetching categories',
            isError: true);
      }
      return ApiResult(value: result.value, isError: false);
    } else {
      return ApiResult(value: 'No internet connection', isError: true);
    }
  }

  Future<ApiResult> getPositionsFromFirebase() async {
    if (await isConnectedNetwork()) {
      ApiResult result =
          await firebaseAppDataSource.getPositionsFromFirebase();
      if (result.isError) {
        ApiResult(
            value: 'Something went wrong when fetching positions',
            isError: true);
      }
      return ApiResult(value: result.value, isError: false);
    } else {
      return ApiResult(value: 'No internet connection', isError: true);
    }
  }
}
