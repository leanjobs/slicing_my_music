import 'package:flutter/material.dart';
import 'package:music_player/constants/string.dart';
import 'package:music_player/models/playlist.dart';
import 'package:music_player/widgets/SongsAlbumWidget.dart';
import 'package:spotify/spotify.dart' as spotify;
import 'package:youtube_explode_dart/youtube_explode_dart.dart';
import 'package:music_player/models/playlist.dart';

class DetailPlaylistScreen extends StatefulWidget {
  @override
  State<DetailPlaylistScreen> createState() => _DetailPlaylistScreenState();
}

class _DetailPlaylistScreenState extends State<DetailPlaylistScreen> {
  @override
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("images/posterAlbum.jpeg"), fit: BoxFit.cover),
      ),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xFF191A1E).withOpacity(0.8),
                  Color(0xFF191A1E).withOpacity(1.0),
                  Color(0xFF191A1E),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: MediaQuery.of(context).size.height * 0.03,
                    horizontal: MediaQuery.of(context).size.width * 0.03,
                  ),
                  child: AppBar(
                      title: Text(
                        'Detail Album',
                        style: TextStyle(
                          fontFamily: 'Metropolis',
                          decoration: TextDecoration.none,
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
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.04,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Image.asset(
                          "images/posterAlbum.jpeg",
                          width: MediaQuery.of(context).size.width * 0.35,
                        ),
                      ),
                      Flexible(
                        child: Padding(
                          padding: EdgeInsets.only(
                              left: MediaQuery.of(context).size.width * 0.02),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "helllow",
                                style: TextStyle(
                                  fontFamily: 'Metropolis',
                                  decoration: TextDecoration.none,
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.w900,
                                ),
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                              ),
                              // Container(
                              //   decoration: BoxDecoration(color: Colors.amber),
                              //   child: Text("lorem ipsum iohchbhbiasbias"),
                              // ),
                              Text(
                                "lorem ipsum",
                                style: TextStyle(
                                  fontFamily: 'Metropolis',
                                  decoration: TextDecoration.none,
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w900,
                                ),
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 28, horizontal: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Songs",
                        style: TextStyle(
                            fontFamily: 'Metropolis',
                            decoration: TextDecoration.none,
                            fontSize: 25,
                            fontWeight: FontWeight.w900,
                            color: Colors.white),
                      ),
                    ],
                  ),
                ),
                SongsAlbumWidget()
              ],
            ),
          )
        ],
      ),
    );
  }
}
