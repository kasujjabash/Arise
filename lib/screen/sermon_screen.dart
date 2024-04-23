import 'package:arise/Theme/app_colors.dart';
import 'package:flutter/material.dart';

class SermonsScreen extends StatelessWidget {
  const SermonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        foregroundColor: AppColors.accentColor,
        backgroundColor: AppColors.background,
        title: const Text('Sermon screen'),
      ),
    );
  }
}
