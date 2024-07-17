import 'package:arise/Theme/app_colors.dart';
import 'package:arise/cmponets/my_banner.dart';
import 'package:arise/cmponets/my_drawer.dart';
import 'package:arise/models/sermon_model.dart';
import 'package:arise/models/sermon_provider.dart';
import 'package:arise/pages/sermon_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../cmponets/my_tab_bar.dart';
import 'all_sermon_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  //get the sermon provider
  late final dynamic sermonProvider;

  @override
  void initState() {
    super.initState();
    //get sermon provider
    sermonProvider = Provider.of<SermonProvider>(context, listen: false);
  }

  //go to the paticular sermon
  void goToSermon(int sermonIndex) {
    //update current sermon index
    sermonProvider.currentSermonIndex = sermonIndex;
    //navigate to the sermon page
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const SermonPage(),
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
        body: Consumer<SermonProvider>(builder: (context, value, child) {
          final List<Sermon> sermon = value.sermon;

          //returning a list view ui
          return Column(
            children: [
              //homer banner
              const HomeBanner(),
              //Latest cermonies
              const SizedBox(
                height: 5,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Latest Sermons',
                        style:
                            //  GoogleFonts.libreBaskerville(
                            // textStyle:
                            TextStyle(
                                color: AppColors.accentColor,
                                fontWeight: FontWeight.bold,
                                // letterSpacing: 1,
                                fontSize: 20)
                        // )
                        ),
                    TextButton(
                      onPressed: () {
                        //go to sermons
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const AllSermonsScreen(),
                          ),
                        );
                      },
                      child: const Text(
                        'See all',
                        style:
                            //  GoogleFonts.libreBaskerville(
                            // textStyle:
                            TextStyle(
                                color: AppColors.secondaryColor,

                                // letterSpacing: 1,
                                fontSize: 15),
                      ),
                    ),
                  ],
                ),
              ),
              // lists of sermons
              Expanded(
                child: ListView.builder(
                    itemCount: 5,
                    //  sermon.length,
                    itemBuilder: (context, index) {
                      //get an individual sermon
                      final Sermon sermons = sermon[
                          index]; // get individual sermon through the list of sermons

                      // return a list tile
                      return Column(children: [
                        ListTile(
                          title: RichText(
                              text: TextSpan(children: [
                            TextSpan(
                              text: sermons.title,
                              style: const TextStyle(fontSize: 20),
                            )
                          ])),

                          //Sermon descriptions
                          subtitle: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 15),
                            child: RichText(
                                text: TextSpan(children: [
                              TextSpan(
                                text: sermons.description,
                                style: const TextStyle(
                                  color: AppColors.secondaryColor,
                                  fontSize: 18,
                                ),
                              )
                            ])),
                          ),
                          leading: Image.asset(sermons.imageUrl),
                          onTap: () => goToSermon(index),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                      ]);
                    }),
              )
            ],
          );
        }));
  }
}
