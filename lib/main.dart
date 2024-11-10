import 'package:arise/providers/devotion_provider.dart';
import 'package:arise/providers/sermon_provider.dart';
import 'package:arise/screen/intro_screen.dart';
import 'package:arise/screen/video_details.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'navigations/bottom_navidation.dart';
import 'providers/video_provider.dart';

void main() {
  runApp(
    // ChangeNotifierProvider(
    // create: (context) => SermonProvider(),
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          // sermon provider
          create: (context) => SermonProvider(),
        ),
        // video provider
        ChangeNotifierProvider(
          create: (context) => VideoProvider(),
        ),
        // devotion provider
         ChangeNotifierProvider(
          create: (context) => DevotionProvider(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/bottomNavigation': (context) => const BottomNavigation(),
        //  '/videoDetails': (context) => const VideoDetails(video: video)
      },
      title: 'Arise',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const IntroScreen(),
    );
  }
}
