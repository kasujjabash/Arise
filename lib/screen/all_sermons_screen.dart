import 'package:arise/Theme/app_colors.dart';
import 'package:arise/cmponets/app_tiles/sermons_tile.dart';
import 'package:arise/models/sermon_module.dart';
import 'package:arise/providers/sermon_provider.dart';
import 'package:arise/screen/favourites_screen.dart';
import 'package:arise/screen/sermon_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

class AllSermonsScreen extends StatelessWidget {
  const AllSermonsScreen({super.key});

  // Go to the specific sermon
  void goToSermon(
      BuildContext context, SermonProvider sermonProvider, int sermonIndex) {
    // Update current sermon index
    sermonProvider.currentSermonIndex = sermonIndex;
    // Navigate to the sermon page
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const SermonScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    // Access sermon provider from context
    final sermonProvider = Provider.of<SermonProvider>(context);
    final List<Sermon> sermons = sermonProvider.sermon;

    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.background,
        foregroundColor: Colors.white,
        // centerTitle: true,
        title: const Text(
          'All Sermons',
          style: TextStyle(
            color: AppColors.accentColor,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        //favorites
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: GestureDetector(
                onTap: () {
                  //Navigate to the Favourites screen
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const FavouritesScreen(),
                    ),
                  );
                },
                child: const Icon(FontAwesomeIcons.heart)),
          ),
        ],
      ),
      body: sermons.isEmpty
          ? const Center(
              child: Text(
                'No sermons available.',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            )
          : Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Column(
                children: [
                  const SizedBox(height: 5),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  ),
                  Expanded(
                    child: GridView.builder(
                      itemCount:
                          sermons.length, // Set itemCount to avoid errors
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 10,
                        childAspectRatio: 0.75, // Adjust ratio to fit layout
                      ),
                      itemBuilder: (context, index) {
                        final sermon = sermons[index];
                        return SermonTile(
                          sermon: sermon,
                          onTap: () =>
                              goToSermon(context, sermonProvider, index),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
    );
  }
}
