import 'package:flutter/material.dart';
import 'package:imaginify/core/theme/app_palette.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String buttonText;
  final Color backgroundColor;
  final Widget? icon;
  const CustomButton(
      {super.key,
      required this.onPressed,
      required this.buttonText,
      this.backgroundColor = AppPalette.primary,
      this.icon});

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        minimumSize: const Size(double.infinity, 50),
        backgroundColor: backgroundColor,
        foregroundColor: AppPalette.black,
      ),
      icon: icon,
      label: Text(
        buttonText,
        style: const TextStyle(fontSize: 12),
      ),
    );
  }
}