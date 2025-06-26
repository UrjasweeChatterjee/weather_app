import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_app/app.dart';
import 'package:weather_app/controllers/weather_controller.dart';

void main() {
  // Initialize controllers before running app
  Get.put(WeatherController());

  runApp(const MyApp());
}
