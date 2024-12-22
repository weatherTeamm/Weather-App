// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() gteWeatherLoading,
    required TResult Function(WeatherResponse weatherResponse)
        gteWeatherSuccess,
    required TResult Function(String error) gteWeatherFailure,
    required TResult Function() searchLocationLoading,
    required TResult Function(List<AutocompleteResponse> auto)
        searchLocationSuccess,
    required TResult Function(String error) searchLocationFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? gteWeatherLoading,
    TResult? Function(WeatherResponse weatherResponse)? gteWeatherSuccess,
    TResult? Function(String error)? gteWeatherFailure,
    TResult? Function()? searchLocationLoading,
    TResult? Function(List<AutocompleteResponse> auto)? searchLocationSuccess,
    TResult? Function(String error)? searchLocationFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? gteWeatherLoading,
    TResult Function(WeatherResponse weatherResponse)? gteWeatherSuccess,
    TResult Function(String error)? gteWeatherFailure,
    TResult Function()? searchLocationLoading,
    TResult Function(List<AutocompleteResponse> auto)? searchLocationSuccess,
    TResult Function(String error)? searchLocationFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(GetWeatherLoading value) gteWeatherLoading,
    required TResult Function(GetWeatherSuccess value) gteWeatherSuccess,
    required TResult Function(GetWeatherFailure value) gteWeatherFailure,
    required TResult Function(SearchLocationLoading value)
        searchLocationLoading,
    required TResult Function(SearchLocationSuccess value)
        searchLocationSuccess,
    required TResult Function(SearchLocationFailure value)
        searchLocationFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(GetWeatherLoading value)? gteWeatherLoading,
    TResult? Function(GetWeatherSuccess value)? gteWeatherSuccess,
    TResult? Function(GetWeatherFailure value)? gteWeatherFailure,
    TResult? Function(SearchLocationLoading value)? searchLocationLoading,
    TResult? Function(SearchLocationSuccess value)? searchLocationSuccess,
    TResult? Function(SearchLocationFailure value)? searchLocationFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(GetWeatherLoading value)? gteWeatherLoading,
    TResult Function(GetWeatherSuccess value)? gteWeatherSuccess,
    TResult Function(GetWeatherFailure value)? gteWeatherFailure,
    TResult Function(SearchLocationLoading value)? searchLocationLoading,
    TResult Function(SearchLocationSuccess value)? searchLocationSuccess,
    TResult Function(SearchLocationFailure value)? searchLocationFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'HomeState.initial()';
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
    required TResult Function() gteWeatherLoading,
    required TResult Function(WeatherResponse weatherResponse)
        gteWeatherSuccess,
    required TResult Function(String error) gteWeatherFailure,
    required TResult Function() searchLocationLoading,
    required TResult Function(List<AutocompleteResponse> auto)
        searchLocationSuccess,
    required TResult Function(String error) searchLocationFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? gteWeatherLoading,
    TResult? Function(WeatherResponse weatherResponse)? gteWeatherSuccess,
    TResult? Function(String error)? gteWeatherFailure,
    TResult? Function()? searchLocationLoading,
    TResult? Function(List<AutocompleteResponse> auto)? searchLocationSuccess,
    TResult? Function(String error)? searchLocationFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? gteWeatherLoading,
    TResult Function(WeatherResponse weatherResponse)? gteWeatherSuccess,
    TResult Function(String error)? gteWeatherFailure,
    TResult Function()? searchLocationLoading,
    TResult Function(List<AutocompleteResponse> auto)? searchLocationSuccess,
    TResult Function(String error)? searchLocationFailure,
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
    required TResult Function(GetWeatherLoading value) gteWeatherLoading,
    required TResult Function(GetWeatherSuccess value) gteWeatherSuccess,
    required TResult Function(GetWeatherFailure value) gteWeatherFailure,
    required TResult Function(SearchLocationLoading value)
        searchLocationLoading,
    required TResult Function(SearchLocationSuccess value)
        searchLocationSuccess,
    required TResult Function(SearchLocationFailure value)
        searchLocationFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(GetWeatherLoading value)? gteWeatherLoading,
    TResult? Function(GetWeatherSuccess value)? gteWeatherSuccess,
    TResult? Function(GetWeatherFailure value)? gteWeatherFailure,
    TResult? Function(SearchLocationLoading value)? searchLocationLoading,
    TResult? Function(SearchLocationSuccess value)? searchLocationSuccess,
    TResult? Function(SearchLocationFailure value)? searchLocationFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(GetWeatherLoading value)? gteWeatherLoading,
    TResult Function(GetWeatherSuccess value)? gteWeatherSuccess,
    TResult Function(GetWeatherFailure value)? gteWeatherFailure,
    TResult Function(SearchLocationLoading value)? searchLocationLoading,
    TResult Function(SearchLocationSuccess value)? searchLocationSuccess,
    TResult Function(SearchLocationFailure value)? searchLocationFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements HomeState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$GetWeatherLoadingImplCopyWith<$Res> {
  factory _$$GetWeatherLoadingImplCopyWith(_$GetWeatherLoadingImpl value,
          $Res Function(_$GetWeatherLoadingImpl) then) =
      __$$GetWeatherLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetWeatherLoadingImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$GetWeatherLoadingImpl>
    implements _$$GetWeatherLoadingImplCopyWith<$Res> {
  __$$GetWeatherLoadingImplCopyWithImpl(_$GetWeatherLoadingImpl _value,
      $Res Function(_$GetWeatherLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetWeatherLoadingImpl implements GetWeatherLoading {
  const _$GetWeatherLoadingImpl();

  @override
  String toString() {
    return 'HomeState.gteWeatherLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetWeatherLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() gteWeatherLoading,
    required TResult Function(WeatherResponse weatherResponse)
        gteWeatherSuccess,
    required TResult Function(String error) gteWeatherFailure,
    required TResult Function() searchLocationLoading,
    required TResult Function(List<AutocompleteResponse> auto)
        searchLocationSuccess,
    required TResult Function(String error) searchLocationFailure,
  }) {
    return gteWeatherLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? gteWeatherLoading,
    TResult? Function(WeatherResponse weatherResponse)? gteWeatherSuccess,
    TResult? Function(String error)? gteWeatherFailure,
    TResult? Function()? searchLocationLoading,
    TResult? Function(List<AutocompleteResponse> auto)? searchLocationSuccess,
    TResult? Function(String error)? searchLocationFailure,
  }) {
    return gteWeatherLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? gteWeatherLoading,
    TResult Function(WeatherResponse weatherResponse)? gteWeatherSuccess,
    TResult Function(String error)? gteWeatherFailure,
    TResult Function()? searchLocationLoading,
    TResult Function(List<AutocompleteResponse> auto)? searchLocationSuccess,
    TResult Function(String error)? searchLocationFailure,
    required TResult orElse(),
  }) {
    if (gteWeatherLoading != null) {
      return gteWeatherLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(GetWeatherLoading value) gteWeatherLoading,
    required TResult Function(GetWeatherSuccess value) gteWeatherSuccess,
    required TResult Function(GetWeatherFailure value) gteWeatherFailure,
    required TResult Function(SearchLocationLoading value)
        searchLocationLoading,
    required TResult Function(SearchLocationSuccess value)
        searchLocationSuccess,
    required TResult Function(SearchLocationFailure value)
        searchLocationFailure,
  }) {
    return gteWeatherLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(GetWeatherLoading value)? gteWeatherLoading,
    TResult? Function(GetWeatherSuccess value)? gteWeatherSuccess,
    TResult? Function(GetWeatherFailure value)? gteWeatherFailure,
    TResult? Function(SearchLocationLoading value)? searchLocationLoading,
    TResult? Function(SearchLocationSuccess value)? searchLocationSuccess,
    TResult? Function(SearchLocationFailure value)? searchLocationFailure,
  }) {
    return gteWeatherLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(GetWeatherLoading value)? gteWeatherLoading,
    TResult Function(GetWeatherSuccess value)? gteWeatherSuccess,
    TResult Function(GetWeatherFailure value)? gteWeatherFailure,
    TResult Function(SearchLocationLoading value)? searchLocationLoading,
    TResult Function(SearchLocationSuccess value)? searchLocationSuccess,
    TResult Function(SearchLocationFailure value)? searchLocationFailure,
    required TResult orElse(),
  }) {
    if (gteWeatherLoading != null) {
      return gteWeatherLoading(this);
    }
    return orElse();
  }
}

