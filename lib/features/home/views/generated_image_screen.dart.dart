import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:imaginify/core/theme/app_palette.dart';
import 'package:imaginify/features/auth/widgets/custom_button.dart';
import 'package:imaginify/features/home/views/home_screen.dart';

class GeneratedImageScreen extends StatelessWidget {
  static const routeName = '/generatedImageScreen';
  final String prompt;
  const GeneratedImageScreen({super.key, required this.prompt});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Align(
          alignment: const Alignment(2, 0),
          child: IconButton.filled(
            onPressed: () {
              context.pushReplacementNamed(HomeScreen.routeName);
            },
            icon: const Icon(Icons.arrow_back),
            style: IconButton.styleFrom(
                backgroundColor: AppPalette.secondary,
                foregroundColor: AppPalette.black),
          ),
        ),
        title: const Text(
          'Result Image',
          style: TextStyle(fontSize: 15),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
        ).copyWith(top: 15),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    'assets/images/i$prompt.png',
                  ),
                ),
                const SizedBox(height: 15),
                Container(
                  padding: const EdgeInsets.all(18),
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 26, 26, 26),
                      borderRadius: BorderRadius.circular(10)),
                  child: Text(
                    prompt,
                    style: const TextStyle(
                        fontSize: 12, color: AppPalette.secondary),
                  ),
                ),
                const SizedBox(height: 20),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                          child: CustomButton(
                        onPressed: () {},
                        buttonText: 'Re-generate',
                        backgroundColor: AppPalette.secondary,
                      )),
                      const SizedBox(
                        width: 20,
                      ),
                      Expanded(
                          child: CustomButton(
                        onPressed: () {},
                        buttonText: 'Download',
                        icon: const Icon(Icons.file_download_outlined),
                      ))
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
