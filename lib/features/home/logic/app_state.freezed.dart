// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AppState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() categoryLoading,
    required TResult Function(String error) catregoryError,
    required TResult Function() categorySuccess,
    required TResult Function() positionLoading,
    required TResult Function(String error) positionError,
    required TResult Function(List<LocationModel> position) positionSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? categoryLoading,
    TResult? Function(String error)? catregoryError,
    TResult? Function()? categorySuccess,
    TResult? Function()? positionLoading,
    TResult? Function(String error)? positionError,
    TResult? Function(List<LocationModel> position)? positionSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? categoryLoading,
    TResult Function(String error)? catregoryError,
    TResult Function()? categorySuccess,
    TResult Function()? positionLoading,
    TResult Function(String error)? positionError,
    TResult Function(List<LocationModel> position)? positionSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(CategoryLoading value) categoryLoading,
    required TResult Function(CategoryError value) catregoryError,
    required TResult Function(CategorySuccess value) categorySuccess,
    required TResult Function(PositionLoading value) positionLoading,
    required TResult Function(PositionError value) positionError,
    required TResult Function(PositionSuccess value) positionSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(CategoryLoading value)? categoryLoading,
    TResult? Function(CategoryError value)? catregoryError,
    TResult? Function(CategorySuccess value)? categorySuccess,
    TResult? Function(PositionLoading value)? positionLoading,
    TResult? Function(PositionError value)? positionError,
    TResult? Function(PositionSuccess value)? positionSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(CategoryLoading value)? categoryLoading,
    TResult Function(CategoryError value)? catregoryError,
    TResult Function(CategorySuccess value)? categorySuccess,
    TResult Function(PositionLoading value)? positionLoading,
    TResult Function(PositionError value)? positionError,
    TResult Function(PositionSuccess value)? positionSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStateCopyWith<$Res> {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) then) =
      _$AppStateCopyWithImpl<$Res, AppState>;
}

/// @nodoc
class _$AppStateCopyWithImpl<$Res, $Val extends AppState>
    implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'AppState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() categoryLoading,
    required TResult Function(String error) catregoryError,
    required TResult Function() categorySuccess,
    required TResult Function() positionLoading,
    required TResult Function(String error) positionError,
    required TResult Function(List<LocationModel> position) positionSuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? categoryLoading,
    TResult? Function(String error)? catregoryError,
    TResult? Function()? categorySuccess,
    TResult? Function()? positionLoading,
    TResult? Function(String error)? positionError,
    TResult? Function(List<LocationModel> position)? positionSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? categoryLoading,
    TResult Function(String error)? catregoryError,
    TResult Function()? categorySuccess,
    TResult Function()? positionLoading,
    TResult Function(String error)? positionError,
    TResult Function(List<LocationModel> position)? positionSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(CategoryLoading value) categoryLoading,
    required TResult Function(CategoryError value) catregoryError,
    required TResult Function(CategorySuccess value) categorySuccess,
    required TResult Function(PositionLoading value) positionLoading,
    required TResult Function(PositionError value) positionError,
    required TResult Function(PositionSuccess value) positionSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(CategoryLoading value)? categoryLoading,
    TResult? Function(CategoryError value)? catregoryError,
    TResult? Function(CategorySuccess value)? categorySuccess,
    TResult? Function(PositionLoading value)? positionLoading,
    TResult? Function(PositionError value)? positionError,
    TResult? Function(PositionSuccess value)? positionSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(CategoryLoading value)? categoryLoading,
    TResult Function(CategoryError value)? catregoryError,
    TResult Function(CategorySuccess value)? categorySuccess,
    TResult Function(PositionLoading value)? positionLoading,
    TResult Function(PositionError value)? positionError,
    TResult Function(PositionSuccess value)? positionSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AppState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$CategoryLoadingImplCopyWith<$Res> {
  factory _$$CategoryLoadingImplCopyWith(_$CategoryLoadingImpl value,
          $Res Function(_$CategoryLoadingImpl) then) =
      __$$CategoryLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CategoryLoadingImplCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$CategoryLoadingImpl>
    implements _$$CategoryLoadingImplCopyWith<$Res> {
  __$$CategoryLoadingImplCopyWithImpl(
      _$CategoryLoadingImpl _value, $Res Function(_$CategoryLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CategoryLoadingImpl implements CategoryLoading {
  const _$CategoryLoadingImpl();

  @override
  String toString() {
    return 'AppState.categoryLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CategoryLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() categoryLoading,
    required TResult Function(String error) catregoryError,
    required TResult Function() categorySuccess,
    required TResult Function() positionLoading,
    required TResult Function(String error) positionError,
    required TResult Function(List<LocationModel> position) positionSuccess,
  }) {
    return categoryLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? categoryLoading,
    TResult? Function(String error)? catregoryError,
    TResult? Function()? categorySuccess,
    TResult? Function()? positionLoading,
    TResult? Function(String error)? positionError,
    TResult? Function(List<LocationModel> position)? positionSuccess,
  }) {
    return categoryLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? categoryLoading,
    TResult Function(String error)? catregoryError,
    TResult Function()? categorySuccess,
    TResult Function()? positionLoading,
    TResult Function(String error)? positionError,
    TResult Function(List<LocationModel> position)? positionSuccess,
    required TResult orElse(),
  }) {
    if (categoryLoading != null) {
      return categoryLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(CategoryLoading value) categoryLoading,
    required TResult Function(CategoryError value) catregoryError,
    required TResult Function(CategorySuccess value) categorySuccess,
    required TResult Function(PositionLoading value) positionLoading,
    required TResult Function(PositionError value) positionError,
    required TResult Function(PositionSuccess value) positionSuccess,
  }) {
    return categoryLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(CategoryLoading value)? categoryLoading,
    TResult? Function(CategoryError value)? catregoryError,
    TResult? Function(CategorySuccess value)? categorySuccess,
    TResult? Function(PositionLoading value)? positionLoading,
    TResult? Function(PositionError value)? positionError,
    TResult? Function(PositionSuccess value)? positionSuccess,
  }) {
    return categoryLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(CategoryLoading value)? categoryLoading,
    TResult Function(CategoryError value)? catregoryError,
    TResult Function(CategorySuccess value)? categorySuccess,
    TResult Function(PositionLoading value)? positionLoading,
    TResult Function(PositionError value)? positionError,
    TResult Function(PositionSuccess value)? positionSuccess,
    required TResult orElse(),
  }) {
    if (categoryLoading != null) {
      return categoryLoading(this);
    }
    return orElse();
  }
}

