part of 'location_cubit.dart';

abstract class LocationState {}

class Initial extends LocationState {}

class Loading extends LocationState {}

class Error extends LocationState {
  final String error;

  Error(this.error);
}

class Success extends LocationState {}

class UploadImage extends LocationState {
  final File? image;

  UploadImage(this.image);
}