abstract class GetWeatherLoading implements HomeState {
  const factory GetWeatherLoading() = _$GetWeatherLoadingImpl;
}

/// @nodoc
abstract class _$$GetWeatherSuccessImplCopyWith<$Res> {
  factory _$$GetWeatherSuccessImplCopyWith(_$GetWeatherSuccessImpl value,
          $Res Function(_$GetWeatherSuccessImpl) then) =
      __$$GetWeatherSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({WeatherResponse weatherResponse});
}

/// @nodoc
class __$$GetWeatherSuccessImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$GetWeatherSuccessImpl>
    implements _$$GetWeatherSuccessImplCopyWith<$Res> {
  __$$GetWeatherSuccessImplCopyWithImpl(_$GetWeatherSuccessImpl _value,
      $Res Function(_$GetWeatherSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weatherResponse = null,
  }) {
    return _then(_$GetWeatherSuccessImpl(
      null == weatherResponse
          ? _value.weatherResponse
          : weatherResponse // ignore: cast_nullable_to_non_nullable
              as WeatherResponse,
    ));
  }
}

/// @nodoc

class _$GetWeatherSuccessImpl implements GetWeatherSuccess {
  const _$GetWeatherSuccessImpl(this.weatherResponse);

  @override
  final WeatherResponse weatherResponse;

