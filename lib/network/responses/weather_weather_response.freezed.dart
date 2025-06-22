// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_weather_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WeatherWeatherResponse _$WeatherWeatherResponseFromJson(
    Map<String, dynamic> json) {
  return _WeatherWeatherResponse.fromJson(json);
}

/// @nodoc
mixin _$WeatherWeatherResponse {
  String get main => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get icon => throw _privateConstructorUsedError;

  /// Serializes this WeatherWeatherResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WeatherWeatherResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WeatherWeatherResponseCopyWith<WeatherWeatherResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherWeatherResponseCopyWith<$Res> {
  factory $WeatherWeatherResponseCopyWith(WeatherWeatherResponse value,
          $Res Function(WeatherWeatherResponse) then) =
      _$WeatherWeatherResponseCopyWithImpl<$Res, WeatherWeatherResponse>;
  @useResult
  $Res call({String main, String description, String icon});
}

/// @nodoc
class _$WeatherWeatherResponseCopyWithImpl<$Res,
        $Val extends WeatherWeatherResponse>
    implements $WeatherWeatherResponseCopyWith<$Res> {
  _$WeatherWeatherResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WeatherWeatherResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? main = null,
    Object? description = null,
    Object? icon = null,
  }) {
    return _then(_value.copyWith(
      main: null == main
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WeatherWeatherResponseImplCopyWith<$Res>
    implements $WeatherWeatherResponseCopyWith<$Res> {
  factory _$$WeatherWeatherResponseImplCopyWith(
          _$WeatherWeatherResponseImpl value,
          $Res Function(_$WeatherWeatherResponseImpl) then) =
      __$$WeatherWeatherResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String main, String description, String icon});
}

/// @nodoc
class __$$WeatherWeatherResponseImplCopyWithImpl<$Res>
    extends _$WeatherWeatherResponseCopyWithImpl<$Res,
        _$WeatherWeatherResponseImpl>
    implements _$$WeatherWeatherResponseImplCopyWith<$Res> {
  __$$WeatherWeatherResponseImplCopyWithImpl(
      _$WeatherWeatherResponseImpl _value,
      $Res Function(_$WeatherWeatherResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of WeatherWeatherResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? main = null,
    Object? description = null,
    Object? icon = null,
  }) {
    return _then(_$WeatherWeatherResponseImpl(
      main: null == main
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WeatherWeatherResponseImpl implements _WeatherWeatherResponse {
  const _$WeatherWeatherResponseImpl(
      {required this.main, required this.description, required this.icon});

  factory _$WeatherWeatherResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeatherWeatherResponseImplFromJson(json);

  @override
  final String main;
  @override
  final String description;
  @override
  final String icon;

  @override
  String toString() {
    return 'WeatherWeatherResponse(main: $main, description: $description, icon: $icon)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherWeatherResponseImpl &&
            (identical(other.main, main) || other.main == main) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.icon, icon) || other.icon == icon));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, main, description, icon);

  /// Create a copy of WeatherWeatherResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherWeatherResponseImplCopyWith<_$WeatherWeatherResponseImpl>
      get copyWith => __$$WeatherWeatherResponseImplCopyWithImpl<
          _$WeatherWeatherResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeatherWeatherResponseImplToJson(
      this,
    );
  }
}

abstract class _WeatherWeatherResponse implements WeatherWeatherResponse {
  const factory _WeatherWeatherResponse(
      {required final String main,
      required final String description,
      required final String icon}) = _$WeatherWeatherResponseImpl;

  factory _WeatherWeatherResponse.fromJson(Map<String, dynamic> json) =
      _$WeatherWeatherResponseImpl.fromJson;

  @override
  String get main;
  @override
  String get description;
  @override
  String get icon;

  /// Create a copy of WeatherWeatherResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WeatherWeatherResponseImplCopyWith<_$WeatherWeatherResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
