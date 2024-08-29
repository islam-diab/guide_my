import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:guide_my/core/helper/app_assets.dart';
import 'package:guide_my/core/helper/app_constants.dart';
import 'package:guide_my/core/model/api_result.dart';
import 'package:guide_my/core/model/app_user.dart';
import 'package:guide_my/features/home/data/app_repositories.dart';
import 'package:guide_my/features/home/logic/app_state.dart';
import 'package:guide_my/features/home/data/model/category_model.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(const AppState.initial());
  final AppRepository appRepository = AppRepository();
  List<CategoryModel> category = [];
  Box<AppUser> userBox = Hive.box<AppUser>(HiveKeys.appUser);
  String name = '';
  String firstName = '';
  String email = '';
  String photoURL = '';

  void getCategories() async {
    emit(const AppState.categoryLoading());
    ApiResult result = await appRepository.getCategoriesFromFirebase();
    category = result.value;

    if (result.isError) {
      emit(AppState.catregoryError(result.value));
    } else {
      getPositions();
      emit(AppState.categorySuccess(result.value));
    }
    userInfo();
  }

  void getPositions() async {
    emit(const AppState.categoryLoading());

    ApiResult result = await appRepository.getPositionsFromFirebase();

    if (result.isError) {
      emit(AppState.positionError(result.value));
    } else {
      emit(AppState.positionSuccess(result.value));
    }
  }

  void openWhatsApp(String phoneNumber) async {
    // Create the WhatsApp URL without a message
    String whatsappUrl = "whatsapp://send?phone=$phoneNumber";
    launchUrl(Uri.parse(whatsappUrl));
  }

  void openCall(String phoneNumber) async {
    String callNumber = "tel://$phoneNumber";
    launchUrl(Uri.parse(callNumber));
  }

  opemLocation() async {
    String googleMapUrl =
        "https://www.google.com/maps/place/El+Araby+Medical+Center+Hospital/@30.0653918,31.2436546,38m/data=!3m1!1e3!4m6!3m5!1s0x1458406934eccc41:0x8c56f9f8f77f5ac0!8m2!3d30.0653941!4d31.2436099!16s%2Fg%2F1tyh4ns7?entry=ttu&g_ep=EgoyMDI0MDgyMy4wIKXMDSoASAFQAw%3D%3D";
    launchUrl(Uri.parse(googleMapUrl));
  }

  void userInfo() async {
    AppUser user = userBox.get(HiveKeys.appUser)!;

    name = user.name!;
    email = user.email!;
    photoURL = user.photoURL!;

    // Split the text by spaces
    List<String> words = name.split(' ');

    firstName = words.isNotEmpty ? words[0] : '';

    //TODO use this function when updata category
    // await fackeCategoryModel();
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
      var doc = firestore
          .collection(FirebaseKeys.category)
          .doc(category.id.toString());
      await doc.set(category.toJson());
    }
  }
}