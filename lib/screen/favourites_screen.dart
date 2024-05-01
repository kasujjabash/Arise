import 'package:arise/Theme/app_colors.dart';
import 'package:arise/models/sermon_provider.dart'; // Import the SermonProvider
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/sermon_model.dart';
import '../pages/sermon_page.dart';

class FavouritesScreen extends StatelessWidget {
  const FavouritesScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        foregroundColor: AppColors.accentColor,
        backgroundColor: AppColors.background,
        title: const Text('My Favourites'),
      ),
      body: Consumer<SermonProvider>(
        builder: (context, value, child) {
          // Get the list of favorite sermons from SermonProvider
          List<Sermon> favoriteSermons = value.favouratesSermon;

          // Check if there are any favorite sermons
          if (favoriteSermons.isEmpty) {
            // Display a message if there are no favorite sermons
            return const Center(
              child: Text(
                'No favorite sermons yet!',
                style: TextStyle(color: AppColors.secondaryColor),
              ),
            );
          } else {
            // Display the list of favorite sermons
            return ListView.builder(
              itemCount: favoriteSermons.length,
              itemBuilder: (context, index) {
                // Get the current sermon
                Sermon sermon = favoriteSermons[index];
                // Display the sermon information
                return GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SermonPage(),
                    ),
                  ),
                  child: ListTile(
                    title: Text(sermon.title),
                    subtitle: Text(sermon.description),
                    
                  ),
                );
              },
            );
          }
        },
      ),
    );
  }
}
