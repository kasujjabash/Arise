import 'package:arise/Theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomNavBar extends StatelessWidget {
  Function(int)? onTabChange;
  BottomNavBar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          // borderRadius: BorderRadius.circular(40),
          color: AppColors.secondaryColor),
      child: GNav(
        activeColor: AppColors.background,
        onTabChange: onTabChange,
        color: AppColors.accentColor,
        textStyle: const TextStyle(fontSize: 18),
        iconSize: 24,
        gap: 10,
        tabs: const [
          GButton(
            icon: FontAwesomeIcons.houseChimney,
            text: 'Home',
          ),
          GButton(
            icon: FontAwesomeIcons.podcast,
            text: 'Sermons',
          ),
          GButton(
            icon: FontAwesomeIcons.bookBible,
            text: 'Devotions',
          ),
          GButton(
            icon: FontAwesomeIcons.handHoldingHeart,
            text: 'Giving',
          ),
        ],
      ),
    );
  }
}
