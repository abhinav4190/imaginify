import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:imaginify/core/shared/services/supabase_service.dart';
import 'package:imaginify/core/theme/app_theme.dart';
import 'package:imaginify/routes/app_route_config.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final supabaseService = SupabaseService();
  await supabaseService.initialize();
  
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: AppTheme.darkThemeMode,
      debugShowCheckedModeBanner: false,
      routerConfig: AppRouter().router,
    );
  }
}
