import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_app/presentation/screens/home_screen.dart';
import 'package:weather_app/services/messaging_service.dart';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final messagingService = MessagingService();

  @override
  void initState() {
    super.initState();
    messagingService.init();
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // Must use GetMaterialApp
      title: 'Weather App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
