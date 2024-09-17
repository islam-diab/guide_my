import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:guide_my/features/home/data/model/location_model.dart';
part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;
  const factory HomeState.homeLoading() = HomeLoading;

  const factory HomeState.catregoryError(String error) = CategoryError;

  const factory HomeState.locationError(String error) = LocationError;
  const factory HomeState.homeSuccess(List<LocationModel> position) =
      HomeSuccess;

  const factory HomeState.imageLoading() = ImageLoading;
  const factory HomeState.imageSuccess(String image) = ImageSuccess;
}
