import 'package:arise/Theme/app_colors.dart';
import 'package:arise/cmponets/app_tiles/video_tile.dart';
import 'package:arise/models/video_module.dart';
import 'package:arise/providers/video_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import '../cmponets/app_tiles/list_video_tile.dart';

class VideoDetails extends StatelessWidget {
  final Video video;
  const VideoDetails({super.key, required this.video});

  @override
  Widget build(BuildContext context) {
    final YoutubePlayerController _controller = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(video.videoUrl)!,
      flags: const YoutubePlayerFlags(
        autoPlay: true,
        mute: false,
      ),
    );

    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.background,
        foregroundColor: AppColors.accentColor,
        title: const Text('Video Sermons'),
      ),
      body: Column(
        children: [
          YoutubePlayer(
            controller: _controller,
            showVideoProgressIndicator: true,
            progressIndicatorColor: AppColors.accentColor,
          ),
          //sized box
          const SizedBox(
            height: 15,
          ),
          // Additional widgets or content can be added here
          Expanded(
            child: Consumer<VideoProvider>(
              builder: (context, videos, child) {
                final videoLists = videos.video;
                return ListView.builder(
                  itemCount: videoLists.length,
                  itemBuilder: (context, index) {
                    final relatedVideo = videoLists[index];
                    return ListVideoTile(video: relatedVideo);
                  },
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
