class Sermon {
  final String title;
  final String description;
  final String dateTime;
  final String imageUrl;
  final String audioPath;
  final String preacher;

  Sermon(
      {required this.title,
      required this.description,
      required this.dateTime,
      required this.imageUrl,
      required this.audioPath,
      required this.preacher});
}
