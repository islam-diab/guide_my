import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:guide_my/features/home/data/model/location_model.dart';
part 'app_state.freezed.dart';

@freezed
class AppState with _$AppState {
  const factory AppState.initial() = _Initial;
  const factory AppState.categoryLoading() = CategoryLoading;

  const factory AppState.catregoryError(String error) = CategoryError;
  const factory AppState.categorySuccess() = CategorySuccess;

  const factory AppState.positionLoading() = PositionLoading;
  const factory AppState.positionError(String error) = PositionError;
  const factory AppState.positionSuccess(List<LocationModel> position) =
      PositionSuccess;
}
