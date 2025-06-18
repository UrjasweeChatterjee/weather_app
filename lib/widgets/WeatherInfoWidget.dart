import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/weather_controller.dart';

class WeatherInfoWidget extends StatelessWidget {
  final WeatherController controller = Get.put(WeatherController());

  WeatherInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final data = controller.weatherData[1];

    // Safely remove the last character from temperature if not null or too short
    final String displayTemp =
        (data['temperature'] != null && data['temperature']!.length > 1)
        ? data['temperature']!.substring(0, data['temperature']!.length - 1)
        : '';

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            data['location'] ?? '',
            style: const TextStyle(fontSize: 26, color: Colors.white),
          ),

          Text(
            displayTemp,
            style: const TextStyle(fontSize: 64, color: Colors.white),
          ),
          Text(
            data['weather'] ?? '',
            style: const TextStyle(fontSize: 20, color: Colors.white54),
          ),
          Text(
            'H: ${data['high']}  L: ${data['low']}',
            style: const TextStyle(fontSize: 16, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
