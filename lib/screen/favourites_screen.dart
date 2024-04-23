import 'package:arise/Theme/app_colors.dart';
import 'package:flutter/material.dart';

class FavouritesScreen extends StatelessWidget {
  const FavouritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        foregroundColor: AppColors.accentColor,
        backgroundColor: AppColors.background,
        title: const Text('My Favourates'),
      ),
    );
  }
}
