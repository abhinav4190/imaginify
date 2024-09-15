import 'package:go_router/go_router.dart';
import 'package:imaginify/core/shared/services/get_current_user.dart';
import 'package:imaginify/core/shared/services/supabase_service.dart';
import 'package:imaginify/core/shared/views/error_screen.dart';
import 'package:imaginify/features/auth/views/auth_screen.dart';
import 'package:imaginify/features/auth/views/onboarding_screen.dart';
import 'package:imaginify/features/home/views/home_screen.dart';
import 'package:imaginify/features/home/views/generated_image_screen.dart.dart';

class AppRouter {
  final _supabaseService = SupabaseService();
  GoRouter get router => GoRouter(
          initialLocation: GetCurrentUser(_supabaseService).currentUser != null
              ? HomeScreen.routeName
              : OnboardingScreen.routeName,
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
            GoRoute(
              path: HomeScreen.routeName,
              name: HomeScreen.routeName,
              builder: (context, state) {
                return const HomeScreen();
              },
            ),
            GoRoute(
              path: '${GeneratedImageScreen.routeName}/:prompt',
              name: GeneratedImageScreen.routeName,
              builder: (context, state) {
                final prompt = state.pathParameters['prompt'];
                return GeneratedImageScreen(
                  prompt: prompt!,
                );
              },
            ),
            GoRoute(
              path: ErrorScreen.routeName,
              name: ErrorScreen.routeName,
              builder: (context, state) => ErrorScreen(),
            ),
          ]);
}
