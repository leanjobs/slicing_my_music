import 'package:flutter/material.dart';
import 'package:music_player/navigationBar/BottomBar.dart';
import 'package:music_player/pages/HomeScreen.dart';

class VerificationScreen extends StatelessWidget {
  const VerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/imgPrev3.png"), fit: BoxFit.cover),
        ),
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xFF191A1E).withOpacity(0.1),
                    Color(0xFF191A1E).withOpacity(0.8),
                    Color(0xFF191A1E).withOpacity(1.0),
                    Color(0xFF191A1E),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding:
                      EdgeInsets.only(right: 30, left: 30, bottom: 70, top: 20),
                  child: Stack(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 100),
                        width: MediaQuery.of(context).size.width - 60,
                        height: MediaQuery.of(context).size.height - 440,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: Container(
                          margin: EdgeInsets.only(top: 60),
                          padding: EdgeInsets.all(30),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Verification \nCode",
                                style: TextStyle(
                                    fontSize: 36, fontWeight: FontWeight.w900),
                              ),
                              SizedBox(height: 10),
                              Text(
                                "Verify your account by entering the 4 digits code we send to: a*****@gmail.com",
                                style: TextStyle(fontSize: 15),
                              ),
                              SizedBox(height: 20),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Expanded(
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                            borderSide:
                                                BorderSide(color: Colors.grey)),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 12),
                                  Expanded(
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                            borderSide:
                                                BorderSide(color: Colors.grey)),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 12),
                                  Expanded(
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                            borderSide:
                                                BorderSide(color: Colors.grey)),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 12),
                                  Expanded(
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                            borderSide:
                                                BorderSide(color: Colors.grey)),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 20),
                              SizedBox(
                                width: double.infinity,
                                height: 60,
                                child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: (context) {
                                      return BottomBar();
                                    }));
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Color(0xFFD9D9D9),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    padding: EdgeInsets.symmetric(vertical: 15),
                                  ),
                                  child: Text(
                                    "Send",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 18),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Resend code in 03:00",
                                    style: TextStyle(
                                      color: Colors.black,
                                      decoration: TextDecoration.none,
                                      fontWeight: FontWeight.w100,
                                      fontSize: 13,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 18),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                          left: (MediaQuery.of(context).size.width - 260) / 2,
                          top: -20,
                          child: Container(
                            height: 200,
                            width: 200,
                            child: Image.asset("images/onlyLogo.png"),
                          ))
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
