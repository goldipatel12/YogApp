import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sofia/res/palette.dart';

// SystemUiOverlayStyle(
//         statusBarColor: Palette.loginBackground,
//         statusBarIconBrightness: Brightness.dark,
//       ),

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Palette.loginBackground,
        child: Center(
          child: Hero(
            tag: 'sofia_text',
            child: Text(
              "YogApp",
              style: TextStyle(
                fontFamily: 'TitilliumWeb',
                fontSize: 60,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
