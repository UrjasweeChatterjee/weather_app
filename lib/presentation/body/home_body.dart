import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_app/presentation/screens/add_screen.dart';
import 'package:weather_app/presentation/screens/location_list_screen.dart';

import '../../widgets/ForecastSwitcher.dart';
import '../../widgets/WeatherInfoWidget.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({super.key});

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
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
            child: Center(child: WeatherInfoWidget()),
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
          Center(child: DraggableForecastSwitcherSheet()),
          // Positioned(
          //   top: 425,
          //   left: 0,
          //   right: 0,
          //   child: Center(child: DraggableForecastSwitcherSheet()),
          // ),
        ],
      ),
      bottomNavigationBar: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            height: 73,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/Rectangle 364.png"),
                fit: BoxFit.contain,
              ),
            ),
          ),
          Container(
            height: 73,
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
                // Left Button: Location
                IconButton(
                  onPressed: () {
                    print('Location tapped');
                  },
                  icon: const Icon(Icons.location_on),
                  iconSize: 25,
                  color: Colors.white,
                ),

                // Center FAB
                SizedBox(
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
                        Get.to(AddScreen());
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
                ),

                // Right Button: Menu
                IconButton(
                  onPressed: () {
                    Get.to(LocationListScreen());
                  },
                  icon: const Icon(Icons.menu),
                  iconSize: 25,
                  color: Colors.white,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
