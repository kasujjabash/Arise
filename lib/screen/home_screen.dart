import 'package:arise/Theme/app_colors.dart';
import 'package:arise/cmponets/widgets/my_banner.dart';
import 'package:arise/navigations/my_drawer.dart';
import 'package:arise/models/sermon_module.dart';
import 'package:arise/providers/sermon_provider.dart';
import 'package:arise/providers/video_provider.dart';
import 'package:arise/screen/sermon_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../cmponets/app_tiles/video_tile.dart';
import '../cmponets/widgets/my_tab_bar.dart';
import '../cmponets/app_tiles/sermons_tile.dart';
import 'all_sermons_screen.dart';
import 'video_details.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  // Method to navigate to a particular sermon
  void goToSermon(BuildContext context, int sermonIndex) {
    // Access the SermonProvider and update the current sermon index
    final sermonProvider = Provider.of<SermonProvider>(context, listen: false);
    sermonProvider.currentSermonIndex = sermonIndex;

    // Navigate to the SermonPage
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const SermonScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: AppColors.background,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MyTabBarView(),
                  ),
                );
              },
              child: const Icon(
                Icons.person,
                size: 30,
              ),
            ),
          ),
        ],
      ),
      drawer: const MyDrawer(),
      body: Consumer<SermonProvider>(
        builder: (context, sermonProvider, child) {
          final List<Sermon> sermon = sermonProvider.sermon;

          return SingleChildScrollView(
            child: Column(
              children: [
                // Home banner
                const HomeBanner(),

                //sized box
                const SizedBox(
                  height: 15,
                ),
                //video sermons
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Video Sermons',
                        style: TextStyle(
                            color: AppColors.accentColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ],
                  ),
                ),

                //sized box
                const SizedBox(
                  height: 15,
                ),

                //SIZED BOX
                //? Video sermons list view builder
                SizedBox(
                  height: 280,
                  child: Consumer<VideoProvider>(
                    builder: (context, videos, child) {
                      final videoList = videos.video;
                      return ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: videoList.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 1),
                            child: SizedBox(
                              width: MediaQuery.of(context)
                                  .size
                                  .width, // Full width for one tile
                              child: VideoTile(
                                video: videoList[index],
                                onTap: () {
                                  // Navigate to the video
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => VideoDetails(
                                        video: videoList[index],
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                          );
                        },
                      );
                    },
                  ),
                ),
                //divider
                const Divider(
                  color: Colors.green,
                  thickness: .1,
                  indent: 5,
                  endIndent: 5,
                ),

                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('Latest Sermons',
                          style: TextStyle(
                              color: AppColors.accentColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 20)),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const AllSermonsScreen(),
                            ),
                          );
                        },
                        child: const Text(
                          'See all',
                          style: TextStyle(
                              color: AppColors.secondaryColor, fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 280,
                  width: MediaQuery.of(context).size.width,
                  child: GridView.builder(
                    scrollDirection: Axis.horizontal,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 1,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      childAspectRatio: 1.2,
                    ),
                    itemCount: sermon.length,
                    itemBuilder: (context, index) {
                      return SermonTile(
                        onTap: () => goToSermon(context, index),
                        sermon: sermon[index],
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
