import 'package:flutter/foundation.dart';

class Helper {
  static String generateTimeString({@required Duration duration}) {
    String durationString;

    if (duration.inSeconds < 60) {
      durationString = '${duration.inSeconds}sec';
    } else if (duration.inMinutes < 60) {
      durationString = '${duration.inMinutes}min ${duration.inSeconds % 60}sec';
    } else {
      durationString = '${duration.inHours}hr ${duration.inMinutes % 60}min';
    }

    return durationString;
  }
}
