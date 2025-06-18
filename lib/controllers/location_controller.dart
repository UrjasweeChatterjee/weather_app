import 'package:get/get.dart';

class LocationController extends GetxController {
  var locations = <String>[].obs;

  void addLocation(String location) {
    if (location.trim().isNotEmpty) {
      locations.add(location);
      print("Location Added: $location");
    }
  }
}
