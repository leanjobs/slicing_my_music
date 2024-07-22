import 'package:flutter/material.dart';
import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:music_player/constants/string.dart';
import 'package:music_player/models/music.dart';
import 'package:spotify/spotify.dart' as spotify;
import 'package:audioplayers/audioplayers.dart';
import 'package:youtube_explode_dart/youtube_explode_dart.dart';

class MusicScreen extends StatefulWidget {
  @override
  State<MusicScreen> createState() => _MusicScreenState();
}

class _MusicScreenState extends State<MusicScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: MediaQuery.of(context).size.height * 0.03,
                horizontal: MediaQuery.of(context).size.width * 0.03,
              ),
              child: AppBar(
                  title: Text(
                    'Now Playing',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  centerTitle: true,
                  backgroundColor: Colors.transparent,
                  leading: IconButton(
                    onPressed: () async {
                      Navigator.pop(context);
                      // await player.stop();
                    },
                    icon: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                    ),
                  )),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(200),
                border: Border.all(
                  color: Color(0xFF1E9FE0).withOpacity(0.5),
                  width: 12,
                ),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(200),
                child: Image.network(
                  "images/posterAlbum.jpeg",
                  width: MediaQuery.of(context).size.width * 0.7,
                ),
              ),
            ),
            SizedBox(height: 25),
            Padding(
              padding: EdgeInsets.symmetric(
                // vertical: MediaQuery.of(context).size.height * 0.08,
                horizontal: MediaQuery.of(context).size.width * 0.08,
              ),
              child: Text(
                "hllllow",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.w900,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                // vertical: MediaQuery.of(context).size.height * 0.08,
                horizontal: MediaQuery.of(context).size.width * 0.08,
              ),
              child: Text(
                "seventeen",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.w200,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: MediaQuery.of(context).size.height * 0.03,
                horizontal: MediaQuery.of(context).size.width * 0.08,
              ),
              child: ProgressBar(
                progress: Duration(seconds: 0),
                total: Duration(minutes: 2),
                bufferedBarColor: Colors.white,
                baseBarColor: Colors.white,
                thumbColor: Colors.white,
                timeLabelTextStyle: const TextStyle(color: Colors.white),
                progressBarColor: Colors.white,
                onSeek: (duration) {
                  print('User selected a new time: $duration');
                },
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  // color: Color(0xFF333645),
                  borderRadius: BorderRadius.circular(40)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.skip_previous,
                      color: Colors.white,
                      size: 50,
                    ),
                  ),
                  // Container(
                  //   decoration: BoxDecoration(
                  //     borderRadius: BorderRadius.circular(50),
                  //     color: Color(0xFF1E9FE0),
                  //   ),
                  //   child:
                  //       Icon(Icons.play_arrow, color: Colors.white, size: 80),
                  // ),
                  IconButton(
                    onPressed: () async {
                      // if (player.state == PlayerState.playing) {
                      //   await player.pause();
                      // } else {
                      //   await player.resume();
                      // }
                      // setState(() {});
                    },
                    icon: Icon(
                      Icons.pause,
                      color: Color(0xFF1E9FE0),
                      size: 100,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.skip_next,
                      color: Colors.white,
                      size: 50,
                    ),
                  ),
                  // Icon(
                  //   Icons.favorite_border,
                  //   size: 30,
                  //   color: Color(0xFF1E9FE0),
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
