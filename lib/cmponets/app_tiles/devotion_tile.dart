import 'package:arise/Theme/app_colors.dart';
import 'package:flutter/material.dart';

class DevotionTile extends StatelessWidget {
  final Function()? onTap;
  const DevotionTile({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5),
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: const Color.fromARGB(148, 25, 20, 61),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            children: [
              // Image
              Image.asset(
                'assets/images/prayer_2x.jpg',
                height: 100,
              ),
              // Expanded content
              const Expanded(
                child: Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Devotion title
                      Text(
                        'Jesus Is All You Need',
                        style: TextStyle(
                          color: AppColors.accentColor,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      // Scripture
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 5),
                        child: Text(
                          '2 Corinthians 9:15: Thanks be unto God for his unspeakable gift.',
                          style: TextStyle(
                            color: AppColors.accentColor,
                            fontSize: 15,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      //Date
                      Text(
                        'Sat, 12th Nov 2024',
                        style: TextStyle(
                          color: AppColors.secondaryColor,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
