import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'package:simple_animations/simple_animations.dart';
import 'package:sofia/application/states/store_user_score_state.dart';
import 'package:sofia/providers.dart';
import 'package:sofia/utils/dialogflow.dart';
import 'package:sofia/widgets/recognizer_screen/total_accuracy_painter.dart';
import 'package:sofia/widgets/score_overlay_widgets/error_syncing_widget.dart';
import 'package:sofia/widgets/score_overlay_widgets/score_syncing_widget.dart';
import 'package:supercharged/supercharged.dart';

import 'package:sofia/model/pose.dart';
import 'package:sofia/res/palette.dart';
import 'package:wakelock/wakelock.dart';

enum AnimProps {
  accuracy,
  title,
  subtitle,
  stars,
  time,
  opacity,
}

class ScoreOverlay extends StatefulWidget {
  final Pose pose;
  final double totalAccuracy;
  final DateTime startTime;

  const ScoreOverlay({
    Key key,
    @required this.pose,
    @required this.totalAccuracy,
    @required this.startTime,
  }) : super(key: key);

  @override
  _ScoreOverlayState createState() => _ScoreOverlayState();
}

class _ScoreOverlayState extends State<ScoreOverlay>
    with TickerProviderStateMixin {
  AnimationController _animationController;
  Animation<TimelineValue<AnimProps>> _animation;

  double _accuracy;
  Pose _currentPose;
  String durationString;
  int _stars;

  Timer _timer;
  int _start = 10;

  @override
  void initState() {
    super.initState();
    _currentPose = widget.pose;
    _accuracy = widget.totalAccuracy;
    _stars = (_accuracy * 20).round();
    Duration duration = DateTime.now().difference(widget.startTime);
    // Duration duration = Duration(seconds: 260);

    if (duration.inSeconds < 60) {
      durationString = '${duration.inSeconds}sec';
    } else if (duration.inMinutes < 60) {
      durationString = '${duration.inMinutes}min ${duration.inSeconds % 60}sec';
    } else {
      durationString =
          '${duration.inHours}hr ${duration.inMinutes % 60}min ${duration.inSeconds % 60}sec';
    }

    Dialogflow.poseCompletion(
      poseName: widget.pose.title,
      accuracy: (_accuracy * 100).toStringAsFixed(1),
    );

    _animationController = AnimationController(
      duration: Duration(seconds: 6),
      vsync: this,
    );

    _animation = TimelineTween<AnimProps>()
        .addScene(
          begin: 0.milliseconds,
          end: 1000.milliseconds,
          curve: Curves.easeOut,
        )
        .animate(
          AnimProps.accuracy,
          tween: Tween(begin: 0.0, end: _accuracy),
        )
        .addSubsequentScene(
          delay: 200.milliseconds,
          duration: 600.milliseconds,
          curve: Curves.bounceOut,
        )
        .animate(AnimProps.title, tween: Tween(begin: 0.0, end: 1.0))
        .addSubsequentScene(
          delay: 200.milliseconds,
          duration: 600.milliseconds,
          curve: Curves.easeIn,
        )
        .animate(AnimProps.subtitle, tween: Tween(begin: 0.0, end: 1.0))
        .addSubsequentScene(
          delay: 200.milliseconds,
          duration: 600.milliseconds,
          curve: Curves.easeIn,
        )
        .animate(AnimProps.stars, tween: Tween(begin: 0.0, end: 1.0))
        .addSubsequentScene(
          delay: 200.milliseconds,
          duration: 600.milliseconds,
          curve: Curves.easeIn,
        )
        .animate(AnimProps.time, tween: Tween(begin: 0.0, end: 1.0))
        .addSubsequentScene(
          delay: 200.milliseconds,
          duration: 600.milliseconds,
          curve: Curves.easeInOut,
        )
        .animate(AnimProps.opacity, tween: Tween(begin: 0.0, end: 1.0))
        .parent
        .animatedBy(_animationController);

    _animationController.forward().whenComplete(() {
      context.read(storeUserScoreNotifierProvider).storeScore(
            poseName: _currentPose.title,
            stars: _stars,
            accuracy: double.parse(_accuracy.toStringAsFixed(3)),
            timeInMilliseconds: duration.inMilliseconds,
          );
      // startTimer(context: context);
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    _animationController.dispose();

    super.dispose();
  }

  startTimer({@required BuildContext context}) {
    const oneSec = const Duration(seconds: 1);
    _timer = Timer.periodic(
      oneSec,
      (Timer timer) {
        if (_start == 1) {
          setState(() {
            timer.cancel();
          });

          Wakelock.disable();
          Navigator.of(context).pop();

          context.read(retrieveUserNotifierProvider).retrieveUser();

          SystemChrome.setPreferredOrientations([
            DeviceOrientation.portraitUp,
            DeviceOrientation.portraitDown,
          ]);

          SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);
          FlutterStatusbarcolor.setStatusBarColor(Colors.transparent);
        } else {
          setState(() {
            _start--;
          });
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    // SystemChrome.setPreferredOrientations([
    //   DeviceOrientation.landscapeRight,
    //   DeviceOrientation.landscapeLeft,
    // ]);

    // SystemChrome.setEnabledSystemUIOverlays([]);
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            AnimatedBuilder(
              animation: _animationController,
              builder: (context, child) => _buildAnimation(
                context: context,
                child: child,
                height: height,
                width: width,
              ),
            ),
            ProviderListener<StoreUserScoreState>(
              provider: storeUserScoreNotifierProvider.state,
              onChange: (context, state) {
                if (state is StoredScoreData) {
                  startTimer(context: context);
                }
              },
              child: Consumer(
                builder: (context, watch, child) {
                  final state = watch(
                    storeUserScoreNotifierProvider.state,
                  );

                  return state.when(
                    () => Container(),
                    storing: () => ScoreSyncingWidget(),
                    stored: () => Container(),
                    error: (_) => ErrorSyncingWidget(),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAnimation({
    @required BuildContext context,
    @required Widget child,
    @required height,
    @required width,
  }) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Opacity(
            opacity: _animation.value.get(AnimProps.opacity),
            child: Container(
              width: double.maxFinite,
              color: Palette.accentDarkPink,
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 24.0,
                  top: 10.0,
                  bottom: 10.0,
                ),
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    text: 'You will be redirected to the dashboard in ',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                      fontFamily: 'GoogleSans',
                      letterSpacing: 1,
                    ),
                    children: [
                      TextSpan(
                        text: '$_start seconds',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Container(
            height: height - 50,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Accuracy',
                        style: TextStyle(
                          color: Palette.black,
                          fontSize: 24.0,
                          fontFamily: 'GoogleSans',
                          letterSpacing: 1,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 16.0),
                        child: Container(
                          height: height / 2,
                          width: height / 2,
                          child: CustomPaint(
                            painter: TotalAccuracyPainter(
                              width: width,
                              height: height,
                              accuracy: _animation.value.get(
                                AnimProps.accuracy,
                              ),
                            ),
                            child: SizedBox(
                              height: height / 2,
                              width: height / 2,
                              child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  '${_animation.value.get(AnimProps.accuracy) == 1.0 ? 100 : (_animation.value.get(AnimProps.accuracy) * 100).toStringAsFixed(1)}',
                                  style: TextStyle(
                                    fontSize: 46.0,
                                    fontWeight: FontWeight.bold,
                                    color: Palette.darkShade,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Opacity(
                        opacity: _animation.value.get(AnimProps.title),
                        child: Text(
                          'Congratulations 🎉',
                          style: TextStyle(
                            color: Colors.greenAccent.shade400,
                            fontSize:
                                36.0 * _animation.value.get(AnimProps.title),
                            letterSpacing: 1,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(height: 4.0),
                      Opacity(
                        opacity: _animation.value.get(AnimProps.subtitle),
                        child: Text(
                          'you have successfully completed the ${_currentPose.title} pose',
                          style: TextStyle(
                            color: Palette.black,
                            fontSize: 24.0,
                            letterSpacing: 1,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(height: 16.0),
                      Opacity(
                        opacity: _animation.value.get(AnimProps.stars),
                        child: Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Palette.accentDarkPink,
                              size: 36.0,
                            ),
                            SizedBox(width: 16.0),
                            RichText(
                              text: TextSpan(
                                text: '$_stars ',
                                style: TextStyle(
                                  color: Palette.accentDarkPink,
                                  fontSize: 26.0,
                                  fontFamily: 'GoogleSans',
                                  fontWeight: FontWeight.bold,
                                ),
                                children: [
                                  TextSpan(
                                    text: '/ 20',
                                    style: TextStyle(
                                      color: Palette.accentDarkPink
                                          .withOpacity(0.5),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 16.0),
                      Opacity(
                        opacity: _animation.value.get(AnimProps.time),
                        child: Row(
                          children: [
                            Icon(
                              Icons.watch_later_outlined,
                              color: Palette.accentDarkPink,
                              size: 36.0,
                            ),
                            SizedBox(width: 16.0),
                            Text(
                              durationString,
                              style: TextStyle(
                                color: Palette.accentDarkPink,
                                fontSize: 26.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
