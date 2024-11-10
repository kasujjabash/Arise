import 'package:arise/Theme/app_colors.dart';
import 'package:arise/screen/devotions_screens.dart';
import 'package:flutter/material.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.95,
      height: 200,
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: AppColors.secondaryColor,
      ),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Banner text
                const Flexible(
                  child: Text(
                    'Arise City',
                    style: TextStyle(
                      color: AppColors.accentColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                ),
                const Flexible(
                  child: Text(
                    'Alter Church',
                    style: TextStyle(
                      color: AppColors.accentColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
                // Banner text
                const SizedBox(height: 5),
                const Flexible(
                  child: Text(
                    'Your Spiritual Journey Begins.',
                    style: TextStyle(
                        color: AppColors.background,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(height: 20),
                // Icon
                GestureDetector(
                  //navigate to the devotions screen
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const DevotionsScreen())),
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 25),
                    decoration: BoxDecoration(
                      color: AppColors.background,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Text(
                      "Devotions",
                      style: TextStyle(color: AppColors.accentColor),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 10),
          // Image
          Flexible(
            flex: 1,
            child: Image.asset(
              "assets/images/prayer_3.png",
              fit: BoxFit.fitHeight,
            ),
          ),
        ],
      ),
    );
  }
}
