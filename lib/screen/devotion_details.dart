import 'package:arise/Theme/app_colors.dart';
import 'package:arise/models/devotion_module.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DevotionDetails extends StatelessWidget {
  final DevotionModule devotionModule;
  const DevotionDetails({super.key, required this.devotionModule});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        title: const Text('Devotions'),
        foregroundColor: AppColors.accentColor,
        backgroundColor: AppColors.background,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: GestureDetector(
              onTap: () {
                //TODO To implement search functionality
              },
              child: const Icon(FontAwesomeIcons.heart),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: GestureDetector(
              onTap: () {
                //TODO To implement search functionality
              },
              child: const Icon(FontAwesomeIcons.share),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //banner image
            //TODO To design banner graphic for devotions
            Image.asset(
              devotionModule.devotionImage,
            ),

            Padding(
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 18),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //devotion tile
                  Text(
                    devotionModule.devotionTitle,
                    style: const TextStyle(
                        color: AppColors.accentColor, fontSize: 24),
                  ),
                  //sized box
                  const SizedBox(
                    height: 3,
                  ),
                  //posted by
                  Text(
                    devotionModule.devotionWritter,
                    style: const TextStyle(
                        color: AppColors.accentColor, fontSize: 17),
                  ),
                  //sized box

                  const SizedBox(
                    height: 3,
                  ),
                  //posted on/ dated

                  Text(
                    devotionModule.dateOfCreation,
                    style: const TextStyle(
                        color: Color.fromARGB(103, 244, 248, 249),
                        fontSize: 15),
                  ),
                  //sized box

                  const SizedBox(
                    height: 5,
                  ),
                  //scripture
                  Text(
                    devotionModule.devotionScripture,
                    style: const TextStyle(
                        color: AppColors.secondaryColor, fontSize: 18),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  //devotion description
                  RichText(
                    text: TextSpan(
                      text: devotionModule.devotionDescription,
                      style: const TextStyle(
                          color: AppColors.accentColor, fontSize: 20),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