abstract class CategoryLoading implements AppState {
  const factory CategoryLoading() = _$CategoryLoadingImpl;
}

/// @nodoc
abstract class _$$CategoryErrorImplCopyWith<$Res> {
  factory _$$CategoryErrorImplCopyWith(
          _$CategoryErrorImpl value, $Res Function(_$CategoryErrorImpl) then) =
      __$$CategoryErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$CategoryErrorImplCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$CategoryErrorImpl>
    implements _$$CategoryErrorImplCopyWith<$Res> {
  __$$CategoryErrorImplCopyWithImpl(
      _$CategoryErrorImpl _value, $Res Function(_$CategoryErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$CategoryErrorImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CategoryErrorImpl implements CategoryError {
  const _$CategoryErrorImpl(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'AppState.catregoryError(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryErrorImplCopyWith<_$CategoryErrorImpl> get copyWith =>
      __$$CategoryErrorImplCopyWithImpl<_$CategoryErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() categoryLoading,
    required TResult Function(String error) catregoryError,
    required TResult Function() categorySuccess,
    required TResult Function() positionLoading,
    required TResult Function(String error) positionError,
    required TResult Function(List<LocationModel> position) positionSuccess,
  }) {
    return catregoryError(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? categoryLoading,
    TResult? Function(String error)? catregoryError,
    TResult? Function()? categorySuccess,
    TResult? Function()? positionLoading,
    TResult? Function(String error)? positionError,
    TResult? Function(List<LocationModel> position)? positionSuccess,
  }) {
    return catregoryError?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? categoryLoading,
    TResult Function(String error)? catregoryError,
    TResult Function()? categorySuccess,
    TResult Function()? positionLoading,
    TResult Function(String error)? positionError,
    TResult Function(List<LocationModel> position)? positionSuccess,
    required TResult orElse(),
  }) {
    if (catregoryError != null) {
      return catregoryError(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(CategoryLoading value) categoryLoading,
    required TResult Function(CategoryError value) catregoryError,
    required TResult Function(CategorySuccess value) categorySuccess,
    required TResult Function(PositionLoading value) positionLoading,
    required TResult Function(PositionError value) positionError,
    required TResult Function(PositionSuccess value) positionSuccess,
  }) {
    return catregoryError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(CategoryLoading value)? categoryLoading,
    TResult? Function(CategoryError value)? catregoryError,
    TResult? Function(CategorySuccess value)? categorySuccess,
    TResult? Function(PositionLoading value)? positionLoading,
    TResult? Function(PositionError value)? positionError,
    TResult? Function(PositionSuccess value)? positionSuccess,
  }) {
    return catregoryError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(CategoryLoading value)? categoryLoading,
    TResult Function(CategoryError value)? catregoryError,
    TResult Function(CategorySuccess value)? categorySuccess,
    TResult Function(PositionLoading value)? positionLoading,
    TResult Function(PositionError value)? positionError,
    TResult Function(PositionSuccess value)? positionSuccess,
    required TResult orElse(),
  }) {
    if (catregoryError != null) {
      return catregoryError(this);
    }
    return orElse();
  }
}

abstract class CategoryError implements AppState {
  const factory CategoryError(final String error) = _$CategoryErrorImpl;

