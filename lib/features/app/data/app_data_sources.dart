import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:guide_my/core/helper/app_constants.dart';
import 'package:guide_my/core/model/api_result.dart';
import 'package:guide_my/features/app/ui/home/model/category_model.dart';

class FirebaseAppDataSource {
  final FirebaseFirestore firestore = FirebaseFirestore.instance;

  Future<ApiResult> getCategoriesFromFirebase() async {
    final categoryCollection = firestore.collection(FirebaseKeys.category);
    try {
      QuerySnapshot snapshot = await categoryCollection.get();

      // Map the documents to CategoryModel objects
      List<CategoryModel> categories = snapshot.docs.map((doc) {
        return CategoryModel.fromJson(doc.data() as Map<String, dynamic>);
      }).toList();

      return ApiResult(value: categories, isError: false);
    } catch (e) {
      return ApiResult(
          value: 'Something went wrong when fetching categories',
          isError: true);
    }
  }
}
