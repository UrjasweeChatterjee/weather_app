import 'package:get/get.dart';
import 'package:weather_app/controllers/weather_controller.dart';

class LocationController extends GetxController {
  var locations = <String>[].obs;
  final WeatherController weatherController = Get.find();

  void addLocation(String location) {
    if (location.trim().isNotEmpty && !locations.contains(location)) {
      locations.add(location);
      weatherController.fetchWeather(location);
    }
  }
}
