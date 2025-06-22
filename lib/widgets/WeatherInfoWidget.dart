import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/weather_controller.dart';

class WeatherInfoWidget extends StatelessWidget {
  final WeatherController controller = Get.put(WeatherController());

  WeatherInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      final data = controller.currentWeather;
      if (data.isEmpty) return const SizedBox();

      return Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              data["location"] ?? '',
              style: const TextStyle(fontSize: 26, color: Colors.white),
            ),
            Text(
              data["temperature"] ?? '',
              style: const TextStyle(fontSize: 64, color: Colors.white),
            ),
            Text(
              data["weather"] ?? '',
              style: const TextStyle(fontSize: 20, color: Colors.white54),
            ),
            Text(
              'H: ${data["high"]}  L: ${data["low"]}',
              style: const TextStyle(fontSize: 16, color: Colors.white),
            ),
          ],
        ),
      );
    });
  }
}
