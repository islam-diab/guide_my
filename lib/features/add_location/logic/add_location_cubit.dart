import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:guide_my/core/model/api_result.dart';
import 'package:guide_my/features/add_location/data/location_repository.dart';
import 'package:guide_my/features/home/data/model/location_model.dart';
import 'package:image_picker/image_picker.dart';

part 'add_location_state.dart';

class AddLocationCubit extends Cubit<AddLocationState> {
  final LocationRepository _locationRepository = LocationRepository();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController categoryController = TextEditingController();
  final TextEditingController imageController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  final TextEditingController locationController = TextEditingController();
  final TextEditingController mapController = TextEditingController();

  final GlobalKey<FormState> formKey = GlobalKey();

  AddLocationCubit() : super(Initial());
  String imagePath = '';

  void addLocation() async {
    emit(Loading());
    final String id = '${nameController.text}-${DateTime.now()}';
    final imageLocation =
        'gs://note-mate-07.appspot.com/${nameController.text}/$id';
    String imageUrl = '';

    if (imagePath != '') {
      await _locationRepository.uploadImageToStorage(
        imagePath: imagePath,
        folderName: nameController.text,
        imageName: id,
      );
      final gsReference = FirebaseStorage.instance.refFromURL(imageLocation);
      imageUrl = await gsReference.getDownloadURL();
    }

    LocationModel locationModel = LocationModel(
      id: id,
      name: nameController.text,
      phone: phoneController.text,
      category: categoryController.text,
      image: imageUrl,
      description: descriptionController.text,
      location: locationController.text,
      locationInGoogleMaps: mapController.text,
    );
    ApiResult result = await _locationRepository.addLocationToFirebase(
      documentId: categoryController.text + nameController.text,
      data: locationModel.toJson(),
    );

    if (result.isError) {
      emit(Error(result.value));
    } else {
      emit(Success());
    }
  }

  void pickImage() async {
    final ImagePicker picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      imagePath = pickedFile.path;

      emit(UploadImage(File(pickedFile.path)));
    }
  }
}
