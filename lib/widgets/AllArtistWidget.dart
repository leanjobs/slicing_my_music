import 'package:flutter/material.dart';
import 'package:music_player/pages/ArtistScreen.dart';

class AllArtistWidget extends StatelessWidget {
  const AllArtistWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.width * 0.03,
      ),
      child: Column(
        children: [
          for (int i = 0; i < 10; i++)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                for (int i = 1; i < 5; i++)
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return ArtistScreen();
                      }));
                    },
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
              ],
            ),
        ],
      ),
    );
  }
}
