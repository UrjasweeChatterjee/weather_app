import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controllers/weather_controller.dart';
import '../../widgets/weather_card.dart';

class LocationListScreenBody extends StatelessWidget {
  LocationListScreenBody({super.key});

  final WeatherController controller = Get.put(WeatherController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Weather", style: TextStyle(color: Colors.white)),
        backgroundColor: const Color(0xFF45278B),
        iconTheme: const IconThemeData(color: Colors.white),
        actions: [
          IconButton(
            icon: const Icon(Icons.more_vert),
            onPressed: controller.toggleSelectionMode,
          ),
        ],
        elevation: 0,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF2E335A), Color(0xFF1C1B33)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          children: [
            // 🔍 Search Bar
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: SizedBox(
                height: 50, // 👈 Change this to control the field's height
                child: TextField(
                  onChanged: controller.updateSearchQuery,
                  style: const TextStyle(color: Colors.white, fontSize: 16),
                  decoration: InputDecoration(
                    hintText: "Search location...",
                    hintStyle: const TextStyle(color: Colors.white70),
                    prefixIcon: const Icon(Icons.search, color: Colors.white70),
                    filled: true,
                    fillColor: Colors.white10,
                    contentPadding: const EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 16,
                    ), // 👈 Adjust text spacing
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: const BorderSide(
                        color: Colors.white38,
                        width: 1.2,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: const BorderSide(
                        color: Colors.white,
                        width: 1.5,
                      ),
                    ),
                  ),
                ),
              ),
            ),

            // 🧾 Weather List + Delete Button (inside Stack)
            Expanded(
              child: Stack(
                children: [
                  // Only ListView wrapped in Obx
                  Obx(
                    () => ListView.builder(
                      itemCount: controller.filteredWeatherData.length,
                      itemBuilder: (context, index) {
                        final data = controller.filteredWeatherData[index];
                        final realIndex = controller.weatherData.indexOf(data);

                        return Obx(
                          () => GestureDetector(
                            onTap: () {
                              if (controller.isSelectionMode.value) {
                                controller.toggleSelection(realIndex);
                              }
                            },
                            child: WeatherCard(
                              temperature: data["temperature"]!,
                              imagePath: data["image"]!,
                              high: data["high"]!,
                              low: data["low"]!,
                              location: data["location"]!,
                              weather: data["weather"]!,
                              isSelected: controller.selectedIndexes.contains(
                                realIndex,
                              ),
                              showSelection: controller.isSelectionMode.value,
                            ),
                          ),
                        );
                      },
                    ),
                  ),

                  // Only Delete Button wrapped in Obx
                  Obx(
                    () => controller.isSelectionMode.value
                        ? Positioned(
                            bottom: 16,
                            left: 16,
                            right: 16,
                            child: ElevatedButton.icon(
                              onPressed: controller.selectedIndexes.isEmpty
                                  ? null
                                  : controller.deleteSelected,
                              icon: const Icon(Icons.delete),
                              label: const Text("Delete Selected"),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.redAccent,
                                foregroundColor: Colors.white,
                                padding: const EdgeInsets.symmetric(
                                  vertical: 12,
                                ),
                              ),
                            ),
                          )
                        : const SizedBox.shrink(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
