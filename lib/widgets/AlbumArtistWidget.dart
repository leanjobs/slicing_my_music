import 'package:flutter/material.dart';
import 'package:music_player/pages/DetailAlbumScreen.dart';

class AlbumArtistWidget extends StatelessWidget {
  const AlbumArtistWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            for (int i = 1; i < 6; i++)
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return DetailAlbumScreen();
                  }));
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.03,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        "images/posterAlbum.jpeg",
                        width: MediaQuery.of(context).size.width * 0.35,
                        fit: BoxFit.cover,
                      ),
                      Text(
                        "Super",
                        style: TextStyle(
                            decoration: TextDecoration.none,
                            fontFamily: 'Metropolis',
                            fontSize: 18,
                            fontWeight: FontWeight.w900,
                            color: Colors.white),
                      ),
                      Text(
                        "2023.Album",
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          fontFamily: 'Metropolis',
                          fontSize: 14,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
              ),
          ],
        ));
  }
}
