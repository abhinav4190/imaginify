import 'package:flutter/material.dart';
import 'package:imaginify/core/theme/app_palette.dart';
import 'package:imaginify/features/auth/widgets/social_button.dart';

class AuthScreen extends StatelessWidget {
  static const routeName = '/auth';
  const AuthScreen({super.key});
  final double socialIconSize = 33;
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppPalette.primary,
      body: Column(
        children: [
          SizedBox(
            height: screenSize.height * 0.3,
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: SafeArea(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Hi, Welcome to\nImaginify',
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w900,
                          color: AppPalette.black),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Create stunning AI-generated images with ease.',
                      style:
                          TextStyle(color: AppPalette.textColor, fontSize: 12),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: AppPalette.background),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Sign in to get started:',
                        style: TextStyle(fontSize: 20),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      SocialButton(
                          onPressed: () {},
                          icon: Image.asset(
                            'assets/images/google_icon.png',
                            width: socialIconSize,
                          ),
                          buttonText: 'Continue with Google'),
                      const SizedBox(
                        height: 20,
                      ),
                      SocialButton(
                          onPressed: () {},
                          icon: Image.asset(
                            'assets/images/facebook_icon.png',
                            width: socialIconSize,
                          ),
                          buttonText: 'Continue with Facebook'),
                      const SizedBox(
                        height: 20,
                      ),
                      SocialButton(
                          onPressed: () {},
                          icon: Image.asset(
                            'assets/images/apple_icon.png',
                            width: socialIconSize,
                          ),
                          buttonText: 'Continue with Apple'),
                      const SizedBox(
                        height: 20,
                      ),
                      SocialButton(
                          onPressed: () {},
                          icon: Image.asset(
                            'assets/images/linkedin_icon.png',
                            width: socialIconSize,
                          ),
                          buttonText: 'Continue with LinkedIn'),
                      const SizedBox(
                        height: 20,
                      ),
                      SocialButton(
                          onPressed: () {},
                          icon: Image.asset(
                            'assets/images/figma_icon.png',
                            width: socialIconSize,
                          ),
                          buttonText: 'Continue with Figma'),
                      const SizedBox(
                        height: 20,
                      ),
                      SocialButton(
                          onPressed: () {},
                          icon: Image.asset(
                            'assets/images/github_icon.png',
                            width: socialIconSize,
                          ),
                          buttonText: 'Continue with GitHub'),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}