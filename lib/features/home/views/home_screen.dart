import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:imaginify/core/theme/app_palette.dart';
import 'package:imaginify/features/home/widgets/prompt_model.dart';
import 'package:imaginify/features/home/widgets/image_card.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/home';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: false,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset(
                    'assets/images/logo_transparent.png',
                    width: 70,
                  ),
                  const Text(
                    'Imaginify',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              IconButton.filled(
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    barrierColor: AppPalette.black.withOpacity(0.5),
                    builder: (BuildContext context) {
                      return PromptModel();
                    },
                  );
                },
                icon: const Icon(Icons.add),
                style: IconButton.styleFrom(
                    backgroundColor: AppPalette.primary,
                    foregroundColor: AppPalette.black),
              )
            ],
          ),
        ),
        body: Stack(
          children: [
            Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10).copyWith(top: 20),
              child: MasonryGridView.builder(
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 20,
                  gridDelegate:
                      const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2),
                  itemCount: 6,
                  itemBuilder: (_, int index) {
                    return ImageCard(imageIndex: index);
                  }),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: SafeArea(
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 40),
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    gradient: AppPalette.bottomNavigationGradient,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: const GNav(
                      duration: Duration(milliseconds: 300),
                      mainAxisAlignment: MainAxisAlignment.center,
                      gap: 10,
                      activeColor: AppPalette.black,
                      tabBackgroundColor: AppPalette.primary,
                      iconSize: 30,
                      padding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                      tabs: [
                        GButton(
                          icon: Icons.home_outlined,
                          text: 'Discover',
                        ),
                        GButton(
                          icon: Icons.bookmark_border_rounded,
                          text: 'Saved',
                        ),
                        GButton(
                          icon: CommunityMaterialIcons.account_outline,
                          text: 'Account',
                        )
                      ]),
                ),
              ),
            )
          ],
        ));
  }
}