  String get error;
  @JsonKey(ignore: true)
  _$$CategoryErrorImplCopyWith<_$CategoryErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CategorySuccessImplCopyWith<$Res> {
  factory _$$CategorySuccessImplCopyWith(_$CategorySuccessImpl value,
          $Res Function(_$CategorySuccessImpl) then) =
      __$$CategorySuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CategorySuccessImplCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$CategorySuccessImpl>
    implements _$$CategorySuccessImplCopyWith<$Res> {
  __$$CategorySuccessImplCopyWithImpl(
      _$CategorySuccessImpl _value, $Res Function(_$CategorySuccessImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CategorySuccessImpl implements CategorySuccess {
  const _$CategorySuccessImpl();

  @override
  String toString() {
    return 'AppState.categorySuccess()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CategorySuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() categoryLoading,
    required TResult Function(String error) catregoryError,
    required TResult Function() categorySuccess,
    required TResult Function() positionLoading,
    required TResult Function(String error) positionError,
    required TResult Function(List<LocationModel> position) positionSuccess,
  }) {
    return categorySuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? categoryLoading,
    TResult? Function(String error)? catregoryError,
    TResult? Function()? categorySuccess,
    TResult? Function()? positionLoading,
    TResult? Function(String error)? positionError,
    TResult? Function(List<LocationModel> position)? positionSuccess,
  }) {
    return categorySuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? categoryLoading,
    TResult Function(String error)? catregoryError,
    TResult Function()? categorySuccess,
    TResult Function()? positionLoading,
    TResult Function(String error)? positionError,
    TResult Function(List<LocationModel> position)? positionSuccess,
    required TResult orElse(),
  }) {
    if (categorySuccess != null) {
      return categorySuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(CategoryLoading value) categoryLoading,
    required TResult Function(CategoryError value) catregoryError,
    required TResult Function(CategorySuccess value) categorySuccess,
    required TResult Function(PositionLoading value) positionLoading,
    required TResult Function(PositionError value) positionError,
    required TResult Function(PositionSuccess value) positionSuccess,
  }) {
    return categorySuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(CategoryLoading value)? categoryLoading,
    TResult? Function(CategoryError value)? catregoryError,
    TResult? Function(CategorySuccess value)? categorySuccess,
    TResult? Function(PositionLoading value)? positionLoading,
    TResult? Function(PositionError value)? positionError,
    TResult? Function(PositionSuccess value)? positionSuccess,
  }) {
    return categorySuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(CategoryLoading value)? categoryLoading,
    TResult Function(CategoryError value)? catregoryError,
    TResult Function(CategorySuccess value)? categorySuccess,
    TResult Function(PositionLoading value)? positionLoading,
    TResult Function(PositionError value)? positionError,
    TResult Function(PositionSuccess value)? positionSuccess,
    required TResult orElse(),
  }) {
    if (categorySuccess != null) {
      return categorySuccess(this);
    }
    return orElse();
  }
}

abstract class CategorySuccess implements AppState {
  const factory CategorySuccess() = _$CategorySuccessImpl;
}

/// @nodoc
abstract class _$$PositionLoadingImplCopyWith<$Res> {
  factory _$$PositionLoadingImplCopyWith(_$PositionLoadingImpl value,
          $Res Function(_$PositionLoadingImpl) then) =
      __$$PositionLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PositionLoadingImplCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$PositionLoadingImpl>
    implements _$$PositionLoadingImplCopyWith<$Res> {
  __$$PositionLoadingImplCopyWithImpl(
      _$PositionLoadingImpl _value, $Res Function(_$PositionLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PositionLoadingImpl implements PositionLoading {
  const _$PositionLoadingImpl();

  @override
  String toString() {
    return 'AppState.positionLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PositionLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() categoryLoading,
    required TResult Function(String error) catregoryError,
    required TResult Function() categorySuccess,
    required TResult Function() positionLoading,
    required TResult Function(String error) positionError,
    required TResult Function(List<LocationModel> position) positionSuccess,
  }) {
    return positionLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? categoryLoading,
    TResult? Function(String error)? catregoryError,
    TResult? Function()? categorySuccess,
    TResult? Function()? positionLoading,
    TResult? Function(String error)? positionError,
    TResult? Function(List<LocationModel> position)? positionSuccess,
  }) {
    return positionLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? categoryLoading,
    TResult Function(String error)? catregoryError,
    TResult Function()? categorySuccess,
    TResult Function()? positionLoading,
    TResult Function(String error)? positionError,
    TResult Function(List<LocationModel> position)? positionSuccess,
    required TResult orElse(),
  }) {
    if (positionLoading != null) {
      return positionLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(CategoryLoading value) categoryLoading,
    required TResult Function(CategoryError value) catregoryError,
    required TResult Function(CategorySuccess value) categorySuccess,
    required TResult Function(PositionLoading value) positionLoading,
    required TResult Function(PositionError value) positionError,
    required TResult Function(PositionSuccess value) positionSuccess,
  }) {
    return positionLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(CategoryLoading value)? categoryLoading,
    TResult? Function(CategoryError value)? catregoryError,
    TResult? Function(CategorySuccess value)? categorySuccess,
    TResult? Function(PositionLoading value)? positionLoading,
    TResult? Function(PositionError value)? positionError,
    TResult? Function(PositionSuccess value)? positionSuccess,
  }) {
    return positionLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(CategoryLoading value)? categoryLoading,
    TResult Function(CategoryError value)? catregoryError,
    TResult Function(CategorySuccess value)? categorySuccess,
    TResult Function(PositionLoading value)? positionLoading,
    TResult Function(PositionError value)? positionError,
    TResult Function(PositionSuccess value)? positionSuccess,
    required TResult orElse(),
  }) {
    if (positionLoading != null) {
      return positionLoading(this);
    }
    return orElse();
  }
}

