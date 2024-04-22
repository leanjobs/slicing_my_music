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
                    onPressed: () {
                      Navigator.of(context).pop();
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
                child: Image.asset(
                  "images/posterAlbum.jpeg",
                  width: MediaQuery.of(context).size.width * 0.7,
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
              padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 35),
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
            Container(
              decoration: BoxDecoration(
                  // color: Color(0xFF333645),
                  borderRadius: BorderRadius.circular(40)),
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
          ],
        ),
      ),
    );
  }
}
