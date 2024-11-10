import 'package:arise/Theme/app_colors.dart';
import 'package:arise/cmponets/widgets/neu_box.dart';
import 'package:arise/providers/sermon_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SermonScreen extends StatelessWidget {
  const SermonScreen({
    super.key,
  });

  //convert durations in min:sec

  String formatTime(Duration duration) {
    String twoDigitsSeconds =
        duration.inSeconds.remainder(60).toString().padLeft(2, '0');
    String formatedTime = "${duration.inMinutes}:$twoDigitsSeconds";

    return formatedTime;
  }

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
            'Sermon player',
            style: TextStyle(
              color: AppColors.accentColor,
              fontSize: 20,
            ),
          ),
          centerTitle: true,
          actions: const [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Icon(Icons.share),
            )
          ],
        ),
        backgroundColor: AppColors.background,
        body: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(right: 25, left: 25, bottom: 25),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  // sermon art work
                  NeuBox(
                      child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      currentSermon.imageUrl,
                      height: MediaQuery.of(context).size.height * .35,
                    ),
                  )),
                  const SizedBox(
                    height: 25,
                  ),
                  ListTile(
                    title: RichText(
                      text: TextSpan(
                        style: const TextStyle(fontSize: 20),
                        children: [
                          TextSpan(
                            text: currentSermon.title,
                          )
                        ],
                      ),
                    ),

                    //Sermon descriptions
                    subtitle: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      child: RichText(
                          text: TextSpan(children: [
                        TextSpan(
                          text: currentSermon.description,
                          style: const TextStyle(
                            color: AppColors.secondaryColor,
                            fontSize: 18,
                          ),
                        )
                      ])),
                    ),
                  ),

                  // sermon duration progress
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 25,
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            //start time
                            Text(formatTime(value.currentDuration),
                                style: const TextStyle(
                                    color: AppColors.accentColor)),
                            //shuffle
                            const Icon(
                              Icons.shuffle,
                              color: AppColors.accentColor,
                            ),
                            //repeat
                            const Icon(
                              Icons.replay,
                              color: AppColors.accentColor,
                            ),

                            //favourate icon
                            //heart icon to add to favourates
                            IconButton(
                              onPressed: () {
                                value.addSermonToFavourate(
                                    currentSermon); // Call addToFavorites function with the current sermon
                              },
                              icon: Icon(
                                Icons.favorite_outline,
                                color: value.favouratesSermon
                                        .contains(currentSermon)
                                    ? Colors
                                        .red // Change color if sermon is in favorites
                                    : AppColors.accentColor,
                              ),
                            ),

                            //end time
                            Text(
                              formatTime(value.totalDuration),
                              style:
                                  const TextStyle(color: AppColors.accentColor),
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
                    max: value.totalDuration.inSeconds.toDouble(),
                    activeColor: AppColors.secondaryColor,
                    value: value.currentDuration.inSeconds.toDouble(),
                    onChanged: (double double) {
                      //during when the slider is sliding aroung
                    },
                    onChangeEnd: (double double) {
                      //sliding has finished, go to that position in sermon duration
                      value.seek(Duration(seconds: double.toInt()));
                    },
                  ),

                  //playback control
                  const SizedBox(
                    height: 25,
                  ),

                  Row(
                    children: [
                      //previous
                      Expanded(
                        child: GestureDetector(
                          onTap: value.playPreviousSermon,
                          child: const NeuBox(
                            child: Icon(
                              Icons.skip_previous,
                              color: AppColors.accentColor,
                            ),
                          ),
                        ),
                      ),
                      //play/ pause
                      Expanded(
                          flex: 2,
                          child: GestureDetector(
                              onTap: value.pauseOrResume,
                              child: NeuBox(
                                  child: Icon(
                                value.isPlaying
                                    ? Icons.pause
                                    : Icons.play_arrow,
                                color: AppColors.accentColor,
                              )))),
                      // next
                      Expanded(
                          child: GestureDetector(
                              onTap: value.playNextSermon,
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
        ),
      );
    });
  }
}
