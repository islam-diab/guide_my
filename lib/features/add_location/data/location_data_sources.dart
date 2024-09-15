import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:guide_my/core/helper/app_constants.dart';
import 'package:guide_my/core/model/api_result.dart';

class LocationDataSources {
  final FirebaseFirestore firestore = FirebaseFirestore.instance;

  Future<ApiResult> addLocationToFirebase({
    required String documentId,
    required Map<String, dynamic> data,
  }) async {
    try {
      final locationCollection = 
          firestore.collection(FirebaseKeys.location).doc(documentId);

     await locationCollection.set(data);
     return ApiResult(value: true, isError: false);
    } catch (e) {
     return ApiResult(value: e.toString(), isError: true);
    }
  }
}
