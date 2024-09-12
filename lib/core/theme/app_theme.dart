import 'package:flutter/material.dart';
import 'package:imaginify/core/theme/app_palette.dart';

class AppTheme {
  static final darkThemeMode = ThemeData(
      fontFamily: 'ARPDisplay',
      scaffoldBackgroundColor: AppPalette.background,
      colorScheme: const ColorScheme.dark(),
      textTheme: const TextTheme(
        titleMedium: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        titleLarge: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w900,
            letterSpacing: 5),
      ));
}