abstract class PositionLoading implements AppState {
  const factory PositionLoading() = _$PositionLoadingImpl;
}

/// @nodoc
abstract class _$$PositionErrorImplCopyWith<$Res> {
  factory _$$PositionErrorImplCopyWith(
          _$PositionErrorImpl value, $Res Function(_$PositionErrorImpl) then) =
      __$$PositionErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$PositionErrorImplCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$PositionErrorImpl>
    implements _$$PositionErrorImplCopyWith<$Res> {
  __$$PositionErrorImplCopyWithImpl(
      _$PositionErrorImpl _value, $Res Function(_$PositionErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$PositionErrorImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PositionErrorImpl implements PositionError {
  const _$PositionErrorImpl(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'AppState.positionError(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PositionErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PositionErrorImplCopyWith<_$PositionErrorImpl> get copyWith =>
      __$$PositionErrorImplCopyWithImpl<_$PositionErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() categoryLoading,
    required TResult Function(String error) catregoryError,
    required TResult Function() categorySuccess,
    required TResult Function() positionLoading,
    required TResult Function(String error) positionError,
    required TResult Function(List<LocationModel> position) positionSuccess,
  }) {
    return positionError(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? categoryLoading,
    TResult? Function(String error)? catregoryError,
    TResult? Function()? categorySuccess,
    TResult? Function()? positionLoading,
    TResult? Function(String error)? positionError,
    TResult? Function(List<LocationModel> position)? positionSuccess,
  }) {
    return positionError?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? categoryLoading,
    TResult Function(String error)? catregoryError,
    TResult Function()? categorySuccess,
    TResult Function()? positionLoading,
    TResult Function(String error)? positionError,
    TResult Function(List<LocationModel> position)? positionSuccess,
    required TResult orElse(),
  }) {
    if (positionError != null) {
      return positionError(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(CategoryLoading value) categoryLoading,
    required TResult Function(CategoryError value) catregoryError,
    required TResult Function(CategorySuccess value) categorySuccess,
    required TResult Function(PositionLoading value) positionLoading,
    required TResult Function(PositionError value) positionError,
    required TResult Function(PositionSuccess value) positionSuccess,
  }) {
    return positionError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(CategoryLoading value)? categoryLoading,
    TResult? Function(CategoryError value)? catregoryError,
    TResult? Function(CategorySuccess value)? categorySuccess,
    TResult? Function(PositionLoading value)? positionLoading,
    TResult? Function(PositionError value)? positionError,
    TResult? Function(PositionSuccess value)? positionSuccess,
  }) {
    return positionError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(CategoryLoading value)? categoryLoading,
    TResult Function(CategoryError value)? catregoryError,
    TResult Function(CategorySuccess value)? categorySuccess,
    TResult Function(PositionLoading value)? positionLoading,
    TResult Function(PositionError value)? positionError,
    TResult Function(PositionSuccess value)? positionSuccess,
    required TResult orElse(),
  }) {
    if (positionError != null) {
      return positionError(this);
    }
    return orElse();
  }
}

abstract class PositionError implements AppState {
  const factory PositionError(final String error) = _$PositionErrorImpl;

