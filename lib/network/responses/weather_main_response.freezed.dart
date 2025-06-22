// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_main_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WeatherMainResponse _$WeatherMainResponseFromJson(Map<String, dynamic> json) {
  return _WeatherMainResponse.fromJson(json);
}

/// @nodoc
mixin _$WeatherMainResponse {
  double get temp => throw _privateConstructorUsedError;
  @JsonKey(name: 'temp_min')
  double get tempMin => throw _privateConstructorUsedError;
  @JsonKey(name: 'temp_max')
  double get tempMax => throw _privateConstructorUsedError;

  /// Serializes this WeatherMainResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WeatherMainResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WeatherMainResponseCopyWith<WeatherMainResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherMainResponseCopyWith<$Res> {
  factory $WeatherMainResponseCopyWith(
          WeatherMainResponse value, $Res Function(WeatherMainResponse) then) =
      _$WeatherMainResponseCopyWithImpl<$Res, WeatherMainResponse>;
  @useResult
  $Res call(
      {double temp,
      @JsonKey(name: 'temp_min') double tempMin,
      @JsonKey(name: 'temp_max') double tempMax});
}

/// @nodoc
class _$WeatherMainResponseCopyWithImpl<$Res, $Val extends WeatherMainResponse>
    implements $WeatherMainResponseCopyWith<$Res> {
  _$WeatherMainResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WeatherMainResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? temp = null,
    Object? tempMin = null,
    Object? tempMax = null,
  }) {
    return _then(_value.copyWith(
      temp: null == temp
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as double,
      tempMin: null == tempMin
          ? _value.tempMin
          : tempMin // ignore: cast_nullable_to_non_nullable
              as double,
      tempMax: null == tempMax
          ? _value.tempMax
          : tempMax // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WeatherMainResponseImplCopyWith<$Res>
    implements $WeatherMainResponseCopyWith<$Res> {
  factory _$$WeatherMainResponseImplCopyWith(_$WeatherMainResponseImpl value,
          $Res Function(_$WeatherMainResponseImpl) then) =
      __$$WeatherMainResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double temp,
      @JsonKey(name: 'temp_min') double tempMin,
      @JsonKey(name: 'temp_max') double tempMax});
}

/// @nodoc
class __$$WeatherMainResponseImplCopyWithImpl<$Res>
    extends _$WeatherMainResponseCopyWithImpl<$Res, _$WeatherMainResponseImpl>
    implements _$$WeatherMainResponseImplCopyWith<$Res> {
  __$$WeatherMainResponseImplCopyWithImpl(_$WeatherMainResponseImpl _value,
      $Res Function(_$WeatherMainResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of WeatherMainResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? temp = null,
    Object? tempMin = null,
    Object? tempMax = null,
  }) {
    return _then(_$WeatherMainResponseImpl(
      temp: null == temp
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as double,
      tempMin: null == tempMin
          ? _value.tempMin
          : tempMin // ignore: cast_nullable_to_non_nullable
              as double,
      tempMax: null == tempMax
          ? _value.tempMax
          : tempMax // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WeatherMainResponseImpl implements _WeatherMainResponse {
  const _$WeatherMainResponseImpl(
      {required this.temp,
      @JsonKey(name: 'temp_min') required this.tempMin,
      @JsonKey(name: 'temp_max') required this.tempMax});

  factory _$WeatherMainResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeatherMainResponseImplFromJson(json);

  @override
  final double temp;
  @override
  @JsonKey(name: 'temp_min')
  final double tempMin;
  @override
  @JsonKey(name: 'temp_max')
  final double tempMax;

  @override
  String toString() {
    return 'WeatherMainResponse(temp: $temp, tempMin: $tempMin, tempMax: $tempMax)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherMainResponseImpl &&
            (identical(other.temp, temp) || other.temp == temp) &&
            (identical(other.tempMin, tempMin) || other.tempMin == tempMin) &&
            (identical(other.tempMax, tempMax) || other.tempMax == tempMax));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, temp, tempMin, tempMax);

  /// Create a copy of WeatherMainResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherMainResponseImplCopyWith<_$WeatherMainResponseImpl> get copyWith =>
      __$$WeatherMainResponseImplCopyWithImpl<_$WeatherMainResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeatherMainResponseImplToJson(
      this,
    );
  }
}

abstract class _WeatherMainResponse implements WeatherMainResponse {
  const factory _WeatherMainResponse(
          {required final double temp,
          @JsonKey(name: 'temp_min') required final double tempMin,
          @JsonKey(name: 'temp_max') required final double tempMax}) =
      _$WeatherMainResponseImpl;

  factory _WeatherMainResponse.fromJson(Map<String, dynamic> json) =
      _$WeatherMainResponseImpl.fromJson;

  @override
  double get temp;
  @override
  @JsonKey(name: 'temp_min')
  double get tempMin;
  @override
  @JsonKey(name: 'temp_max')
  double get tempMax;

  /// Create a copy of WeatherMainResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WeatherMainResponseImplCopyWith<_$WeatherMainResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
