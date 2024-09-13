import 'package:flutter/material.dart';
import 'package:imaginify/core/theme/app_palette.dart';

class AppTheme {
  static final darkThemeMode = ThemeData(
      fontFamily: 'ARPDisplay',
      scaffoldBackgroundColor: AppPalette.background,
      appBarTheme: const AppBarTheme(backgroundColor: AppPalette.background, scrolledUnderElevation: 0),
      colorScheme: const ColorScheme.dark(),
  );
}
