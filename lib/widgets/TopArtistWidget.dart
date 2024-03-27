import 'package:flutter/material.dart';
import 'package:music_player/pages/ArtistScreen.dart';

class TopArtistWidget extends StatelessWidget {
  const TopArtistWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          for (int i = 1; i < 10; i++)
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return ArtistScreen();
                }));
              },
              child: Padding(
                padding: const EdgeInsets.all(7),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Image.asset(
                        "images/profile.jpeg",
                        height: 80,
                        width: 80,
                      ),
                    ),
                    Text(
                      "Seventeen",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
}
