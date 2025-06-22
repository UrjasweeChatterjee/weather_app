import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_weather_response.freezed.dart';
part 'weather_weather_response.g.dart';

@freezed
class WeatherWeatherResponse with _$WeatherWeatherResponse {
  const factory WeatherWeatherResponse({
    required String main,
    required String description,
    required String icon,
  }) = _WeatherWeatherResponse;

  factory WeatherWeatherResponse.fromJson(Map<String, dynamic> json) =>
      _$WeatherWeatherResponseFromJson(json);
}
