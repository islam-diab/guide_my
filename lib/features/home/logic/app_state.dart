import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:guide_my/features/home/data/model/category_model.dart';
import 'package:guide_my/features/home/data/model/position_model.dart';
part 'app_state.freezed.dart';

@freezed
class AppState with _$AppState {
  const factory AppState.initial() = _Initial;
  const factory AppState.categoryLoading() = CategoryLoading;

  const factory AppState.catregoryError(String error) = CategoryError;
  const factory AppState.categorySuccess(List<CategoryModel> category) =
      CategorySuccess;

  const factory AppState.positionLoading() = PositionLoading;
  const factory AppState.positionError(String error) = PositionError;
  const factory AppState.positionSuccess(List<PositionModel> position) =
      PositionSuccess;
}
