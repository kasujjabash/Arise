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
                      'Arise Community Church\nSermon Center',
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
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  // Icon
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: AppColors.background,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Text(
                      "Send prayer request",
                      style: TextStyle(color: AppColors.accentColor),
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
      ),
    );
  }
}
