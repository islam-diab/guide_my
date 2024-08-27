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
    required TResult Function(List<CategoryModel> category) categorySuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? categoryLoading,
    TResult? Function(String error)? catregoryError,
    TResult? Function(List<CategoryModel> category)? categorySuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? categoryLoading,
    TResult Function(String error)? catregoryError,
    TResult Function(List<CategoryModel> category)? categorySuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(CategoryLoading value) categoryLoading,
    required TResult Function(CategoryError value) catregoryError,
    required TResult Function(CategorySuccess value) categorySuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(CategoryLoading value)? categoryLoading,
    TResult? Function(CategoryError value)? catregoryError,
    TResult? Function(CategorySuccess value)? categorySuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(CategoryLoading value)? categoryLoading,
    TResult Function(CategoryError value)? catregoryError,
    TResult Function(CategorySuccess value)? categorySuccess,
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
    required TResult Function(List<CategoryModel> category) categorySuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? categoryLoading,
    TResult? Function(String error)? catregoryError,
    TResult? Function(List<CategoryModel> category)? categorySuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? categoryLoading,
    TResult Function(String error)? catregoryError,
    TResult Function(List<CategoryModel> category)? categorySuccess,
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
    required TResult Function(List<CategoryModel> category) categorySuccess,
  }) {
    return categoryLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? categoryLoading,
    TResult? Function(String error)? catregoryError,
    TResult? Function(List<CategoryModel> category)? categorySuccess,
  }) {
    return categoryLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? categoryLoading,
    TResult Function(String error)? catregoryError,
    TResult Function(List<CategoryModel> category)? categorySuccess,
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
    required TResult Function(List<CategoryModel> category) categorySuccess,
  }) {
    return catregoryError(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? categoryLoading,
    TResult? Function(String error)? catregoryError,
    TResult? Function(List<CategoryModel> category)? categorySuccess,
  }) {
    return catregoryError?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? categoryLoading,
    TResult Function(String error)? catregoryError,
    TResult Function(List<CategoryModel> category)? categorySuccess,
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
  @useResult
  $Res call({List<CategoryModel> category});
}

/// @nodoc
class __$$CategorySuccessImplCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$CategorySuccessImpl>
    implements _$$CategorySuccessImplCopyWith<$Res> {
  __$$CategorySuccessImplCopyWithImpl(
      _$CategorySuccessImpl _value, $Res Function(_$CategorySuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
  }) {
    return _then(_$CategorySuccessImpl(
      null == category
          ? _value._category
          : category // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>,
    ));
  }
}

/// @nodoc

class _$CategorySuccessImpl implements CategorySuccess {
  const _$CategorySuccessImpl(final List<CategoryModel> category)
      : _category = category;

  final List<CategoryModel> _category;
  @override
  List<CategoryModel> get category {
    if (_category is EqualUnmodifiableListView) return _category;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_category);
  }

  @override
  String toString() {
    return 'AppState.categorySuccess(category: $category)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategorySuccessImpl &&
            const DeepCollectionEquality().equals(other._category, _category));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_category));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CategorySuccessImplCopyWith<_$CategorySuccessImpl> get copyWith =>
      __$$CategorySuccessImplCopyWithImpl<_$CategorySuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() categoryLoading,
    required TResult Function(String error) catregoryError,
    required TResult Function(List<CategoryModel> category) categorySuccess,
  }) {
    return categorySuccess(category);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? categoryLoading,
    TResult? Function(String error)? catregoryError,
    TResult? Function(List<CategoryModel> category)? categorySuccess,
  }) {
    return categorySuccess?.call(category);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? categoryLoading,
    TResult Function(String error)? catregoryError,
    TResult Function(List<CategoryModel> category)? categorySuccess,
    required TResult orElse(),
  }) {
    if (categorySuccess != null) {
      return categorySuccess(category);
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
    required TResult orElse(),
  }) {
    if (categorySuccess != null) {
      return categorySuccess(this);
    }
    return orElse();
  }
}

abstract class CategorySuccess implements AppState {
  const factory CategorySuccess(final List<CategoryModel> category) =
      _$CategorySuccessImpl;

  List<CategoryModel> get category;
  @JsonKey(ignore: true)
  _$$CategorySuccessImplCopyWith<_$CategorySuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
