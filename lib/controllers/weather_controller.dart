import 'package:get/get.dart';

class WeatherController extends GetxController {
  var weatherData = <Map<String, String>>[
    {
      "temperature": "28°C",
      "image": "assets/images/Moon cloud fast wind.png",
      "high": "30°",
      "low": "23°",
      "location": "Delhi",
      "weather": "Partly Cloudy",
    },
    {
      "temperature": "31°C",
      "image": "assets/images/Tornado.png",
      "high": "33°",
      "low": "26°",
      "location": "Mumbai",
      "weather": "Thunderstorm",
    },
    {
      "temperature": "22°C",
      "image": "assets/images/Moon cloud fast wind.png",
      "high": "24°",
      "low": "18°",
      "location": "Shimla",
      "weather": "Fast Wind",
    },
    {
      "temperature": "26°C",
      "image": "assets/images/Moon cloud mid rain.png",
      "high": "29°",
      "low": "21°",
      "location": "Chennai",
      "weather": "Mid Rain",
    },
  ].obs;

  var isSelectionMode = false.obs;
  var selectedIndexes = <int>{}.obs;
  var searchQuery = ''.obs;

  void toggleSelectionMode() => isSelectionMode.value = !isSelectionMode.value;

  void toggleSelection(int index) {
    if (selectedIndexes.contains(index)) {
      selectedIndexes.remove(index);
    } else {
      selectedIndexes.add(index);
    }
  }

  void deleteSelected() {
    selectedIndexes.toList()
      ..sort((b, a) => a.compareTo(b)) // reverse sort to avoid index shifting
      ..forEach((index) => weatherData.removeAt(index));
    selectedIndexes.clear();
    isSelectionMode.value = false;
  }

  List<Map<String, String>> get filteredWeatherData {
    if (searchQuery.isEmpty) return weatherData;
    return weatherData
        .where(
          (data) => data["location"]!.toLowerCase().contains(
            searchQuery.value.toLowerCase(),
          ),
        )
        .toList();
  }

  void updateSearchQuery(String value) {
    searchQuery.value = value;
  }
}
