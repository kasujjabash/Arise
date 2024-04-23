import 'package:arise/Theme/app_colors.dart';
import 'package:arise/screen/home_screen.dart';
import 'package:flutter/material.dart';

import '../cmponets/my_bottom_navbar.dart';
import '../screen/sermon_screen.dart';
import '../screen/favourites_screen.dart';
import '../screen/profile_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //track the selected index
  int _isSelectedIndex = 0;
  //update the ui
  void navigationBottomBar(int index) {
    setState(() {
      _isSelectedIndex = index;
    });
  }

  //List of pages to navigate
  final List screens = [
    const HomeScreen(),
    const SermonsScreen(),
    const FavouritesScreen(),
    // const ProfileScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      bottomNavigationBar: BottomNavBar(
        onTabChange: (index) => navigationBottomBar(index),
      ),
      body: screens[_isSelectedIndex],
    );
  }
}
