import 'package:flutter/material.dart';
import 'package:imaginify/core/theme/app_palette.dart';

class SocialButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String buttonText;
  final Image icon;
  const SocialButton(
      {super.key,
      required this.onPressed,
      required this.buttonText,
      required this.icon});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        iconAlignment: IconAlignment.start,
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
            minimumSize: const Size(double.infinity, 60),
            foregroundColor: AppPalette.secondary,
            side: const BorderSide(color: AppPalette.secondary)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            icon,
            const SizedBox(
              width: 20,
            ),
            Text(
              buttonText,
              style: const TextStyle(fontSize: 14),
            ),
          ],
        ));
  }
}