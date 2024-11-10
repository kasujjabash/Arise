import 'package:arise/Theme/app_colors.dart';
import 'package:arise/models/devotion_module.dart';
import 'package:flutter/material.dart';

class DevotionTile extends StatelessWidget {
  final DevotionModule devotionModule;
  final Function()? onTap;
  const DevotionTile(
      {super.key, required this.onTap, required this.devotionModule});

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
                'assets/images/video_thumbnail.jpg',
                height: 100,
              ),
              // Expanded content
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Devotion title
                      Text(
                        devotionModule.devotionTitle,
                        style: const TextStyle(
                          color: AppColors.accentColor,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      ),
                      // Scripture
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: Text(
                          devotionModule.devotionScripture,
                          style: const TextStyle(
                            color: AppColors.accentColor,
                            fontSize: 15,
                          ),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      //Date
                      Text(
                        devotionModule.dateOfCreation,
                        style: const TextStyle(
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
