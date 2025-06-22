import 'package:get/get.dart';
import 'package:weather_app/network/dio_client.dart';

class WeatherController extends GetxController {
  final DioClient _dioClient = DioClient();
  var weatherData = <Map<String, dynamic>>[].obs; // Changed to dynamic
  var currentWeather = <String, dynamic>{}.obs;
  var isLoading = false.obs;
  var isSelectionMode = false.obs;
  var selectedIndexes = <int>{}.obs;
  var searchQuery = ''.obs;

  @override
  void onInit() {
    super.onInit();
    fetchDefaultWeather();
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

  Future<void> fetchDefaultWeather() async {
    await fetchWeather("Kolkata");
  }

  Future<void> fetchWeather(String city) async {
    try {
      isLoading(true);
      final response = await _dioClient.getWeather(city);

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
    } catch (e) {
      Get.snackbar("Error", "Failed to fetch weather data");
      currentWeather.value = {
        "temperature": "28°C",
        "image": "assets/images/Moon cloud fast wind.png",
        "high": "30°",
        "low": "23°",
        "location": city,
        "weather": "Partly Cloudy",
      };
    } finally {
      isLoading(false);
    }
  }

  String _getWeatherImage(String weatherCondition) {
    switch (weatherCondition.toLowerCase()) {
      case 'thunderstorm':
        return 'assets/images/Tornado.png';
      case 'rain':
        return 'assets/images/Moon cloud mid rain.png';
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
    // Create a copy of selected indexes and sort in descending order
    final indexesToDelete = selectedIndexes.toList()
      ..sort((a, b) => b.compareTo(a));

    // Remove items from weatherData
    for (final index in indexesToDelete) {
      if (index >= 0 && index < weatherData.length) {
        weatherData.removeAt(index);
      }
    }

    // Clear selection
    selectedIndexes.clear();
    isSelectionMode.value = false;
  }
}
