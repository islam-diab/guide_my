import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:guide_my/core/model/api_result.dart';

class FirebaseStorageApi {
  Future<ApiResult> uploadImageToStorage({
    required String imagePath,
    required String folderName,
    required String imageName,
  }) async {
    try {
      final storageRef = FirebaseStorage.instance.ref();

      Reference imageRef = storageRef.child(folderName);

      final spaceRef = imageRef.child(imageName);
      UploadTask uploadTask = spaceRef.putFile(File(imagePath));

      await uploadTask.whenComplete(() => null);
      String imageUrl = await spaceRef.getDownloadURL();

      return ApiResult(isError: false, value: imageUrl);
    } catch (e) {
      throw e.toString();
    }
  }
}
