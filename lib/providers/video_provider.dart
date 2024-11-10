import 'package:flutter/foundation.dart';

import '../models/video_module.dart';

class VideoProvider extends ChangeNotifier {
  final List<Video> _video = [
    Video(
        title: 'Mystry Of Dreams',
        thumbnailUrl: 'assets/images/video_thumbnail.jpg',
        videoUrl: 'https://www.youtube.com/watch?v=Az8Png19pPE',
        preacher: 'Apostle Hakiza'),
    Video(
        title: 'The Class Of The Twelve',
        thumbnailUrl: 'assets/images/video_thumbnail.jpg',
        videoUrl: 'https://youtu.be/kFT1Plv_WRU?si=nctG2PLaFr0yQIC3',
        preacher: 'Apostle Hakiza'),
    Video(
        title: 'The Power Of The Tongue Through Intercession',
        thumbnailUrl: 'assets/images/video_thumbnail.jpg',
        videoUrl:
            'https://youtu.be/9oNictbSsmw?si=mZ0RriB3YKZOuFKO',
        preacher: 'Apostle Hakiza'),
  ];
  List<Video> get video => _video;
}
