import 'package:arise/Theme/app_colors.dart';
import 'package:arise/models/video_module.dart';
import 'package:arise/providers/video_provider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import '../cmponets/app_tiles/list_video_tile.dart';

class VideoDetails extends StatefulWidget {
  final Video video;
  const VideoDetails({super.key, required this.video});

  @override
  _VideoDetailsState createState() => _VideoDetailsState();
}

class _VideoDetailsState extends State<VideoDetails> {
  late YoutubePlayerController _controller;
  late String _currentVideoTitle;

  @override
  void initState() {
    super.initState();
    _initializePlayer(widget.video.videoUrl);
    _currentVideoTitle =
        widget.video.title; // Initialize with the first video title
  }

  void _initializePlayer(String url) {
    _controller = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(url)!,
      flags: const YoutubePlayerFlags(
        autoPlay: true,
        mute: false,
      ),
    );
  }

  void _loadVideo(Video video) {
    setState(() {
      _currentVideoTitle = video.title; //? Update the video title
      _controller.load(YoutubePlayer.convertUrlToId(video.videoUrl)!);
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.background,
        foregroundColor: AppColors.accentColor,
        title: const Text('Video Sermons'),
        leading: GestureDetector(
          child: const Icon(FontAwesomeIcons.arrowLeft, size: 25),
          onTap: () => Navigator.pop(context),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //display the video player
          YoutubePlayer(
            controller: _controller,
            showVideoProgressIndicator: true,
            progressIndicatorColor: AppColors.accentColor,
          ),
          //sized box

          //Video title
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
            child: Text(
              _currentVideoTitle,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: AppColors.accentColor,
              ),
            ),
          ),
          //Sized box
          const SizedBox(
            height: 10,
          ),
          // Other videos
          Expanded(
            child: Consumer<VideoProvider>(
              builder: (context, videos, child) {
                final videoLists = videos.video;
                return ListView.builder(
                  itemCount: videoLists.length,
                  itemBuilder: (context, index) {
                    final relatedVideo = videoLists[index];
                    return ListVideoTile(
                      video: relatedVideo,
                      onTap: () {
                        // Replace the video in the player without navigation
                        _loadVideo(relatedVideo);
                      },
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
