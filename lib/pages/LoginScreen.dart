import 'package:flutter/material.dart';
import 'package:music_player/navigationBar/BottomBar.dart';
import 'package:music_player/pages/ForgetPasswordScreen.dart';
import 'package:music_player/pages/HomeScreen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
            Center(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(
                          MediaQuery.of(context).size.width * 0.08),
                      child: SingleChildScrollView(
                        child: Stack(
                          children: [
                            Center(
                              child: Container(
                                margin: EdgeInsets.only(top: 80),
                                width: MediaQuery.of(context).size.width * 0.9,
                                // height: MediaQuery.of(context).size.height * ,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20)),
                                child: Container(
                                  margin: EdgeInsets.only(top: 60),
                                  padding: EdgeInsets.all(30),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Log In",
                                        style: TextStyle(
                                            fontSize: 36,
                                            fontWeight: FontWeight.w900),
                                      ),
                                      SizedBox(height: 10),
                                      TextFormField(
                                        decoration: InputDecoration(
                                            contentPadding: EdgeInsets.all(
                                                MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    0.01),
                                            border: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(30),
                                                borderSide: BorderSide(
                                                    color: Colors.grey)),
                                            hintText: "Email",
                                            hintStyle: TextStyle(
                                              fontSize: 15,
                                              color:
                                                  Colors.grey.withOpacity(0.5),
                                            ),
                                            prefixIcon:
                                                Icon(Icons.mail_lock_outlined)),
                                      ),
                                      SizedBox(height: 10),
                                      TextFormField(
                                        decoration: InputDecoration(
                                            contentPadding: EdgeInsets.all(
                                                MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    0.01),
                                            border: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(30),
                                                borderSide: BorderSide(
                                                    color: Colors.grey)),
                                            hintText: "Password",
                                            hintStyle: TextStyle(
                                              fontSize: 15,
                                              color:
                                                  Colors.grey.withOpacity(0.5),
                                            ),
                                            prefixIcon:
                                                Icon(Icons.key_outlined)),
                                      ),
                                      SizedBox(height: 30),
                                      SizedBox(
                                        width: double.infinity,
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.07,
                                        child: ElevatedButton(
                                          onPressed: () {
                                            Navigator.push(context,
                                                MaterialPageRoute(
                                                    builder: (context) {
                                              return BottomBar();
                                            }));
                                          },
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Color(0xFFD9D9D9),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                            ),
                                            padding: EdgeInsets.symmetric(
                                                vertical: 15),
                                          ),
                                          child: Text(
                                            "Log In",
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 15,
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      GestureDetector(
                                        onTap: () {
                                          Navigator.push(context,
                                              MaterialPageRoute(
                                                  builder: (context) {
                                            return ForgetPasswordScreen();
                                          }));
                                        },
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              "Forget Password? ",
                                              style: TextStyle(
                                                color: Colors.black,
                                                decoration: TextDecoration.none,
                                                fontWeight: FontWeight.w300,
                                                fontSize: 13,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      SizedBox(
                                        width: double.infinity,
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.07,
                                        child: ElevatedButton(
                                          onPressed: () {},
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Color(0xFF68BFEA),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                            ),
                                            padding: EdgeInsets.symmetric(
                                                vertical: 15),
                                          ),
                                          child: Text(
                                            "Log In with google",
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 15,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Center(
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.4,
                                child: Image.asset("images/onlyLogo.png"),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
