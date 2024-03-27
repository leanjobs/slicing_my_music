import 'package:flutter/material.dart';
import 'package:music_player/pages/MoreArtistScreen.dart';
import 'package:music_player/widgets/ForYouWidget.dart';
import 'package:music_player/widgets/TopArtistWidget.dart';
import 'package:music_player/widgets/TrendingWidget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 40, horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Discover",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 36,
                              fontWeight: FontWeight.w900),
                        ),
                        Text(
                          "For you",
                          style: TextStyle(
                            color: Colors.white54,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(
                          color: Color(0xFF1E9FE0),
                          width: 4,
                        ),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Image.asset(
                          "images/profile.jpeg",
                          height: 50,
                          width: 50,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              ForYouWidget(),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 28, horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Top Artist",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w900,
                          color: Colors.white),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context, rootNavigator: true)
                            .push(MaterialPageRoute(builder: (context) {
                          return MoreArtistScreen();
                        }));
                      },
                      child: Row(
                        children: [
                          Text(
                            "View All",
                            style: TextStyle(
                              fontSize: 15,
                              color: Color(0xFF1E9FE0),
                            ),
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: Color(0xFF1E9FE0),
                            size: 15,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              TopArtistWidget(),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 28, horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Trending",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w900,
                          color: Colors.white),
                    ),
                  ],
                ),
              ),
              TrendingWidget()
            ],
          ),
        ),
      ),
    );
  }
}
