import 'package:arise/Theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DevotionDetails extends StatelessWidget {
  const DevotionDetails({super.key});

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
              'assets/images/devotions_banner.jpg',
            ),

            Padding(
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 18),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //devotion tile
                  const Text(
                    'Jesus Is All You Need',
                    style:
                        TextStyle(color: AppColors.accentColor, fontSize: 24),
                  ),
                  //sized box
                  const SizedBox(
                    height: 3,
                  ),
                  //posted by
                  const Text(
                    'By: Pastor John Doe',
                    style:
                        TextStyle(color: AppColors.accentColor, fontSize: 17),
                  ),
                  //sized box

                  const SizedBox(
                    height: 3,
                  ),
                  //posted on/ dated

                  const Text(
                    'Sat, 12th Nov 2024',
                    style: TextStyle(
                        color: Color.fromARGB(103, 244, 248, 249),
                        fontSize: 15),
                  ),
                  //sized box

                  const SizedBox(
                    height: 5,
                  ),
                  //scripture
                  const Text(
                    '2 Corinthians 9:15: Thanks be unto God for his unspeakable gift.',
                    style:
                        TextStyle(color: AppColors.accentColor, fontSize: 20),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  //devotion description
                  RichText(
                    text: const TextSpan(
                      text:
                          'In this scripture, Paul expresses profound gratitude to God for the gift beyond all words – the gift of Jesus Christ. '
                          'This “unspeakable gift” refers to the grace, love, and salvation that God gave to the world through His Son. '
                          'Christ embodies a gift that surpasses all human understanding and language. We are called to reflect on the depth '
                          'of God’s love and respond with thanksgiving. As we recognize Jesus as the ultimate gift, we can be inspired to '
                          'live lives of gratitude and generosity, sharing His love and kindness with those around us. Let this truth fill '
                          'our hearts, remembering that we, too, are blessed to be a blessing.',
                      style:
                          TextStyle(color: AppColors.accentColor, fontSize: 20),
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