  @override
  String toString() {
    return 'HomeState.gteWeatherSuccess(weatherResponse: $weatherResponse)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetWeatherSuccessImpl &&
            (identical(other.weatherResponse, weatherResponse) ||
                other.weatherResponse == weatherResponse));
  }

  @override
  int get hashCode => Object.hash(runtimeType, weatherResponse);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetWeatherSuccessImplCopyWith<_$GetWeatherSuccessImpl> get copyWith =>
      __$$GetWeatherSuccessImplCopyWithImpl<_$GetWeatherSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() gteWeatherLoading,
    required TResult Function(WeatherResponse weatherResponse)
        gteWeatherSuccess,
    required TResult Function(String error) gteWeatherFailure,
    required TResult Function() searchLocationLoading,
    required TResult Function(List<AutocompleteResponse> auto)
        searchLocationSuccess,
    required TResult Function(String error) searchLocationFailure,
  }) {
    return gteWeatherSuccess(weatherResponse);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? gteWeatherLoading,
    TResult? Function(WeatherResponse weatherResponse)? gteWeatherSuccess,
    TResult? Function(String error)? gteWeatherFailure,
    TResult? Function()? searchLocationLoading,
    TResult? Function(List<AutocompleteResponse> auto)? searchLocationSuccess,
    TResult? Function(String error)? searchLocationFailure,
  }) {
    return gteWeatherSuccess?.call(weatherResponse);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? gteWeatherLoading,
    TResult Function(WeatherResponse weatherResponse)? gteWeatherSuccess,
    TResult Function(String error)? gteWeatherFailure,
    TResult Function()? searchLocationLoading,
    TResult Function(List<AutocompleteResponse> auto)? searchLocationSuccess,
    TResult Function(String error)? searchLocationFailure,
    required TResult orElse(),
  }) {
    if (gteWeatherSuccess != null) {
      return gteWeatherSuccess(weatherResponse);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(GetWeatherLoading value) gteWeatherLoading,
    required TResult Function(GetWeatherSuccess value) gteWeatherSuccess,
    required TResult Function(GetWeatherFailure value) gteWeatherFailure,
    required TResult Function(SearchLocationLoading value)
        searchLocationLoading,
    required TResult Function(SearchLocationSuccess value)
        searchLocationSuccess,
    required TResult Function(SearchLocationFailure value)
        searchLocationFailure,
  }) {
    return gteWeatherSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(GetWeatherLoading value)? gteWeatherLoading,
    TResult? Function(GetWeatherSuccess value)? gteWeatherSuccess,
    TResult? Function(GetWeatherFailure value)? gteWeatherFailure,
    TResult? Function(SearchLocationLoading value)? searchLocationLoading,
    TResult? Function(SearchLocationSuccess value)? searchLocationSuccess,
    TResult? Function(SearchLocationFailure value)? searchLocationFailure,
  }) {
    return gteWeatherSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(GetWeatherLoading value)? gteWeatherLoading,
    TResult Function(GetWeatherSuccess value)? gteWeatherSuccess,
    TResult Function(GetWeatherFailure value)? gteWeatherFailure,
    TResult Function(SearchLocationLoading value)? searchLocationLoading,
    TResult Function(SearchLocationSuccess value)? searchLocationSuccess,
    TResult Function(SearchLocationFailure value)? searchLocationFailure,
    required TResult orElse(),
  }) {
    if (gteWeatherSuccess != null) {
      return gteWeatherSuccess(this);
    }
    return orElse();
  }
}

