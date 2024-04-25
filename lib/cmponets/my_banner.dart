import 'package:arise/Theme/app_colors.dart';
import 'package:flutter/material.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Container(
        width: MediaQuery.of(context).size.width * .95,
        padding: const EdgeInsets.all(15),
        // height: 200,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: AppColors.secondaryColor),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //Banner text
                const Text(
                  'Arise Community Church\nSermon Center',
                  style: TextStyle(
                      color: AppColors.accentColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                //Banner text
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  'Your Spiritual Journey Begins.',
                  style: TextStyle(
                    color: AppColors.background,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                //Icon
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: AppColors.background,
                      borderRadius: BorderRadius.circular(10)),
                  child: const Text(
                    "Get started",
                    style: TextStyle(color: AppColors.accentColor),
                  ),
                )
              ],
            ),
            const SizedBox(
                // width: 2,
                ),
            Image.asset(
              "assets/images/prayer_3.png",
              height: 130,
              fit: BoxFit.fitWidth,
            )
          ],
        ),
      ),
    );
  }
}
