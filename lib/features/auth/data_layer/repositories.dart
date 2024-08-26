import 'package:guide_my/core/helper/functions.dart';
import 'package:guide_my/core/model/api_result.dart';
import 'package:guide_my/features/auth/data_layer/data_sources.dart';

class AuthRepository {
  final FirebaseAuthDataSource firebaseAuthDataSource =
      FirebaseAuthDataSource();

  Future<ApiResult> signInWithGoogle() async {
    if (await isConnectedNetwork()) {
      try {
        final result = await firebaseAuthDataSource.signInWithGoogle();
        
        return ApiResult(value: result.value, isError: false);
      } catch (e) {
        return ApiResult(value: e.toString(), isError: true);
      }
    } else {
      return ApiResult(value: 'No internet connection', isError: true);
    }
  }
}
