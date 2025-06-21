import 'package:flutter/material.dart';

class WeatherCard extends StatelessWidget {
  final String temperature;
  final String imagePath;
  final String high;
  final String low;
  final String location;
  final String weather;
  final bool isSelected;
  final bool showSelection;

  const WeatherCard({
    super.key,
    required this.temperature,
    required this.imagePath,
    required this.high,
    required this.low,
    required this.location,
    required this.weather,
    this.isSelected = false,
    this.showSelection = false,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 167,
          margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 16),
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            image: const DecorationImage(
              image: AssetImage('assets/images/Rectangle 1.png'),
              fit: BoxFit.cover,
            ),
            border: isSelected
                ? Border.all(color: Colors.redAccent, width: 2)
                : null,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                temperature,
                style: const TextStyle(fontSize: 46, color: Colors.white),
              ),
              Text(
                "H: $high  L: $low",
                style: const TextStyle(color: Colors.white70, fontSize: 13),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    location,
                    style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                  Text(
                    weather,
                    style: const TextStyle(fontSize: 13, color: Colors.white),
                  ),
                ],
              ),
            ],
          ),
        ),

        // Weather Image - larger and floating
        Positioned(
          top: 0,
          right: 24,
          child: Image.asset(
            imagePath,
            height: 120,
            width: 120,
            fit: BoxFit.cover,
          ),
        ),

        // Selection Icon
        if (showSelection)
          Positioned(
            top: 8,
            right: 16,
            child: Icon(
              isSelected ? Icons.check_circle : Icons.radio_button_unchecked,
              color: isSelected ? Colors.redAccent : Colors.white70,
              size: 25,
            ),
          ),
      ],
    );
  }
}
