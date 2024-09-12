import 'package:flutter/material.dart';
import 'package:imaginify/core/theme/app_theme.dart';
import 'package:imaginify/routes/app_route_config.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: AppTheme.darkThemeMode,
      debugShowCheckedModeBanner: false,
      routerConfig: AppRouter().router,
    );
  }
}