abstract class GetWeatherSuccess implements HomeState {
  const factory GetWeatherSuccess(final WeatherResponse weatherResponse) =
      _$GetWeatherSuccessImpl;

  WeatherResponse get weatherResponse;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetWeatherSuccessImplCopyWith<_$GetWeatherSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetWeatherFailureImplCopyWith<$Res> {
  factory _$$GetWeatherFailureImplCopyWith(_$GetWeatherFailureImpl value,
          $Res Function(_$GetWeatherFailureImpl) then) =
      __$$GetWeatherFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$GetWeatherFailureImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$GetWeatherFailureImpl>
    implements _$$GetWeatherFailureImplCopyWith<$Res> {
  __$$GetWeatherFailureImplCopyWithImpl(_$GetWeatherFailureImpl _value,
      $Res Function(_$GetWeatherFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$GetWeatherFailureImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetWeatherFailureImpl implements GetWeatherFailure {
  const _$GetWeatherFailureImpl(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'HomeState.gteWeatherFailure(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetWeatherFailureImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetWeatherFailureImplCopyWith<_$GetWeatherFailureImpl> get copyWith =>
      __$$GetWeatherFailureImplCopyWithImpl<_$GetWeatherFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() gteWeatherLoading,
    required TResult Function(WeatherResponse weatherResponse)
        gteWeatherSuccess,
    required TResult Function(String error) gteWeatherFailure,
    required TResult Function() searchLocationLoading,
    required TResult Function(List<AutocompleteResponse> auto)
        searchLocationSuccess,
    required TResult Function(String error) searchLocationFailure,
  }) {
    return gteWeatherFailure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? gteWeatherLoading,
    TResult? Function(WeatherResponse weatherResponse)? gteWeatherSuccess,
    TResult? Function(String error)? gteWeatherFailure,
    TResult? Function()? searchLocationLoading,
    TResult? Function(List<AutocompleteResponse> auto)? searchLocationSuccess,
    TResult? Function(String error)? searchLocationFailure,
  }) {
    return gteWeatherFailure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? gteWeatherLoading,
    TResult Function(WeatherResponse weatherResponse)? gteWeatherSuccess,
    TResult Function(String error)? gteWeatherFailure,
    TResult Function()? searchLocationLoading,
    TResult Function(List<AutocompleteResponse> auto)? searchLocationSuccess,
    TResult Function(String error)? searchLocationFailure,
    required TResult orElse(),
  }) {
    if (gteWeatherFailure != null) {
      return gteWeatherFailure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(GetWeatherLoading value) gteWeatherLoading,
    required TResult Function(GetWeatherSuccess value) gteWeatherSuccess,
    required TResult Function(GetWeatherFailure value) gteWeatherFailure,
    required TResult Function(SearchLocationLoading value)
        searchLocationLoading,
    required TResult Function(SearchLocationSuccess value)
        searchLocationSuccess,
    required TResult Function(SearchLocationFailure value)
        searchLocationFailure,
  }) {
    return gteWeatherFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(GetWeatherLoading value)? gteWeatherLoading,
    TResult? Function(GetWeatherSuccess value)? gteWeatherSuccess,
    TResult? Function(GetWeatherFailure value)? gteWeatherFailure,
    TResult? Function(SearchLocationLoading value)? searchLocationLoading,
    TResult? Function(SearchLocationSuccess value)? searchLocationSuccess,
    TResult? Function(SearchLocationFailure value)? searchLocationFailure,
  }) {
    return gteWeatherFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(GetWeatherLoading value)? gteWeatherLoading,
    TResult Function(GetWeatherSuccess value)? gteWeatherSuccess,
    TResult Function(GetWeatherFailure value)? gteWeatherFailure,
    TResult Function(SearchLocationLoading value)? searchLocationLoading,
    TResult Function(SearchLocationSuccess value)? searchLocationSuccess,
    TResult Function(SearchLocationFailure value)? searchLocationFailure,
    required TResult orElse(),
  }) {
    if (gteWeatherFailure != null) {
      return gteWeatherFailure(this);
    }
    return orElse();
  }
}

