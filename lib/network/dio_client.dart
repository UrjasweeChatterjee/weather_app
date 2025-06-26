import 'package:dio/dio.dart';
import 'package:weather_app/network/api_client.dart';
import 'package:weather_app/network/responses/weather_response.dart';

class DioClient {
  static const String _apiKey = "fa779d1963c28d048c757d78bfafc598";
  static const String _baseUrl = "https://api.openweathermap.org/data/2.5/";

  final Dio _dio = Dio(BaseOptions(
    baseUrl: _baseUrl,
    connectTimeout: const Duration(seconds: 5),
    receiveTimeout: const Duration(seconds: 3),
  ));

  ApiClient get apiClient => ApiClient(_dio, baseUrl: _baseUrl);

  Future<WeatherResponse> getWeather(String city) async {
    try {
      return await apiClient.getWeather(city, "metric", _apiKey);
    } catch (e) {
      throw Exception("Failed to fetch weather: $e");
    }
  }

  Future<WeatherResponse> getWeatherByCoordinates(
      double lat, double lon) async {
    try {
      return await apiClient.getWeatherByCoordinates(
          lat, lon, "metric", _apiKey);
    } catch (e) {
      throw Exception("Failed to fetch weather by coordinates: $e");
    }
  }
}
