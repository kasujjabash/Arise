import 'package:arise/Theme/app_colors.dart';
import 'package:flutter/material.dart';

import '../cmponets/app_tiles/devotion_tile.dart';
import 'devotion_detail.dart';

class DevotionsScreen extends StatelessWidget {
  const DevotionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
          backgroundColor: AppColors.background,
          foregroundColor: AppColors.accentColor,
          title: const Text('Devotions')),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
          child: Column(
            children: [
              //TODO To implement devotion tile in the list view

              //Devotion tile
              DevotionTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (contextt) => const DevotionDetails(),
                    ),
                  );
                },
              ),
              //Devotion tile
              DevotionTile(
                onTap: () {
                  //TODO To implement devotion details
                },
              ),
              //Devotion tile
              DevotionTile(
                onTap: () {
                  //TODO To implement devotion details
                },
              ),
              //Devotion tile
              DevotionTile(
                onTap: () {
                  //TODO To implement devotion details
                },
              ),
              //Devotion tile
              DevotionTile(
                onTap: () {
                  //TODO To implement devotion details
                },
              ),
              //Devotion tile
              DevotionTile(
                onTap: () {
                  //TODO To implement devotion details
                },
              ),
              //Devotion tile
              DevotionTile(
                onTap: () {
                  //TODO To implement devotion details
                },
              ),
              //Devotion tile
              DevotionTile(
                onTap: () {
                  //TODO To implement devotion details
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
