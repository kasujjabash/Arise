import 'package:arise/Theme/app_colors.dart';
import 'package:arise/navigations/bottom_navidation.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import '../cmponets/widgets/my_button.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Scaffold(
        backgroundColor: AppColors.background,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //hero designed images section
            Column(
              children: [
                //vertical images on the intro screen
                ClipRRect(
                  // borderRadius:
                  //     BorderRadius.only(bottomLeft: Radius.circular(300)),
                  child: Image.asset(
                    'assets/images/prayer_2x.jpg',
                    // height: 400,
                    fit: BoxFit.cover,
                  ),
                ),

                //Intro text colum
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Intro text
                      SizedBox(
                        height: 40,
                      ),
                      //App name
                      Text('Arise city altar church',
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
                      SizedBox(
                        height: 25,
                      ),
                      Center(
                        child: Text(
                          '''Listen closely as Arise brings together hearts in worship and fellowship.''',
                          style:

                              //  GoogleFonts.lato(
                              // textStyle: /
                              TextStyle(
                                  color: AppColors.accentColor,
                                  fontSize: 20,
                                  letterSpacing: .5),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
              ],
            ),
            //button
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              child: Column(
                children: [
                  //Let's go button
                  MyButton(
                    onTap: () {
                      //pop the page
                      Navigator.pop(context);
                      //Go to the Homepage
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const BottomNavigation(),
                        ),
                      );
                    },
                    text: "Get started",
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
