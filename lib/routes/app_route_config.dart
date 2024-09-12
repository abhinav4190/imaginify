import 'package:go_router/go_router.dart';
import 'package:imaginify/features/auth/views/auth_screen.dart';
import 'package:imaginify/features/auth/views/onboarding_screen.dart';

class AppRouter{
  GoRouter get router => GoRouter(
    routes: [
       GoRoute(
      path: OnboardingScreen.routeName,
      name: OnboardingScreen.routeName,
      builder: (context, state) => const OnboardingScreen(),
    ),
      GoRoute(
      path: AuthScreen.routeName,
      name: AuthScreen.routeName,
      builder: (context, state) => const AuthScreen(),
    ),
    ]
  );
}