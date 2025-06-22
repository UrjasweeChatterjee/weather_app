import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_main_response.freezed.dart';
part 'weather_main_response.g.dart';

@freezed
class WeatherMainResponse with _$WeatherMainResponse {
  const factory WeatherMainResponse({
    required double temp,
    @JsonKey(name: 'temp_min') required double tempMin,
    @JsonKey(name: 'temp_max') required double tempMax,
  }) = _WeatherMainResponse;

  factory WeatherMainResponse.fromJson(Map<String, dynamic> json) =>
      _$WeatherMainResponseFromJson(json);
}