abstract class GetWeatherFailure implements HomeState {
  const factory GetWeatherFailure(final String error) = _$GetWeatherFailureImpl;

  String get error;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetWeatherFailureImplCopyWith<_$GetWeatherFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchLocationLoadingImplCopyWith<$Res> {
  factory _$$SearchLocationLoadingImplCopyWith(
          _$SearchLocationLoadingImpl value,
          $Res Function(_$SearchLocationLoadingImpl) then) =
      __$$SearchLocationLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SearchLocationLoadingImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$SearchLocationLoadingImpl>
    implements _$$SearchLocationLoadingImplCopyWith<$Res> {
  __$$SearchLocationLoadingImplCopyWithImpl(_$SearchLocationLoadingImpl _value,
      $Res Function(_$SearchLocationLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SearchLocationLoadingImpl implements SearchLocationLoading {
  const _$SearchLocationLoadingImpl();

  @override
  String toString() {
    return 'HomeState.searchLocationLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchLocationLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() gteWeatherLoading,
    required TResult Function(WeatherResponse weatherResponse)
        gteWeatherSuccess,
    required TResult Function(String error) gteWeatherFailure,
    required TResult Function() searchLocationLoading,
    required TResult Function(List<AutocompleteResponse> auto)
        searchLocationSuccess,
    required TResult Function(String error) searchLocationFailure,
  }) {
    return searchLocationLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? gteWeatherLoading,
    TResult? Function(WeatherResponse weatherResponse)? gteWeatherSuccess,
    TResult? Function(String error)? gteWeatherFailure,
    TResult? Function()? searchLocationLoading,
    TResult? Function(List<AutocompleteResponse> auto)? searchLocationSuccess,
    TResult? Function(String error)? searchLocationFailure,
  }) {
    return searchLocationLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? gteWeatherLoading,
    TResult Function(WeatherResponse weatherResponse)? gteWeatherSuccess,
    TResult Function(String error)? gteWeatherFailure,
    TResult Function()? searchLocationLoading,
    TResult Function(List<AutocompleteResponse> auto)? searchLocationSuccess,
    TResult Function(String error)? searchLocationFailure,
    required TResult orElse(),
  }) {
    if (searchLocationLoading != null) {
      return searchLocationLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(GetWeatherLoading value) gteWeatherLoading,
    required TResult Function(GetWeatherSuccess value) gteWeatherSuccess,
    required TResult Function(GetWeatherFailure value) gteWeatherFailure,
    required TResult Function(SearchLocationLoading value)
        searchLocationLoading,
    required TResult Function(SearchLocationSuccess value)
        searchLocationSuccess,
    required TResult Function(SearchLocationFailure value)
        searchLocationFailure,
  }) {
    return searchLocationLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(GetWeatherLoading value)? gteWeatherLoading,
    TResult? Function(GetWeatherSuccess value)? gteWeatherSuccess,
    TResult? Function(GetWeatherFailure value)? gteWeatherFailure,
    TResult? Function(SearchLocationLoading value)? searchLocationLoading,
    TResult? Function(SearchLocationSuccess value)? searchLocationSuccess,
    TResult? Function(SearchLocationFailure value)? searchLocationFailure,
  }) {
    return searchLocationLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(GetWeatherLoading value)? gteWeatherLoading,
    TResult Function(GetWeatherSuccess value)? gteWeatherSuccess,
    TResult Function(GetWeatherFailure value)? gteWeatherFailure,
    TResult Function(SearchLocationLoading value)? searchLocationLoading,
    TResult Function(SearchLocationSuccess value)? searchLocationSuccess,
    TResult Function(SearchLocationFailure value)? searchLocationFailure,
    required TResult orElse(),
  }) {
    if (searchLocationLoading != null) {
      return searchLocationLoading(this);
    }
    return orElse();
  }
}

abstract class SearchLocationLoading implements HomeState {
  const factory SearchLocationLoading() = _$SearchLocationLoadingImpl;
}

/// @nodoc
abstract class _$$SearchLocationSuccessImplCopyWith<$Res> {
  factory _$$SearchLocationSuccessImplCopyWith(
          _$SearchLocationSuccessImpl value,
          $Res Function(_$SearchLocationSuccessImpl) then) =
      __$$SearchLocationSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<AutocompleteResponse> auto});
}

