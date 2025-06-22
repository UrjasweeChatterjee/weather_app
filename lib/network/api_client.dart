import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:weather_app/network/responses/weather_response.dart';

part 'api_client.g.dart';

@RestApi(baseUrl: "https://api.openweathermap.org/data/2.5/")
abstract class ApiClient {
  factory ApiClient(Dio dio, {String baseUrl}) = _ApiClient;

  @GET("weather")
  Future<WeatherResponse> getWeather(
    @Query("q") String city,
    @Query("units") String units,
    @Query("appid") String apiKey,
  );
}
