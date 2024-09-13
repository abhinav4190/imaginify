import 'package:flutter/material.dart';
import 'package:imaginify/core/theme/app_palette.dart';

class ImageCard extends StatelessWidget {
  final int imageIndex;
  const ImageCard({super.key, required this.imageIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(40),
              child: Image.asset(
                'assets/images/i$imageIndex.png',
              ),
            ),
            Positioned(
              right: 0,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: IconButton.filled(
                  onPressed: () {},
                  icon: const Icon(Icons.bookmark_border_rounded),
                  style: IconButton.styleFrom(
                      backgroundColor: AppPalette.black.withOpacity(0.3),
                      foregroundColor: AppPalette.secondary),
                ),
              ),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 15, left: 5),
          child: Row(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('assets/images/i$imageIndex.png'),
                radius: 15,
              ),
              const SizedBox(
                width: 8,
              ),
              const Text(
                'Alex Smith',
                style: TextStyle(
                  fontSize: 12,
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}