/// @nodoc
class __$$SearchLocationSuccessImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$SearchLocationSuccessImpl>
    implements _$$SearchLocationSuccessImplCopyWith<$Res> {
  __$$SearchLocationSuccessImplCopyWithImpl(_$SearchLocationSuccessImpl _value,
      $Res Function(_$SearchLocationSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? auto = null,
  }) {
    return _then(_$SearchLocationSuccessImpl(
      null == auto
          ? _value._auto
          : auto // ignore: cast_nullable_to_non_nullable
              as List<AutocompleteResponse>,
    ));
  }
}

/// @nodoc

class _$SearchLocationSuccessImpl implements SearchLocationSuccess {
  const _$SearchLocationSuccessImpl(final List<AutocompleteResponse> auto)
      : _auto = auto;

  final List<AutocompleteResponse> _auto;
  @override
  List<AutocompleteResponse> get auto {
    if (_auto is EqualUnmodifiableListView) return _auto;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_auto);
  }

  @override
  String toString() {
    return 'HomeState.searchLocationSuccess(auto: $auto)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchLocationSuccessImpl &&
            const DeepCollectionEquality().equals(other._auto, _auto));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_auto));

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchLocationSuccessImplCopyWith<_$SearchLocationSuccessImpl>
      get copyWith => __$$SearchLocationSuccessImplCopyWithImpl<
          _$SearchLocationSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() gteWeatherLoading,
    required TResult Function(WeatherResponse weatherResponse)
        gteWeatherSuccess,
    required TResult Function(String error) gteWeatherFailure,
    required TResult Function() searchLocationLoading,
    required TResult Function(List<AutocompleteResponse> auto)
        searchLocationSuccess,
    required TResult Function(String error) searchLocationFailure,
  }) {
    return searchLocationSuccess(auto);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? gteWeatherLoading,
    TResult? Function(WeatherResponse weatherResponse)? gteWeatherSuccess,
    TResult? Function(String error)? gteWeatherFailure,
    TResult? Function()? searchLocationLoading,
    TResult? Function(List<AutocompleteResponse> auto)? searchLocationSuccess,
    TResult? Function(String error)? searchLocationFailure,
  }) {
    return searchLocationSuccess?.call(auto);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? gteWeatherLoading,
    TResult Function(WeatherResponse weatherResponse)? gteWeatherSuccess,
    TResult Function(String error)? gteWeatherFailure,
    TResult Function()? searchLocationLoading,
    TResult Function(List<AutocompleteResponse> auto)? searchLocationSuccess,
    TResult Function(String error)? searchLocationFailure,
    required TResult orElse(),
  }) {
    if (searchLocationSuccess != null) {
      return searchLocationSuccess(auto);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(GetWeatherLoading value) gteWeatherLoading,
    required TResult Function(GetWeatherSuccess value) gteWeatherSuccess,
    required TResult Function(GetWeatherFailure value) gteWeatherFailure,
    required TResult Function(SearchLocationLoading value)
        searchLocationLoading,
    required TResult Function(SearchLocationSuccess value)
        searchLocationSuccess,
    required TResult Function(SearchLocationFailure value)
        searchLocationFailure,
  }) {
    return searchLocationSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(GetWeatherLoading value)? gteWeatherLoading,
    TResult? Function(GetWeatherSuccess value)? gteWeatherSuccess,
    TResult? Function(GetWeatherFailure value)? gteWeatherFailure,
    TResult? Function(SearchLocationLoading value)? searchLocationLoading,
    TResult? Function(SearchLocationSuccess value)? searchLocationSuccess,
    TResult? Function(SearchLocationFailure value)? searchLocationFailure,
  }) {
    return searchLocationSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(GetWeatherLoading value)? gteWeatherLoading,
    TResult Function(GetWeatherSuccess value)? gteWeatherSuccess,
    TResult Function(GetWeatherFailure value)? gteWeatherFailure,
    TResult Function(SearchLocationLoading value)? searchLocationLoading,
    TResult Function(SearchLocationSuccess value)? searchLocationSuccess,
    TResult Function(SearchLocationFailure value)? searchLocationFailure,
    required TResult orElse(),
  }) {
    if (searchLocationSuccess != null) {
      return searchLocationSuccess(this);
    }
    return orElse();
  }
}

