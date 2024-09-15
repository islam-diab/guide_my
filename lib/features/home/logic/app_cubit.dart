import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
  Box<AppUser> userBox = Hive.box<AppUser>(HiveKeys.appUser);
  String name = '';
  String firstName = '';
  String email = '';
  String photoURL = '';

  void getCategories() async {
    emit(const AppState.categoryLoading());
    ApiResult result = await appRepository.getCategoriesFromFirebase();
    if (result.isError) {
      emit(AppState.catregoryError(result.value));
    } else {
      var category = Hive.box<CategoryModel>(HiveKeys.category);
      await category.clear();

      for (var element in result.value) {
        await category.add(element);
      }
    }

    await getPositions();
    userInfo();
    emit(const AppState.categorySuccess());
  }

  Future<void> getPositions() async {
    emit(const AppState.categoryLoading());

    ApiResult result = await appRepository.getPositionsFromFirebase();

    if (result.isError) {
      emit(AppState.positionError(result.value));
    } else {
      emit(AppState.positionSuccess(result.value));
    }
  }

  Future<void> getImageUrl(String imageUrl) async {
    final gsReference = FirebaseStorage.instance.refFromURL(imageUrl);
    String image = await gsReference.getDownloadURL();

    emit(AppState.imageSuccess(image));
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
    String googleMapUrl = '';
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
  }
}
