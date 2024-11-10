import 'package:arise/Theme/app_colors.dart';
import 'package:arise/screen/home_screen.dart';
import 'package:flutter/material.dart';
import '../screen/devotions_screens.dart';
import 'my_bottom_navbar.dart';
import '../screen/all_sermon_screen.dart';
import '../screen/favourites_screen.dart';
// import '../cmponets/my_tab_bar.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
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
    const AllSermonsScreen(),
    const DevotionsScreen(),
    const FavouritesScreen(),
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