  String get error;
  @JsonKey(ignore: true)
  _$$PositionErrorImplCopyWith<_$PositionErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PositionSuccessImplCopyWith<$Res> {
  factory _$$PositionSuccessImplCopyWith(_$PositionSuccessImpl value,
          $Res Function(_$PositionSuccessImpl) then) =
      __$$PositionSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<LocationModel> position});
}

/// @nodoc
class __$$PositionSuccessImplCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$PositionSuccessImpl>
    implements _$$PositionSuccessImplCopyWith<$Res> {
  __$$PositionSuccessImplCopyWithImpl(
      _$PositionSuccessImpl _value, $Res Function(_$PositionSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? position = null,
  }) {
    return _then(_$PositionSuccessImpl(
      null == position
          ? _value._position
          : position // ignore: cast_nullable_to_non_nullable
              as List<LocationModel>,
    ));
  }
}

/// @nodoc

class _$PositionSuccessImpl implements PositionSuccess {
  const _$PositionSuccessImpl(final List<LocationModel> position)
      : _position = position;

  final List<LocationModel> _position;
  @override
  List<LocationModel> get position {
    if (_position is EqualUnmodifiableListView) return _position;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_position);
  }

  @override
  String toString() {
    return 'AppState.positionSuccess(position: $position)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PositionSuccessImpl &&
            const DeepCollectionEquality().equals(other._position, _position));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_position));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PositionSuccessImplCopyWith<_$PositionSuccessImpl> get copyWith =>
      __$$PositionSuccessImplCopyWithImpl<_$PositionSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() categoryLoading,
    required TResult Function(String error) catregoryError,
    required TResult Function() categorySuccess,
    required TResult Function() positionLoading,
    required TResult Function(String error) positionError,
    required TResult Function(List<LocationModel> position) positionSuccess,
  }) {
    return positionSuccess(position);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? categoryLoading,
    TResult? Function(String error)? catregoryError,
    TResult? Function()? categorySuccess,
    TResult? Function()? positionLoading,
    TResult? Function(String error)? positionError,
    TResult? Function(List<LocationModel> position)? positionSuccess,
  }) {
    return positionSuccess?.call(position);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? categoryLoading,
    TResult Function(String error)? catregoryError,
    TResult Function()? categorySuccess,
    TResult Function()? positionLoading,
    TResult Function(String error)? positionError,
    TResult Function(List<LocationModel> position)? positionSuccess,
    required TResult orElse(),
  }) {
    if (positionSuccess != null) {
      return positionSuccess(position);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(CategoryLoading value) categoryLoading,
    required TResult Function(CategoryError value) catregoryError,
    required TResult Function(CategorySuccess value) categorySuccess,
    required TResult Function(PositionLoading value) positionLoading,
    required TResult Function(PositionError value) positionError,
    required TResult Function(PositionSuccess value) positionSuccess,
  }) {
    return positionSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(CategoryLoading value)? categoryLoading,
    TResult? Function(CategoryError value)? catregoryError,
    TResult? Function(CategorySuccess value)? categorySuccess,
    TResult? Function(PositionLoading value)? positionLoading,
    TResult? Function(PositionError value)? positionError,
    TResult? Function(PositionSuccess value)? positionSuccess,
  }) {
    return positionSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(CategoryLoading value)? categoryLoading,
    TResult Function(CategoryError value)? catregoryError,
    TResult Function(CategorySuccess value)? categorySuccess,
    TResult Function(PositionLoading value)? positionLoading,
    TResult Function(PositionError value)? positionError,
    TResult Function(PositionSuccess value)? positionSuccess,
    required TResult orElse(),
  }) {
    if (positionSuccess != null) {
      return positionSuccess(this);
    }
    return orElse();
  }
}

abstract class PositionSuccess implements AppState {
  const factory PositionSuccess(final List<LocationModel> position) =
      _$PositionSuccessImpl;

  List<LocationModel> get position;
  @JsonKey(ignore: true)
  _$$PositionSuccessImplCopyWith<_$PositionSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
