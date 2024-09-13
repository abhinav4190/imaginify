import 'package:flutter/material.dart';

class AppPalette {
  static const Color background = Color.fromRGBO(35, 35, 35, 1);
  static const Color primary = Color.fromRGBO(201, 237, 0, 1);
  static const Color secondary = Color.fromRGBO(254, 254, 255, 1);
  static const Color black = Colors.black;
  static const Color textColor = Color.fromRGBO(115, 115, 115, 1);
  static final onboardingGradient = LinearGradient(
    colors: [
      Colors.transparent,
      AppPalette.background.withOpacity(0.40),
      AppPalette.background.withOpacity(0.75),
      AppPalette.background.withOpacity(0.95),
      AppPalette.background
    ],
    stops: const [0.0, 0.2, 0.3, 0.4, 0.5],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );
  static const bottomNavigationGradient = LinearGradient(colors: [
    Color.fromRGBO(148, 142, 138, 1),
    Color.fromRGBO(170, 181, 195, 1)
  ]);
}
