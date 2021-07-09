import 'dart:async';

class VoiceTimer {
  static Timer voiceTimer;
  static int voiceListenedRetension = 6;

  static startTimer(Function(bool) callback) {
    const oneSec = const Duration(seconds: 1);
    callback(false);
    // if (voiceTimer != null) {
    //   voiceTimer.cancel();
    // }

    voiceTimer = Timer.periodic(
      oneSec,
      (Timer timer) {
        if (voiceListenedRetension == 1) {
          voiceTimer.cancel();
          callback(true);
        } else {
          voiceListenedRetension--;
        }
      },
    );
  }
}
