import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:guide_my/features/home/data/model/location_model.dart';

part 'search_state.freezed.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState.initial() = _Initial;

  const factory SearchState.loading() = _Loading;

  const factory SearchState.success({
    required List<LocationModel> results,
  }) = _Success;

  const factory SearchState.error({
    required String error,
  }) = _Error;
}
