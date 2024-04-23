import 'package:arise/Theme/app_colors.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.background,
        leading: const Icon(
          Icons.person,
          size: 30,
          color: AppColors.accentColor,
        ),
      ),
    );
  }
}
