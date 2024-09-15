part of 'add_location_cubit.dart';

abstract class AddLocationState {}

class Initial extends AddLocationState {}

class Loading extends AddLocationState {}

class Error extends AddLocationState {
  final String error;

  Error(this.error);
}

class Success extends AddLocationState {}

class UploadImage extends AddLocationState {
  final File? image;

  UploadImage(this.image);
}
