import 'package:flutter/material.dart';
import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';

class MusicScreen extends StatelessWidget {
  const MusicScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 40, horizontal: 25),
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
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                    ),
                  )),
            ),
            SizedBox(height: 50),
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
                child: Image.asset(
                  "images/posterAlbum.jpeg",
                  width: 300,
                  height: 300,
                ),
              ),
            ),
            SizedBox(height: 25),
            Text(
              "Super",
              style: TextStyle(
                fontSize: 40,
                color: Colors.white,
                fontWeight: FontWeight.w900,
              ),
            ),
            Text(
              "Seventeen",
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.w200,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 40, horizontal: 35),
              child: ProgressBar(
                progress: const Duration(minutes: 1),
                total: const Duration(minutes: 3, seconds: 30),
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
            SizedBox(height: 15),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xFF333645),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.list_alt_outlined,
                      size: 30,
                      color: Colors.white,
                    ),
                    Icon(
                      Icons.skip_previous,
                      size: 60,
                      color: Colors.white,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Color(0xFF1E9FE0),
                      ),
                      child:
                          Icon(Icons.play_arrow, color: Colors.white, size: 80),
                    ),
                    Icon(
                      Icons.skip_next,
                      size: 60,
                      color: Colors.white,
                    ),
                    Icon(
                      Icons.favorite_border,
                      size: 30,
                      color: Color(0xFF1E9FE0),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
