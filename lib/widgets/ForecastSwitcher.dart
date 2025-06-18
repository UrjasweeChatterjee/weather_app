import 'package:flutter/material.dart';

class DraggableForecastSwitcherSheet extends StatefulWidget {
  const DraggableForecastSwitcherSheet({super.key});

  @override
  State<DraggableForecastSwitcherSheet> createState() =>
      _DraggableForecastSwitcherSheetState();
}

class _DraggableForecastSwitcherSheetState
    extends State<DraggableForecastSwitcherSheet> {
  bool isHourly = true;

  final List<Map<String, dynamic>> hourlyData = List.generate(
    12,
    (index) => {
      "time": index == 0 ? "Now" : "${index}AM",
      "icon": "assets/images/Moon cloud fast wind.png",
      "percentage": index % 3 == 0 ? null : "${20 + index * 5}%",
      "temp": "${20 + index}°",
    },
  );

  final List<Map<String, dynamic>> weeklyData = [
    {
      "day": "Today",
      "icon": "assets/images/Moon cloud fast wind.png",
      "percentage": "40%",
      "temp": "32°",
    },
    {
      "day": "Mon",
      "icon": "assets/images/Moon cloud mid rain.png",
      "percentage": null,
      "temp": "30°",
    },
    {
      "day": "Tue",
      "icon": "assets/images/Tornado.png",
      "percentage": "50%",
      "temp": "28°",
    },
    {
      "day": "Wed",
      "icon": "assets/images/Moon cloud fast wind.png",
      "percentage": "20%",
      "temp": "29°",
    },
    {
      "day": "Thu",
      "icon": "assets/images/Moon cloud fast wind.png",
      "percentage": null,
      "temp": "33°",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.41,
      minChildSize: 0.41,
      maxChildSize: .85,
      builder: (context, scrollController) {
        return Stack(
          children: [
            // Main container with rounded corners and gradient background
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
                child: _buildSheetContent(scrollController),
              ),
            ),
          ],
        );
      },
    );
  }

  Widget _buildSheetContent(ScrollController scrollController) {
    return ListView(
      controller: scrollController,
      padding: const EdgeInsets.only(left: 16, right: 16, bottom: 12),
      children: [
        // Drag handle
        Center(
          child: Container(
            width: 50,
            height: 5,
            margin: const EdgeInsets.only(top: 6, bottom: 6),
            decoration: BoxDecoration(
              color: Colors.black45,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),

        // Tabs
        Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildTab("Hourly Forecast", isHourly, () {
                  setState(() => isHourly = true);
                }),
                const SizedBox(width: 20),
                _buildTab("Weekly Forecast", !isHourly, () {
                  setState(() => isHourly = false);
                }),
              ],
            ),
            Container(height: 2, color: Colors.white24),
          ],
        ),

        const SizedBox(height: 16),

        // Forecast cards
        SizedBox(
          height: 151,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: isHourly ? hourlyData.length : weeklyData.length,
            itemBuilder: (context, index) {
              final data = isHourly ? hourlyData[index] : weeklyData[index];
              final isNowOrToday =
                  (isHourly ? data["time"] : data["day"]) == "Now" ||
                  (isHourly ? data["time"] : data["day"]) == "Today";

              return Container(
                margin: const EdgeInsets.all(8),
                padding: const EdgeInsets.symmetric(
                  vertical: 12,
                  horizontal: 10,
                ),
                decoration: BoxDecoration(
                  color: isNowOrToday
                      ? const Color(0xFF48319D)
                      : const Color(0xFF1F1D47),
                  border: isNowOrToday
                      ? Border.all(
                          color: const Color.fromARGB(255, 116, 74, 190),
                          width: .5,
                        )
                      : Border.all(
                          color: const Color.fromARGB(255, 57, 19, 122),
                          width: .5,
                        ),
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.4),
                      offset: const Offset(4, 6),
                      blurRadius: 6,
                    ),
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      offset: const Offset(2, 4),
                      blurRadius: 4,
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      isHourly ? data["time"] : data["day"],
                      style: const TextStyle(color: Colors.white),
                    ),
                    const SizedBox(height: 8),
                    Image.asset(data["icon"], height: 32, width: 32),
                    const SizedBox(height: 8),
                    if (data["percentage"] != null)
                      Text(
                        data["percentage"]!,
                        style: const TextStyle(
                          color: Colors.white70,
                          fontSize: 12,
                        ),
                      )
                    else
                      const SizedBox(height: 16),
                    const SizedBox(height: 4),
                    Text(
                      data["temp"],
                      style: const TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              );
            },
          ),
        ),

        const SizedBox(height: 20),
        const Text(
          'More info will appear when expanded...',
          style: TextStyle(color: Colors.white60),
        ),
        const SizedBox(height: 300), // Placeholder for expanded content
      ],
    );
  }

  Widget _buildTab(String title, bool isActive, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 14),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontWeight: isActive ? FontWeight.bold : FontWeight.normal,
                fontSize: 12,
              ),
            ),
            const SizedBox(height: 10),
            AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              height: 2,
              width: isActive ? 90 : 0,
              decoration: BoxDecoration(
                gradient: isActive
                    ? const LinearGradient(
                        colors: [
                          Colors.transparent,
                          Color(0xFF5946A0),
                          Color(0xFF9A75FF),
                          Color(0xFFEDEDED),
                          Color(0xFF9A75FF),
                          Color(0xFF5946A0),
                          Colors.transparent,
                        ],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                      )
                    : null,
                borderRadius: BorderRadius.circular(2),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
