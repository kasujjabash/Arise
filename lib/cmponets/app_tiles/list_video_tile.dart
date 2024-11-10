import 'package:flutter/material.dart';
import '../../Theme/app_colors.dart';
import '../../models/video_module.dart';

class ListVideoTile extends StatelessWidget {
  final Video video;
  final Function()? onTap;
  const ListVideoTile({super.key, required this.video, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          vertical: 8, horizontal: 10), 
      child: GestureDetector(
        onTap: onTap,
        child: Column(
          children: [
            Row(
              crossAxisAlignment:
                  CrossAxisAlignment.start, // Align items to the top
              children: [
                // Thumbnail
                Image.asset(
                  video.thumbnailUrl,
                  height: 100,
                  fit: BoxFit.cover,
                ),
                const SizedBox(width: 10),
                // Sermon Title
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        video.title,
                        style: const TextStyle(
                          color: AppColors.accentColor,
                          fontSize:
                              20, // Slightly smaller font size for preacher's name
                        ),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                      ),
                      const SizedBox(height: 5),

                      // Sermon by
                      Text(
                        'By ${video.preacher}',
                        style: TextStyle(
                          color: Colors.grey.shade500,
                          fontSize:
                              18, // Slightly smaller font size for preacher's name
                        ),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 3,
                      ),

                      //date
                      // Sermon by
                      const Text(
                        'Nov 12, 2024',
                        style: TextStyle(
                          color: AppColors.secondaryColor,
                          fontSize:
                              18, // Slightly smaller font size for preacher's name
                        ),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 3,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            //divider
            const Divider(
              color: AppColors.secondaryColor,
              thickness: .2,
            ),
          ],
        ),
      ),
    );
  }
}
