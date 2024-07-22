import 'package:flutter/material.dart';
import 'package:music_player/navigationBar/BottomBar.dart';
import 'package:music_player/pages/ArtistScreen.dart';
import 'package:music_player/pages/GenreScreen.dart';
import 'package:music_player/pages/MoreArtistScreen.dart';
import 'package:music_player/pages/HomeScreen.dart';
import 'package:music_player/pages/LikedScreen.dart';
import 'package:music_player/pages/MoreArtistScreen.dart';
import 'package:music_player/pages/MusicScreen.dart';
import 'package:music_player/pages/ProfileScreen.dart';
import 'package:music_player/pages/SearchScreen.dart';
import 'package:music_player/pages/SplashScreen.dart';
import 'package:music_player/previews/Preview.dart';
import 'package:music_player/previews/Preview3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFF191A1E),
      ),
      routes: {
        "/": (context) => HomeScreen(),
        "preview3": (context) => Preview3(),
      },
    );
  }
}
