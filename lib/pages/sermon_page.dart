import 'package:arise/Theme/app_colors.dart';
import 'package:arise/cmponets/neu_box.dart';
import 'package:arise/models/sermon_model.dart';
import 'package:arise/models/sermon_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
// import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

class SermonPage extends StatelessWidget {
  const SermonPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<SermonProvider>(builder: (context, value, child) {
      // get the sermon
      final sermon = value.sermon;
      //get current sermon index
      final currentSermon = sermon[value.currentSermonIndex ?? 0];

      //return a scaffold UI
      return Scaffold(
        appBar: AppBar(
          foregroundColor: AppColors.accentColor,
          backgroundColor: AppColors.background,
          title: const Text(
            'Sermons',
            style: TextStyle(
              color: AppColors.accentColor,
              fontSize: 20,
            ),
          ),
          centerTitle: true,
          actions: const [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Icon(Icons.menu),
            )
          ],
        ),
        backgroundColor: AppColors.background,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(right: 25, left: 25, bottom: 25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //app bar
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // IconButton(
                    //     onPressed: () {},
                    //     icon: const Icon(
                    //       Icons.arrow_back,
                    //       color: AppColors.accentColor,
                    //       size: 25,
                    //     )), // tittl
                    // const Text(
                    //   "Sermon",
                    //   style: TextStyle(
                    //     color: AppColors.accentColor,
                    //     fontSize: 20,
                    //   ),
                    // ),
                    // //menue
                    // IconButton(
                    //     onPressed: () {},
                    //     icon: const Icon(
                    //       Icons.menu,
                    //       color: AppColors.accentColor,
                    //       size: 25,
                    //     )),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                // sermon art work
                NeuBox(
                    child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    currentSermon.imageUrl,
                    // height: 100,
                  ),
                )),
                const SizedBox(
                  height: 25,
                ),
                Row(
                  children: [
                    //sermon and description
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          currentSermon.title,
                          style: const TextStyle(
                            color: AppColors.accentColor,
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          currentSermon.description,
                          style: const TextStyle(
                            color: AppColors.secondaryColor,
                            // fontSize: 20,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                // sermon duration progress
                const Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 25,
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          //start time
                          Text('0:00',
                              style: TextStyle(color: AppColors.accentColor)),
                          //shuffle
                          Icon(
                            Icons.shuffle,
                            color: AppColors.accentColor,
                          ),
                          //repeat
                          Icon(
                            Icons.replay,
                            color: AppColors.accentColor,
                          ),

                          //favourate icon
                          //heart icon to add to favourates
                          Icon(
                            Icons.favorite_outline,
                            color: AppColors.accentColor,
                          ),
                          //end time
                          Text(
                            '0:00',
                            style: TextStyle(color: AppColors.accentColor),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                //slider,
                //? progress bar
                Slider(
                    min: 0,
                    max: 100,
                    activeColor: AppColors.secondaryColor,
                    value: 50,
                    onChanged: (value) {}),

                //playback control
                const SizedBox(
                  height: 25,
                ),

                Row(
                  children: [
                    //previous
                    Expanded(
                        child: GestureDetector(
                            onTap: () {},
                            child: const NeuBox(
                                child: Icon(
                              Icons.skip_previous,
                              color: AppColors.accentColor,
                            )))),
                    //play/ pause
                    Expanded(
                        flex: 2,
                        child: GestureDetector(
                            onTap: () {},
                            child: const NeuBox(
                                child: Icon(
                              Icons.play_arrow,
                              color: AppColors.accentColor,
                            )))),
                    // next
                    Expanded(
                        child: GestureDetector(
                            onTap: () {},
                            child: const NeuBox(
                                child: Icon(
                              Icons.skip_next,
                              color: AppColors.accentColor,
                            )))),
                  ],
                )
              ],
            ),
          ),
        ),
      );
    });
  }
}
