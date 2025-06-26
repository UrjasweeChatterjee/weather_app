import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:weather_app/network/dio_client.dart';
import 'package:weather_app/network/responses/weather_response.dart';
import 'package:weather_app/services/location_service.dart';

class WeatherController extends GetxController {
  final DioClient _dioClient = DioClient();
  var weatherData = <Map<String, dynamic>>[].obs;
  var currentWeather = <String, dynamic>{}.obs;
  var isLoading = false.obs;
  var isSelectionMode = false.obs;
  var selectedIndexes = <int>{}.obs;
  var searchQuery = ''.obs;
  var currentPosition = Position(
    longitude: 0,
    latitude: 0,
    timestamp: DateTime.now(),
    accuracy: 0,
    altitude: 0,
    altitudeAccuracy: 0,
    heading: 0,
    headingAccuracy: 0,
    speed: 0,
    speedAccuracy: 0,
  ).obs;

  @override
  void onInit() {
    super.onInit();
    fetchCurrentLocationWeather();
  }

  List<Map<String, dynamic>> get filteredWeatherData {
    if (searchQuery.isEmpty) return weatherData;
    return weatherData.where((data) {
      final location = data["location"]?.toString().toLowerCase() ?? '';
      return location.contains(searchQuery.value.toLowerCase());
    }).toList();
  }

  void updateSearchQuery(String value) {
    searchQuery.value = value;
  }

  Future<void> fetchCurrentLocationWeather() async {
    print("Fetching current location weather...");
    try {
      isLoading(true);
      print("Requesting current location...");
      final position = await LocationService.getCurrentLocation();
      currentPosition.value = position;
      print("Current Position: ${position.latitude}, ${position.longitude}");
      await fetchWeatherByCoordinates(position.latitude, position.longitude);
    } catch (e) {
      Get.snackbar("Location Error", "Using default location: ${e.toString()}");
      await fetchWeather("Kolkata"); // Fallback to default location
    } finally {
      isLoading(false);
    }
  }

  Future<void> fetchWeather(String city) async {
    try {
      isLoading(true);
      final response = await _dioClient.getWeather(city);
      updateWeatherData(response);
    } catch (e) {
      handleWeatherError(e, city);
    } finally {
      isLoading(false);
    }
  }

  Future<void> fetchWeatherByCoordinates(double lat, double lon) async {
    try {
      isLoading(true);
      final response = await _dioClient.getWeatherByCoordinates(lat, lon);
      print("my response: " + response.toString());
      updateWeatherData(response);
    } catch (e) {
      handleWeatherError(e, "Current Location");
    } finally {
      isLoading(false);
    }
  }

  void updateWeatherData(WeatherResponse response) {
    currentWeather.value = {
      "temperature": "${response.main.temp.round()}°C",
      "image": _getWeatherImage(response.weather.first.main),
      "high": "${response.main.tempMax.round()}°",
      "low": "${response.main.tempMin.round()}°",
      "location": response.name,
      "weather": response.weather.first.main,
    };

    if (!weatherData.any((data) => data["location"] == response.name)) {
      weatherData.add(currentWeather.value);
    }
  }

  void handleWeatherError(dynamic error, String locationName) {
    Get.snackbar("Error", "Failed to fetch weather data");
    currentWeather.value = {
      "temperature": "28°C",
      "image": "assets/images/Moon cloud fast wind.png",
      "high": "30°",
      "low": "23°",
      "location": locationName,
      "weather": "Partly Cloudy",
    };
  }

  String _getWeatherImage(String weatherCondition) {
    switch (weatherCondition.toLowerCase()) {
      case 'thunderstorm':
        return 'assets/images/Tornado.png';
      case 'drizzle':
      case 'rain':
        return 'assets/images/Moon cloud mid rain.png';
      case 'snow':
        return 'assets/images/Snowflake.png';
      case 'clear':
        return 'assets/images/Sun.png';
      case 'clouds':
        return 'assets/images/Moon cloud fast wind.png';
      default:
        return 'assets/images/Moon cloud fast wind.png';
    }
  }

  void toggleSelectionMode() => isSelectionMode.value = !isSelectionMode.value;

  void toggleSelection(int index) {
    if (selectedIndexes.contains(index)) {
      selectedIndexes.remove(index);
    } else {
      selectedIndexes.add(index);
    }
  }

  void deleteSelected() {
    final indexesToDelete = selectedIndexes.toList()
      ..sort((a, b) => b.compareTo(a));

    for (final index in indexesToDelete) {
      if (index >= 0 && index < weatherData.length) {
        weatherData.removeAt(index);
      }
    }

    selectedIndexes.clear();
    isSelectionMode.value = false;
  }

  Future<void> refreshWeather() async {
    if (currentPosition.value.latitude != 0 &&
        currentPosition.value.longitude != 0) {
      await fetchWeatherByCoordinates(
        currentPosition.value.latitude,
        currentPosition.value.longitude,
      );
    } else {
      await fetchCurrentLocationWeather();
    }
  }
}
