import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_app/controllers/weather_controller.dart';
import 'package:weather_app/presentation/screens/add_screen.dart';
import 'package:weather_app/presentation/screens/location_list_screen.dart';
import 'package:weather_app/widgets/ForecastSwitcher.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({super.key});

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  final WeatherController _weatherController = Get.find<WeatherController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/images/Image.jpg',
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
              alignment: Alignment.center,
            ),
          ),
          Positioned(
            top: 50,
            left: 0,
            right: 0,
            child: Center(child: _buildWeatherInfoWidget()),
          ),
          Positioned(
            top: 250,
            left: 0,
            right: 0,
            child: Image.asset(
              'assets/images/House 4 3.png',
              fit: BoxFit.cover,
              alignment: Alignment.center,
            ),
          ),
          // Center(child: _buildDraggableForecastSwitcher()),
          Center(child: DraggableForecastSwitcherSheet()),
        ],
      ),
      bottomNavigationBar: _buildBottomNavBar(),
    );
  }

  Widget _buildWeatherInfoWidget() {
    return Obx(() {
      final data = _weatherController.currentWeather;
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

  Widget _buildDraggableForecastSwitcher() {
    return DraggableScrollableSheet(
      initialChildSize: 0.41,
      minChildSize: 0.41,
      maxChildSize: 1.0,
      builder: (context, scrollController) {
        return Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    const Color(0xFF2E335A).withOpacity(.9),
                    const Color(0xFF1C1B33).withOpacity(.9),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(24),
                  topRight: Radius.circular(24),
                ),
              ),
              child: MediaQuery.removePadding(
                context: context,
                removeTop: true,
                child: _buildForecastContent(scrollController),
              ),
            ),
          ],
        );
      },
    );
  }

  Widget _buildForecastContent(ScrollController scrollController) {
    return ListView(
      controller: scrollController,
      padding: const EdgeInsets.only(left: 16, right: 16, bottom: 12),
      children: [
        // Forecast content implementation here
        // (You can add your hourly/weekly forecast widgets)
        const SizedBox(height: 200), // Placeholder
      ],
    );
  }

  Widget _buildBottomNavBar() {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          height: 82,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/Rectangle 364.png"),
              fit: BoxFit.contain,
            ),
          ),
        ),
        Container(
          height: 75,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/Subtract.png"),
              fit: BoxFit.contain,
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          height: 73,
          color: Colors.transparent,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () async {
                  try {
                    await _weatherController.fetchCurrentLocationWeather();
                    Get.snackbar(
                      "Location Updated",
                      "Weather data refreshed",
                      snackPosition: SnackPosition.BOTTOM,
                      backgroundColor: Colors.green,
                      colorText: Colors.white,
                      duration: const Duration(seconds: 2),
                    );
                  } catch (e) {
                    Get.snackbar(
                      "Error",
                      "Failed to update location: ${e.toString()}",
                      snackPosition: SnackPosition.BOTTOM,
                      backgroundColor: Colors.red,
                      colorText: Colors.white,
                    );
                  }
                },
                icon: const Icon(Icons.my_location),
                iconSize: 25,
                color: Colors.white,
              ),
              _buildCenterFab(),
              IconButton(
                onPressed: () {
                  Get.to(() => const LocationListScreen());
                },
                icon: const Icon(Icons.menu),
                iconSize: 25,
                color: Colors.white,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildCenterFab() {
    return SizedBox(
      width: 48,
      height: 48,
      child: Container(
        padding: const EdgeInsets.all(3),
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(
            colors: [Color(0xFF000000), Color(0xC2FFFFFF)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          boxShadow: [
            BoxShadow(
              color: Color(0xFF7582F4),
              blurRadius: 6,
              spreadRadius: 2,
              offset: Offset(0, -6),
            ),
            BoxShadow(
              color: Color(0xFF3E3F74),
              blurRadius: 4,
              spreadRadius: 4,
              offset: Offset(0, 4),
            ),
            BoxShadow(
              color: Color(0xFF262C51),
              blurRadius: 2,
              spreadRadius: 4,
              offset: Offset(0, 6),
            ),
          ],
        ),
        child: FloatingActionButton(
          onPressed: () {
            Get.to(() => const AddScreen());
          },
          backgroundColor: Colors.white,
          shape: const CircleBorder(),
          elevation: 4,
          child: const Icon(
            Icons.add,
            color: Color(0xFF48319D),
            size: 32,
          ),
        ),
      ),
    );
  }
}
