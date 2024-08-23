import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:guide_my/core/model/api_result.dart';
import 'package:guide_my/core/model/user.dart';
import 'package:guide_my/features/auth/data_layer/repositories.dart';
import 'package:guide_my/features/auth/logic/auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(const AuthState.initial());
  final FirebaseAuth auth = FirebaseAuth.instance;
  final GoogleSignIn googleSignIn = GoogleSignIn();
  final AuthRepository authRepository = AuthRepository();

  void loginWithGoogle() async {
    ApiResult result = await authRepository.signInWithGoogle();

    if (result.isError) {
      emit(AuthState.error(error: result.value));
    } else {
      UserModel user = UserModel.fromFirebaseUser(result.value);
      emit(AuthState.success(data: user));
      debugPrint('user==== ${user.name.toString()}');
    }
  }
}
