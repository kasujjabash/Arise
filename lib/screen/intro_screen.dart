import 'package:arise/Theme/app_colors.dart';
import 'package:arise/pages/home_page.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

import '../cmponets/my_button.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Column(
        children: [
          //hero designed images section
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //vertical images on the intro screen
              ClipRRect(
                child: Image.asset(
                  'assets/images/prayer_2x.jpg',
                  // height: 400,
                  fit: BoxFit.cover,
                ),
              ),

              // ClipRRect(
              //   borderRadius: BorderRadius.circular(60),
              //   child: Image.asset(
              //     'lib/images/prayer_3.jpg',
              //     height: 200,
              //   ),
              // ),
              // const SizedBox(
              //   height: 20,
              // ),
              // ClipRRect(
              //   borderRadius: BorderRadius.circular(60),
              //   child: Image.asset(
              //     'lib/images/prayer_1.jpg',
              //     height: 200,
              //   ),
              // )
            ],
          ),
          // const SizedBox(
          //   width: 20,
          // ),
          // ClipRRect(
          //   borderRadius: BorderRadius.circular(70),
          //   child: Image.asset(
          //     'lib/images/prayer_2.jpg',
          //     width: 190,
          //     height: 400,
          //     fit: BoxFit.cover,
          //   ),
          // ),

          // Text('Community Church',
          //     style: GoogleFonts.libreBaskerville(
          //         textStyle: const TextStyle(
          //             color: AppColors.accentColor,
          //             fontWeight: FontWeight.bold,
          //             fontSize: 30))),

          //description text
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              
              children: [
                const SizedBox(
                  height: 40,
                ),
                //App name
                const Text('Arise city altar church',
                    style:
                        //  GoogleFonts.libreBaskerville(
                        // textStyle:
                        TextStyle(
                            color: AppColors.secondaryColor,
                            fontWeight: FontWeight.bold,
                            // letterSpacing: 1,
                            fontSize: 35)
                    // )
                    ),
                const SizedBox(
                  height: 25,
                ),
                const Center(
                  child: Text(
                    'Listen closely as Arise brings together hearts in worship and fellowship.',
                    style:

                        //  GoogleFonts.lato(
                        // textStyle: /
                        TextStyle(
                            color: AppColors.accentColor,
                            fontSize: 18,
                            letterSpacing: .5),
                  ),
                ),
                // ),
                const SizedBox(
                  height: 30,
                ),

                //Let's go button
                MyButton(
                  onTap: () {
                    //pop the page
                    Navigator.pop(context);
                    //Go to the Homepage
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomePage(),
                      ),
                    );
                  },
                  text: "Get started",
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
