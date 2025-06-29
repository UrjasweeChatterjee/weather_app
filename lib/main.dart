import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_app/app.dart';
import 'package:weather_app/controllers/weather_controller.dart';

void main() async {
  // Initialize controllers before running app
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  Get.put(WeatherController());

  runApp(MyApp());
}
