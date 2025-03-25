import 'package:arise/Theme/app_colors.dart';
import 'package:arise/providers/sermon_provider.dart'; // Import the SermonProvider
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/sermon_module.dart';
import 'sermon_screen.dart';

class FavouritesScreen extends StatelessWidget {
  const FavouritesScreen({super.key,});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        centerTitle: true,
        foregroundColor: AppColors.accentColor,
        backgroundColor: AppColors.background,
        title: const Text('My Favourites'),
      ),
      body: Consumer<SermonProvider>(
        builder: (context, value, child) {
          // Get the list of favorite sermons from SermonProvider
          List<Sermon> favoritesSermons = value.favouratesSermon;

          // Check if there are any favorite sermons
          if (favoritesSermons.isEmpty) {
            // Display a message if there are no favorite sermons
            return const Center(
              child: Text(
                'No favorite sermons yet!',
                style: TextStyle(color: AppColors.secondaryColor, fontSize: 20),
              ),
            );
          } else {
            // Display the list of favorite sermons
            return ListView.builder(
              itemCount: favoritesSermons.length,
              itemBuilder: (context, index) {
                // Get the current sermon
                Sermon sermon = favoritesSermons[index];
                // Display the sermon information
                return Column(
                  children: [
                    GestureDetector(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SermonScreen(),
                        ),
                      ),
                      child: ListTile(
                        leading: Image.asset(
                          sermon.imageUrl,
                          // height: 150,
                        ),
                        title: Text(
                          sermon.title,
                          style: const TextStyle(color: AppColors.accentColor),
                        ),
                        subtitle: Text(
                          sermon.description,
                          style:
                              const TextStyle(color: AppColors.secondaryColor),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                      child: //divider
                          Divider(
                        indent: 20,
                        endIndent: 20,
                        color: Colors.grey[700],
                      ),
                    ),
                  ],
                );
              },
            );
          }
        },
      ),
    );
  }
}
