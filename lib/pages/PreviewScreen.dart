import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:music_player/previews/Preview.dart';

class PreviewScreen extends StatelessWidget {
  const PreviewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        
        globalBackgroundColor: Color(0xFF191A1E),
        scrollPhysics: BouncingScrollPhysics(),
        pages: [
          // PageViewModel(
          //   titleWidget: Text(
          //     "Preview 1",
          //     style: TextStyle(
          //       fontSize: 30,
          //       fontWeight: FontWeight.bold,
          //       color: Colors.white,
          //     ),
          //   ),
          //   bodyWidget: preview1(),
          // ),
          // PageViewModel(
          //   titleWidget: Text(
          //     "Preview 1",
          //     style: TextStyle(
          //       fontSize: 30,
          //       fontWeight: FontWeight.bold,
          //       color: Colors.white,
          //     ),
          //   ),
          //   bodyWidget: preview1(),
          // ),
          // PageViewModel(
          //   titleWidget: Text(
          //     "Preview 1",
          //     style: TextStyle(
          //       fontSize: 30,
          //       fontWeight: FontWeight.bold,
          //       color: Colors.white,
          //     ),
          //   ),
          //   bodyWidget: preview1(),
          // ),

          // PageViewModel(
          //   titleWidget: Text(
          //     "write title of page",
          //     style: TextStyle(
          //         fontSize: 30,
          //         fontWeight: FontWeight.bold,
          //         color: Colors.white),
          //   ),
          //   body:
          //       "write the more desc of the page. write the more desc of the page. write the more desc of the page",
          //   image: Image.asset(
          //     "images/logo.png",
          //     height: 400,
          //     width: 400,
          //   ),
          // ),
          // PageViewModel(
          //   titleWidget: Text(
          //     "write title of page",
          //     style: TextStyle(
          //         fontSize: 30,
          //         fontWeight: FontWeight.bold,
          //         color: Colors.white),
          //   ),
          //   body:
          //       "write the more desc of the page. write the more desc of the page. write the more desc of the page",
          //   image: Image.asset(
          //     "images/logo.png",
          //     height: 400,
          //     width: 400,
          //   ),
          // ),
        ],
        onDone: () {},
        onSkip: () {},
        showSkipButton: true,
        skip: Text(
          "skip",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
            color: Colors.white,
          ),
        ),
        next: Icon(
          Icons.arrow_forward,
          color: Colors.white,
        ),
        done: Text(
          "done",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
            color: Colors.white,
          ),
        ),
        dotsDecorator: DotsDecorator(
            size: Size.square(10.0),
            activeSize: Size(20.0, 10.0),
            color: Colors.white,
            activeColor: Colors.grey,
            spacing: EdgeInsets.symmetric(horizontal: 3.0),
            activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0))),
      ),
    );
  }
}
