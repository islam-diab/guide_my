import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:guide_my/core/helper/app_constants.dart';
import 'package:guide_my/core/model/api_result.dart';
import 'package:guide_my/core/model/app_user.dart';
import 'package:guide_my/features/auth/data_layer/repositories.dart';
import 'package:guide_my/features/auth/logic/auth_state.dart';
import 'package:hive/hive.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(const AuthState.initial());
  final FirebaseAuth auth = FirebaseAuth.instance;
  final GoogleSignIn googleSignIn = GoogleSignIn();
  final AuthRepository authRepository = AuthRepository();
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  void loginWithGoogle() async {
    ApiResult result = await authRepository.signInWithGoogle();

    if (result.isError) {
      emit(AuthState.error(error: result.value));
    } else {
      AppUser user = AppUser.fromJson(result.value);

      addUserInfoToHive(user);
      addUserInfoToFirebase(user);

      emit(const AuthState.success());
    }
  }

  void addUserInfoToHive(AppUser user) async {
    var userBox = Hive.box<AppUser>(HiveKeys.appUser);
    await userBox.put(HiveKeys.appUser, user);
  }

  void addUserInfoToFirebase(AppUser user) async {
    var doc = _firestore.collection(FirebaseKeys.users).doc(user.id);

    await doc.set(user.toJson());
  }
}
