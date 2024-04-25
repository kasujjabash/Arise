import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'sermon_model.dart';

class SermonProvider extends ChangeNotifier {
//lsits of sermons
  final List<Sermon> _sermon = [
    //sermon 1
    Sermon(
        title: 'There is a season for war and for rest',
        description:
            'Psalms  144:1 Blessed be the LORD my strength, which teacheth my hands to war, and my fingers to fight',
        dateTime: '6-04-24',
        audioPath: 'audio/Abel_Chungu.mp3',
        imageUrl: 'assets/images/prayer_2x.jpg'),
    //sermon 2
    Sermon(
        title: 'Going to heaven',
        description: 'Listen sermon from paster Jorum Mwesigwa',
        dateTime: '6-04-24',
        audioPath: 'audio/Abel_Chungu.mp3',
        imageUrl: 'assets/images/prayer_2x.jpg'),
    //sermon 3
    Sermon(
        title: 'Growing in christ,',
        description: 'Listen sermon from paster Jorum Mwesigwa',
        dateTime: '20-04-24',
        audioPath: 'audio/Abel_Chungu.mp3',
        imageUrl: 'assets/images/prayer_2x.jpg'),
    //sermon 4
    Sermon(
        title: 'The power of prayer',
        description: 'Listen sermon from paster Jorum Mwesigwa',
        dateTime: '23-04-24',
        audioPath: 'audio/Abel_Chungu.mp3',
        imageUrl: 'assets/images/prayer_2x.jpg'),
    //sermon 5

    Sermon(
        title: 'The power of prayer',
        description: 'Listen sermon from paster Jorum Mwesigwa',
        dateTime: '23-04-24',
        audioPath: 'audio/Abel_Chungu.mp3',
        imageUrl: 'assets/images/prayer_2x.jpg'),
    //sermon 6

    Sermon(
        title: 'The power of prayer',
        description: 'Listen sermon from paster Jorum Mwesigwa',
        dateTime: '23-04-24',
        audioPath: 'audio/Abel_Chungu.mp3',
        imageUrl: 'assets/images/prayer_2x.jpg'),

    //sermon 7

    Sermon(
        title: 'The power of prayer',
        description: 'Listen sermon from paster Jorum Mwesigwa',
        dateTime: '23-04-24',
        audioPath: 'audio/Abel_Chungu.mp3',
        imageUrl: 'assets/images/prayer_2x.jpg'),
    //sermon 8

    Sermon(
        title: 'The power of prayer',
        description: 'Listen sermon from paster Jorum Mwesigwa',
        dateTime: '23-04-24',
        audioPath: 'audio/Abel_Chungu.mp3',
        imageUrl: 'assets/images/prayer_2x.jpg'),

    //sermon 9

    Sermon(
        title: 'The power of prayer',
        description: 'Listen sermon from paster Jorum Mwesigwa',
        dateTime: '23-04-24',
        audioPath: 'audio/Abel_Chungu.mp3',
        imageUrl: 'assets/images/prayer_2x.jpg'),

    //sermon 10

    Sermon(
        title: 'The power of prayer',
        description: 'Listen sermon from paster Jorum Mwesigwa',
        dateTime: '23-04-24',
        audioPath: 'audio/Abel_Chungu.mp3',
        imageUrl: 'assets/images/prayer_2x.jpg'),
  ];
  //current sermony

  int? _currentSermonIndex;

  /*
  Audio player
   */
  //audio player
  final AudioPlayer _audioPlayer = AudioPlayer();
  //duration
  Duration _currentDuration = Duration.zero;
  Duration _totalDuration = Duration.zero;

  //constructor
  SermonProvider() {
    listenToDuration();
  }
  //initially not playing
  bool _isPlaying = false;
  //play the sermon
  void play() async {
    final String path = _sermon[_currentSermonIndex!].audioPath;
    await _audioPlayer.stop(); // stop current sermon
    await _audioPlayer.play(AssetSource(path)); //play anew sermon
    _isPlaying = true;
    notifyListeners();
  }

  //pause current song
  void pause() async {
    await _audioPlayer.pause();
    _isPlaying = false;
    notifyListeners();
  }

  //resume playing
  void resume() async {
    await _audioPlayer.resume();
    _isPlaying = true;
    notifyListeners();
  }

  //pause or play
  void pauseOrResume() async {
    if (_isPlaying) {
      pause();
    } else {
      resume();
    }
    notifyListeners();
  }

  //seek to a specific position in the current sermon
  void seek(Duration position) async {
    await _audioPlayer.seek(position);
  }

  //play next sermon
  void playNextSermon() {
    if (_currentSermonIndex != null) {
      if (_currentSermonIndex! < _sermon.length - 1) {
        //go to the next sermon, if its not the last sermon
        currentSermonIndex = _currentSermonIndex! + 1;
      } else {
        //if its the last sermon, loop back to the fist one
        currentSermonIndex = 0;
      }
    }
  }

  //play previous sermon
  void playPreviousSermon() async {
    //if more than 2 secondshave passed, restart the current sermon
    if (_currentDuration.inSeconds > 2) {
      seek(Duration.zero);
    }
    // if its with in the the 2 seconds of the sermon, go the previous sermon

    else {
      if (_currentSermonIndex! > 0) {
        currentSermonIndex = _currentSermonIndex! - 1;
      } else {
        //if its the current song , loop back to the start
        currentSermonIndex = _sermon.length - 1;
      }
    }
  }

  //listen to durations
  void listenToDuration() {
    //list for total duration
    _audioPlayer.onDurationChanged.listen((newDuration) {
      _totalDuration = newDuration;

      //notify listener
      notifyListeners();
    });

    //listen to total duration
    _audioPlayer.onPositionChanged.listen((newPosition) {
      _currentDuration = newPosition;
      notifyListeners();
    });

    //listen for the sermon is complete
    _audioPlayer.onPlayerComplete.listen((event) {
      playNextSermon();
    });
  }
  //dispose the audio play

  /*
  G E T T E R S 
   */

  List<Sermon> get sermon => _sermon;
  int? get currentSermonIndex => _currentSermonIndex;
  bool get isPlaying => _isPlaying;
  Duration get currentDuration => _currentDuration;
  Duration get totalDuration => _totalDuration;
  /*
  S E T T E R S 
   */

  set currentSermonIndex(int? newIndex) {
    // updated current sermon
    _currentSermonIndex = newIndex;

    if (newIndex != null) {
      play(); //play the new index
    }
    //update ui
    notifyListeners();
  }
}
