import 'package:flutter/material.dart';

import 'sermon_model.dart';

class SermonProvider extends ChangeNotifier {
//lsits of sermons
  final List<Sermon> _sermon = [
    //sermon 1
    Sermon(
        title: 'The power of positive confession',
        description: 'Listen sermon from paster Jorum Mwesigwa',
        dateTime: '4-04-24',
        imageUrl: 'assets/images/prayer_2x.jpg'),
    //sermon 2
    Sermon(
        title: 'Going to heaven',
        description: 'Listen sermon from paster Jorum Mwesigwa',
        dateTime: '6-04-24',
        imageUrl: 'assets/images/prayer_2x.jpg'),
    //sermon 3
    Sermon(
        title: 'Growing in christ, understanding the word',
        description: 'Listen sermon from paster Jorum Mwesigwa',
        dateTime: '20-04-24',
        imageUrl: 'assets/images/prayer_2x.jpg'),
    //sermon 4
    Sermon(
        title: 'The power of prayer',
        description: 'Listen sermon from paster Jorum Mwesigwa',
        dateTime: '23-04-24',
        imageUrl: 'assets/images/prayer_2x.jpg'),
  ];
  //current sermony

  int? _currentSermonIndex;

  /*
  G E T T E R S 
   */

  List<Sermon> get sermon => _sermon;
  int? get currentSermonIndex => _currentSermonIndex;
  /*
  S E T T E R S 
   */

  set currentSermonIndex(int? newIndex) {
    // updated current sermon 
    _currentSermonIndex = newIndex;
    //update ui
    notifyListeners();
  }
}
