import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:guide_my/core/helper/app_constants.dart';
import 'package:guide_my/core/model/app_user.dart';
import 'package:guide_my/features/app/logic/app_state.dart';
import 'package:hive_flutter/hive_flutter.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(const AppState.initial());
  Box<AppUser> userBox = Hive.box<AppUser>(HiveKeys.appUser);
  String name = '';
  String email = '';
  String photoURL = '';

  void userInfo() {
    AppUser user = userBox.get(HiveKeys.appUser)!;

    name = user.name!;
    email = user.email!;
    photoURL = user.photoURL!;
  }
}
