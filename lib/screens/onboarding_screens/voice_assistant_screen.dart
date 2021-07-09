import 'dart:async';
import 'dart:typed_data';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'package:sofia/res/palette.dart';
import 'package:sofia/screens/dashboard_screen.dart';
import 'package:sofia/utils/dialogflow.dart';

import '../../providers.dart';

class VoiceAssistantScreen extends StatefulWidget {
  @override
  _VoiceAssistantScreenState createState() => _VoiceAssistantScreenState();
}

class _VoiceAssistantScreenState extends State<VoiceAssistantScreen> {
  bool _hasLoaded = false;
  Uint8List audioStream;

  bool _hasCompletedSpeaking = false;

  int _start = 5;

  List<AnimatedText> _animText = [];

  startTimer({@required BuildContext context}) {
    const oneSec = const Duration(seconds: 1);
    Timer.periodic(
      oneSec,
      (Timer timer) {
        if (_start == 1) {
          setState(() {
            timer.cancel();
          });

          SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
            statusBarColor: Colors.white,
            statusBarIconBrightness: Brightness.dark,
          ));

          Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (context) => DashboardScreen(),
            ),
          );
        } else {
          setState(() {
            _start--;
          });
        }
      },
    );
  }

  @override
  void initState() {
    super.initState();

    Dialogflow.initialize().then((response) {
      List<String> responseString = response.text.split('.');

      List<AnimatedText> buildAnimText = [];

      responseString.forEach((element) {
        buildAnimText.add(
          TyperAnimatedText(
            element,
            speed: Duration(milliseconds: 60),
            textStyle: TextStyle(
              color: Palette.accentDarkPink,
              fontFamily: 'GoogleSans',
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        );
      });

      Uint8List audioBytes = response.outputAudioBytes;

      setState(() {
        _hasLoaded = true;
        _animText = buildAnimText;
      });

      Dialogflow.playSpeech(
        audioBytes: audioBytes,
        completionCallback: (isCompleted) => print(isCompleted),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    // double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AvatarGlow(
                    endRadius: 100,
                    glowColor: Palette.darkShade,
                    child: Material(
                      color: Colors.transparent,
                      child: Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100.0),
                          boxShadow: [
                            BoxShadow(
                              color: Palette.darkShade,
                              blurRadius: 10,
                              offset: Offset(0, 0), // Shadow position
                            ),
                          ],
                        ),
                        child: Image.asset(
                          'assets/images/sofia_assistant_2.png',
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 16.0),
                  Visibility(
                    visible: _hasLoaded,
                    child: AnimatedTextKit(
                      isRepeatingAnimation: false,
                      // pause: Duration(milliseconds: 2000),
                      onFinished: () {
                        setState(() {
                          _hasCompletedSpeaking = true;
                        });

                        context
                            .read(voiceListenNotifierProvider)
                            .speechInitialization();

                        context
                            .read(retrieveTracksNotifierProvider)
                            .retrieveTracks();

                        context
                            .read(retrievePosesNotifierProvider('beginners'))
                            .retrievePoses();

                        context
                            .read(retrieveUserNotifierProvider)
                            .retrieveUser();

                        startTimer(context: context);
                      },
                      animatedTexts: _animText.isEmpty
                          ? [
                              TyperAnimatedText(
                                '',
                                textStyle: TextStyle(
                                  color: Palette.accentDarkPink,
                                  fontFamily: 'GoogleSans',
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ]
                          : _animText,
                    ),
                  )
                ],
              ),
            ),
          ),
          SafeArea(
            child: Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    text: 'Meet ',
                    style: TextStyle(
                      color: Palette.accentDarkPink,
                      fontSize: 24.0,
                      fontFamily: 'GoogleSans',
                      letterSpacing: 1,
                    ),
                    children: [
                      TextSpan(
                        text: 'YogApp',
                        style: TextStyle(
                          color: Palette.accentDarkPink,
                          fontWeight: FontWeight.bold,
                          fontSize: 32.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Visibility(
            visible: _hasCompletedSpeaking,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: double.maxFinite,
                color: Palette.accentDarkPink,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      text: 'Taking you to the home screen in ',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                        fontFamily: 'GoogleSans',
                        letterSpacing: 0.5,
                      ),
                      children: [
                        TextSpan(
                          text: '$_start seconds',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