abstract class SearchLocationSuccess implements HomeState {
  const factory SearchLocationSuccess(final List<AutocompleteResponse> auto) =
      _$SearchLocationSuccessImpl;

  List<AutocompleteResponse> get auto;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchLocationSuccessImplCopyWith<_$SearchLocationSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchLocationFailureImplCopyWith<$Res> {
  factory _$$SearchLocationFailureImplCopyWith(
          _$SearchLocationFailureImpl value,
          $Res Function(_$SearchLocationFailureImpl) then) =
      __$$SearchLocationFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$SearchLocationFailureImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$SearchLocationFailureImpl>
    implements _$$SearchLocationFailureImplCopyWith<$Res> {
  __$$SearchLocationFailureImplCopyWithImpl(_$SearchLocationFailureImpl _value,
      $Res Function(_$SearchLocationFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$SearchLocationFailureImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchLocationFailureImpl implements SearchLocationFailure {
  const _$SearchLocationFailureImpl(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'HomeState.searchLocationFailure(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchLocationFailureImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchLocationFailureImplCopyWith<_$SearchLocationFailureImpl>
      get copyWith => __$$SearchLocationFailureImplCopyWithImpl<
          _$SearchLocationFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() gteWeatherLoading,
    required TResult Function(WeatherResponse weatherResponse)
        gteWeatherSuccess,
    required TResult Function(String error) gteWeatherFailure,
    required TResult Function() searchLocationLoading,
    required TResult Function(List<AutocompleteResponse> auto)
        searchLocationSuccess,
    required TResult Function(String error) searchLocationFailure,
  }) {
    return searchLocationFailure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? gteWeatherLoading,
    TResult? Function(WeatherResponse weatherResponse)? gteWeatherSuccess,
    TResult? Function(String error)? gteWeatherFailure,
    TResult? Function()? searchLocationLoading,
    TResult? Function(List<AutocompleteResponse> auto)? searchLocationSuccess,
    TResult? Function(String error)? searchLocationFailure,
  }) {
    return searchLocationFailure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? gteWeatherLoading,
    TResult Function(WeatherResponse weatherResponse)? gteWeatherSuccess,
    TResult Function(String error)? gteWeatherFailure,
    TResult Function()? searchLocationLoading,
    TResult Function(List<AutocompleteResponse> auto)? searchLocationSuccess,
    TResult Function(String error)? searchLocationFailure,
    required TResult orElse(),
  }) {
    if (searchLocationFailure != null) {
      return searchLocationFailure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(GetWeatherLoading value) gteWeatherLoading,
    required TResult Function(GetWeatherSuccess value) gteWeatherSuccess,
    required TResult Function(GetWeatherFailure value) gteWeatherFailure,
    required TResult Function(SearchLocationLoading value)
        searchLocationLoading,
    required TResult Function(SearchLocationSuccess value)
        searchLocationSuccess,
    required TResult Function(SearchLocationFailure value)
        searchLocationFailure,
  }) {
    return searchLocationFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(GetWeatherLoading value)? gteWeatherLoading,
    TResult? Function(GetWeatherSuccess value)? gteWeatherSuccess,
    TResult? Function(GetWeatherFailure value)? gteWeatherFailure,
    TResult? Function(SearchLocationLoading value)? searchLocationLoading,
    TResult? Function(SearchLocationSuccess value)? searchLocationSuccess,
    TResult? Function(SearchLocationFailure value)? searchLocationFailure,
  }) {
    return searchLocationFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(GetWeatherLoading value)? gteWeatherLoading,
    TResult Function(GetWeatherSuccess value)? gteWeatherSuccess,
    TResult Function(GetWeatherFailure value)? gteWeatherFailure,
    TResult Function(SearchLocationLoading value)? searchLocationLoading,
    TResult Function(SearchLocationSuccess value)? searchLocationSuccess,
    TResult Function(SearchLocationFailure value)? searchLocationFailure,
    required TResult orElse(),
  }) {
    if (searchLocationFailure != null) {
      return searchLocationFailure(this);
    }
    return orElse();
  }
}

abstract class SearchLocationFailure implements HomeState {
  const factory SearchLocationFailure(final String error) =
      _$SearchLocationFailureImpl;

  String get error;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchLocationFailureImplCopyWith<_$SearchLocationFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}
