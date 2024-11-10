import 'package:arise/Theme/app_colors.dart';
import 'package:arise/providers/devotion_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../cmponets/app_tiles/devotion_tile.dart';
import 'devotion_details.dart';

class DevotionsScreen extends StatelessWidget {
  const DevotionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.background,
        foregroundColor: AppColors.accentColor,
        title: const Text('Devotions'),
      ),
      body: Consumer<DevotionProvider>(
        builder: (context, value, child) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
            child: Column(
              children: [
                Expanded(
                  // Expanded allows the ListView to take only the remaining space
                  child: ListView.builder(
                    itemCount: value.devotions.length,
                    itemBuilder: (context, index) {
                      final devotion = value.devotions[index];
                      return DevotionTile(
                        onTap: () => Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => DevotionDetails(
                              devotionModule: devotion,
                            ),
                          ),
                        ),
                        devotionModule: devotion,
                      );
                    },
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
