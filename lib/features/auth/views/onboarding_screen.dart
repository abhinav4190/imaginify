import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:imaginify/core/theme/app_palette.dart';
import 'package:imaginify/features/auth/views/auth_screen.dart';
import 'package:imaginify/features/auth/widgets/custom_button.dart';


class OnboardingScreen extends StatelessWidget {
  static const routeName = '/';
  const OnboardingScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/background.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: SafeArea(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    'assets/images/logo_transparent.png',
                    width: 70,
                  ),
                  Text(
                    'Imaginify',
                    style: Theme.of(context).textTheme.titleMedium,
                  )
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 350,
              width: double.infinity,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
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
              )),
              child: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text('Generate\nanything what\'s in\nyour mind now',
                          style: Theme.of(context).textTheme.titleLarge,
                          textAlign: TextAlign.center),
                      const SizedBox(
                        height: 15,
                      ),
                      const Text(
                        'An Al that developed to help you generate\n what\'s in your mind into beautiful visual',
                        style: TextStyle(
                            color: AppPalette.textColor, fontSize: 10),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      CustomButton(
                        onPressed: () {
                          context.pushReplacementNamed(AuthScreen.routeName);
                        },
                        buttonText: 'Let\'s go!',
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
