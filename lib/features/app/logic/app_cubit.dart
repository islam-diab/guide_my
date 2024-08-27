import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:guide_my/core/helper/app_assets.dart';
import 'package:guide_my/core/helper/app_constants.dart';
import 'package:guide_my/core/model/app_user.dart';
import 'package:guide_my/features/app/logic/app_state.dart';
import 'package:guide_my/features/app/ui/home/model/category_model.dart';
import 'package:hive_flutter/hive_flutter.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(const AppState.initial());
  Box<AppUser> userBox = Hive.box<AppUser>(HiveKeys.appUser);
  String name = '';
  String firstName = '';
  String email = '';
  String photoURL = '';

  void userInfo() async {
    AppUser user = userBox.get(HiveKeys.appUser)!;

    name = user.name!;
    email = user.email!;
    photoURL = user.photoURL!;

    // Split the text by spaces
    List<String> words = name.split(' ');

    firstName = words.isNotEmpty ? words[0] : '';
    await fackeCategoryModel();
  }

  Future<void> fackeCategoryModel() async {
    final FirebaseFirestore firestore = FirebaseFirestore.instance;

    List<CategoryModel> list = [
      CategoryModel(
          id: 0, group: 'Health', name: 'Doctors', image: AppAssets.doctor),
      CategoryModel(
          id: 1, group: 'Health', name: 'Pharmacy', image: AppAssets.doctor),
      CategoryModel(
          id: 2, group: 'Health', name: 'Hospitals', image: AppAssets.doctor),
      CategoryModel(
          id: 3, group: 'Health', name: 'Medicines', image: AppAssets.doctor),
      CategoryModel(
          id: 4, group: 'Food', name: 'Restaurants', image: AppAssets.doctor),
      CategoryModel(
          id: 5, group: 'Food', name: 'Groceries', image: AppAssets.doctor),
      CategoryModel(
          id: 6, group: 'Food', name: 'Cafes', image: AppAssets.doctor),
      CategoryModel(
          id: 7, group: 'Education ', name: 'School', image: AppAssets.doctor),
      CategoryModel(
          id: 8,
          group: 'Education ',
          name: 'University',
          image: AppAssets.doctor),
      CategoryModel(
          id: 9, group: 'Education ', name: 'Tutors', image: AppAssets.doctor),
      CategoryModel(
          id: 10,
          group: 'Personal ',
          name: 'barbershops',
          image: AppAssets.doctor),
      CategoryModel(
          id: 11,
          group: 'Automotive Services ',
          name: 'Cars Repair',
          image: AppAssets.doctor),
      CategoryModel(
          id: 12,
          group: 'Automotive Services ',
          name: 'Car Wash',
          image: AppAssets.doctor),
      CategoryModel(
          id: 13,
          group: 'Automotive Services ',
          name: 'Motorcycles',
          image: AppAssets.doctor),
    ];
    for (var category in list) {
      var doc = firestore.collection('category').doc(category.id.toString());
      await doc.set(category.toJson());
    }
  }
}
