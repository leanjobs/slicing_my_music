import 'package:flutter/material.dart';
import 'package:music_player/pages/ResetPasswordScreen.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

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
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding:
                      EdgeInsets.only(right: 30, left: 30, bottom: 70, top: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Forget \nPassword",
                        style: TextStyle(
                            fontSize: 54,
                            fontWeight: FontWeight.w900,
                            color: Colors.white),
                      ),
                      SizedBox(height: 20),
                      Text(
                        "Don't worry! it happens. Please enter your email and we will send you a link to your email.",
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                      SizedBox(height: 25),
                      TextFormField(
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: BorderSide(color: Colors.grey)),
                            hintText: "Email",
                            hintStyle: TextStyle(
                              fontSize: 15,
                              color: Colors.grey.withOpacity(0.5),
                            ),
                            prefixIcon: Icon(Icons.mail_lock_outlined)),
                      ),
                      SizedBox(height: 25),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return ResetPassword();
                                }));
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xFFD9D9D9),
                                fixedSize: Size.fromHeight(55),
                              ),
                              child: Text(
                                "Send",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 20),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 25),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Resend link in 03:00",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      )
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
