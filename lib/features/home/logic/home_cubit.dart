import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:guide_my/core/helper/app_constants.dart';
import 'package:guide_my/core/model/api_result.dart';
import 'package:guide_my/core/model/app_user.dart';
import 'package:guide_my/features/home/data/app_repositories.dart';
import 'package:guide_my/features/home/logic/home_state.dart';
import 'package:guide_my/features/home/data/model/category_model.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(const HomeState.initial());
  final AppRepository appRepository = AppRepository();
  Box<AppUser> userBox = Hive.box<AppUser>(HiveKeys.appUser);
  String name = '';
  String firstName = '';
  String email = '';
  String photoURL = '';

  void fetchData() async {
    emit(const HomeState.categoryLoading());
    ApiResult result = await appRepository.getCategoriesFromFirebase();
    if (result.isError) {
      emit(HomeState.catregoryError(result.value));
    } else {
      var category = Hive.box<CategoryModel>(HiveKeys.category);
      await category.clear();

      for (var element in result.value) {
        await category.add(element);
      }
    }

    await getLocations();
    userInfo();
    emit(const HomeState.categorySuccess());
  }

  Future<void> getLocations() async {
    emit(const HomeState.categoryLoading());

    ApiResult result = await appRepository.getPositionsFromFirebase();

    if (result.isError) {
      emit(HomeState.locationError(result.value));
    } else {
      emit(HomeState.locationSuccess(result.value));
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

  openLocation() async {
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
