import 'package:flutter/material.dart';
import 'dart:math';

class GenresWidget extends StatelessWidget {
  const GenresWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        children: [
          for (int i = 0; i < 7; i++)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                for (int i = 0; i < 2; i++)
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 170,
                      height: 170,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color:
                              Color((Random().nextDouble() * 0xFFFFFF).toInt())
                                  .withOpacity(1.0),
                          border: Border.all(
                            color: Color(0xFF1E9FE0).withOpacity(0.5),
                            width: 6,
                          )),
                      child: Center(
                        child: Text(
                          "Chill",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                    ),
                  ),
              ],
            ),
        ],
      ),
    );
  }
}
