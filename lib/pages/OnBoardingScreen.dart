import 'package:flutter/material.dart';
import 'package:music_player/previews/Preview.dart';
import 'package:music_player/previews/Preview1.dart';
import 'package:music_player/previews/Preview2.dart';
import 'package:music_player/previews/Preview3.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  PageController _controller = PageController();
  bool onLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                onLastPage = (index == 2);
              });
            },
            children: [Preview(), Preview1(), Preview2()],
          ),
          Container(
              alignment: Alignment(0, 0.88),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //skip
                  GestureDetector(
                    onTap: () {
                      _controller.jumpToPage(2);
                    },
                    child: Text(
                      "skip",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  //dots
                  SmoothPageIndicator(
                      controller: _controller,
                      count: 3,
                      effect: SwapEffect(type: SwapType.yRotation)),
                  //next or done
                  onLastPage
                      //done
                      ? GestureDetector(
                          onTap: () {
                            // Navigator.pushNamed(context, "preview3");
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return Preview3();
                            }));
                          },
                          child: Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                                color: Color(0xFFD9D9D9),
                                borderRadius: BorderRadius.circular(50)),
                            child: Icon(
                              Icons.arrow_forward,
                              size: 30,
                            ),
                          ))
                      //next
                      : GestureDetector(
                          onTap: () {
                            _controller.nextPage(
                              duration: Duration(milliseconds: 500),
                              curve: Curves.easeIn,
                            );
                          },
                          child: Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                                color: Color(0xFFD9D9D9),
                                borderRadius: BorderRadius.circular(50)),
                            child: Icon(
                              Icons.arrow_forward,
                              size: 30,
                            ),
                          ))
                ],
              ))
        ],
      ),
    );
  }
}
