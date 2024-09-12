import 'package:flutter/material.dart';
import 'package:imaginify/core/theme/app_palette.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String buttonText;
  const CustomButton(
      {super.key, required this.onPressed, required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        minimumSize: const Size(double.infinity, 50),
        backgroundColor: AppPalette.primaryButton,
        foregroundColor: Colors.black,
      ),
      child: Text(
        buttonText,
        style: const TextStyle(fontSize: 12),
      ),
    );
  }
}
