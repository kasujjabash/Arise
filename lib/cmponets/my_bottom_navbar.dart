import 'package:arise/Theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNavBar extends StatelessWidget {
  Function(int)? onTabChange;
  BottomNavBar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            color: AppColors.secondaryColor),
        child: GNav(
          activeColor: AppColors.background,
          onTabChange: onTabChange,
          color: AppColors.accentColor,
          iconSize: 25,
          gap: 10,
          tabs: const [
            GButton(
              icon: Icons.home_outlined,
              text: 'Home',
            ),
            GButton(
              icon: Icons.podcasts,
              text: 'Sermony',
            ),
            GButton(
              icon: Icons.podcasts,
              text: 'Devotions',
            ),
          ],
        ),
      ),
    );
  }
}
