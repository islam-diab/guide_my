import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:guide_my/features/app/ui/home/model/category_model.dart';
part 'app_state.freezed.dart';

@freezed
class AppState with _$AppState {
  const factory AppState.initial() = _Initial;
  const factory AppState.categoryLoading() = CategoryLoading;

  const factory AppState.catregoryError(String error) = CategoryError;
  const factory AppState.categorySuccess(List<CategoryModel> category) =
      CategorySuccess;
}
