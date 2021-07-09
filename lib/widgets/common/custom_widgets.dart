import 'package:flutter/material.dart';

class CustomWidget {
  static SnackBar customSnackBar({@required String content}) {
    return SnackBar(
      backgroundColor: Colors.black,
      content: Text(
        content,
        style: TextStyle(
          color: Colors.white,
          letterSpacing: 0.5,
        ),
      ),
    );
  }
}
