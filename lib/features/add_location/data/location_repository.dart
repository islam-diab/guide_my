import 'package:guide_my/core/helper/functions.dart';
import 'package:guide_my/core/model/api_result.dart';
import 'package:guide_my/features/add_location/data/api/firebase_storage_api.dart';
import 'package:guide_my/features/add_location/data/location_data_sources.dart';

class LocationRepository {
  final LocationDataSources _locationDataSources = LocationDataSources();
  final FirebaseStorageApi _firestore = FirebaseStorageApi();

  Future<ApiResult> addLocationToFirebase({
    required String documentId,
    required Map<String, dynamic> data,
  }) async {
    if (await isConnectedNetwork()) {
      _locationDataSources.addLocationToFirebase(
          documentId: documentId, data: data);
      return ApiResult(value: true, isError: false);
    } else {
      return ApiResult(value: 'No internet connection', isError: true);
    }
  }

  Future<ApiResult> uploadImageToStorage({
    required String imagePath,
    required String folderName,
    required String imageName,
  }) async {
    if (await isConnectedNetwork()) {
      ApiResult result = await _firestore.uploadImageToStorage(
        imagePath: imagePath,
        folderName: folderName,
        imageName: imageName,
      );
      return result;
    } else {
      return ApiResult(value: 'No internet connection', isError: true);
    }
  }
}
