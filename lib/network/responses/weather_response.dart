import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_app/network/responses/weather_main_response.dart';
import 'package:weather_app/network/responses/weather_weather_response.dart';

part 'weather_response.freezed.dart';
part 'weather_response.g.dart';

@freezed
class WeatherResponse with _$WeatherResponse {
  const factory WeatherResponse({
    required WeatherMainResponse main,
    required List<WeatherWeatherResponse> weather,
    required String name,
  }) = _WeatherResponse;

  factory WeatherResponse.fromJson(Map<String, dynamic> json) =>
      _$WeatherResponseFromJson(json);
}
