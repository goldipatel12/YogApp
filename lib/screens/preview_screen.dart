import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'package:sofia/main.dart';
import 'package:sofia/model/pose.dart';
import 'package:sofia/screens/recognizer_screen.dart';
import 'package:sofia/screens/timer_overlay.dart';
import 'package:sofia/utils/dialogflow.dart';
import 'package:sofia/utils/video_manager.dart';
import 'package:sofia/widgets/preview_screen/camera_preview_widget.dart';
import 'package:sofia/widgets/preview_screen/rotate_to_landspace_widget.dart';
import 'package:tflite/tflite.dart';
import 'package:wakelock/wakelock.dart';

class PreviewScreen extends StatefulWidget {
  final Pose pose;

  const PreviewScreen({
    Key key,
    @required this.pose,
  }) : super(key: key);

  @override
  _PreviewScreenState createState() => _PreviewScreenState();
}

class _PreviewScreenState extends State<PreviewScreen> {
  // VideoPlayerController _videoController;

  CameraController _cameraController;

  List<dynamic> _recognitions;
  // int _imageHeight = 0;
  // int _imageWidth = 0;

  bool _isBodyVisible = false;
  bool isDetecting = false;
  bool isInLandscape = false;

  int totalPartsInFrame = 0;
  int totalNumOfTimesPositive = 0;

  // Future<void> initializeVideoController() async {
  //   _videoController = VideoPlayerController.network(
  //       'https://stream.mux.com/kiBM5MAziq4wGLnc2GCVixAL8EXYg7wcUDA00VcSkzNM.m3u8.m3u8');
  //   await _videoController.initialize();
  // }

  setRecognitions(recognitions, imageHeight, imageWidth) async {
    totalPartsInFrame = 0;
    _isBodyVisible = false;
    if (mounted) {
      setState(() {
        _recognitions = recognitions;
        // _imageHeight = imageHeight;
        // _imageWidth = imageWidth;
      });
      // _recognitions.isNotEmpty
      //     ? print('RECOG: ${_recognitions[0]['keypoints']}')
      //     : null;

      if (_recognitions.isNotEmpty) {
        Map<dynamic, dynamic> partsMap = _recognitions[0]['keypoints'];
        partsMap.forEach((key, value) {
          double score = value['score'];

          if (score > 0.5) {
            totalPartsInFrame++;
          }
        });

        print('TOTAL PARTS: $totalPartsInFrame');

        if (totalPartsInFrame > 11) {
          setState(() {
            _isBodyVisible = true;
            totalNumOfTimesPositive++;
            // Tflite?.close();
            // _cameraController?.stopImageStream();
          });
        } else {
          setState(() {
            totalNumOfTimesPositive = 0;
          });
        }

        if (totalNumOfTimesPositive > 5) {
          // Tflite?.close();
          _cameraController?.stopImageStream();
          print('READY');
          await Navigator.of(context)
              .push(
                PageRouteBuilder(
                  opaque: false,
                  pageBuilder: (context, _, __) => TimerOverlay(
                    pose: widget.pose,
                  ),
                ),
              )
              .whenComplete(
                () => Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => RecognizerScreen(
                      pose: widget.pose,
                      cameraController: _cameraController,
                    ),
                  ),
                ),
              );
        }
      }
    }
  }

  Future<void> initializeCameraController() async {
    await Tflite.loadModel(
      model: "assets/tflite/posenet.tflite",
      numThreads: 4,
    );

    _cameraController = CameraController(cameras[1], ResolutionPreset.low);
    _cameraController.initialize().then((_) async {
      if (!mounted) {
        return;
      }

      _cameraController.startImageStream((CameraImage image) {
        // print('IMAGE: ${image.height} x ${image.width}');

        if (!isDetecting &&
            isInLandscape &&
            _cameraController.value.isStreamingImages) {
          isDetecting = true;

          Tflite.runPoseNetOnFrame(
            bytesList: image.planes.map((plane) {
              return plane.bytes;
            }).toList(),
            imageHeight: image.height,
            imageWidth: image.width,
            asynch: true,
            rotation: 180,
            numResults: 1,
            threshold: 0.2,
          ).then(
            (recognitions) {
              // print(recognitions);
              setRecognitions(
                recognitions,
                image.height,
                image.width,
              );
              isDetecting = false;
            },
          );
        }
      });
    });
  }

  fixInLandscape() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      // DeviceOrientation.landscapeLeft,
    ]);
    SystemChrome.setEnabledSystemUIOverlays([]);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      setState(() {
        isInLandscape = true;
      });
    });
  }

  @override
  void initState() {
    // _videoController = _videoController..play();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
    ]);

    Wakelock.enable();

    initializeCameraController();
    VideoManager.initializeVideoController(videoUrl: widget.pose.videoUrl);

    Dialogflow.bodyVisible();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    FlutterStatusbarcolor.setStatusBarColor(Colors.white);
    FlutterStatusbarcolor.setStatusBarWhiteForeground(false);

    return WillPopScope(
      onWillPop: () async {
        FlutterStatusbarcolor.setStatusBarColor(Colors.transparent);
        // SystemChrome.setPreferredOrientations([
        //   DeviceOrientation.portraitUp,
        //   DeviceOrientation.portraitDown,
        // ]);

        return true;
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        body: OrientationBuilder(
          builder: (context, orientation) {
            if (orientation == Orientation.portrait) {
              return RotateToLandscapeWidget();
            } else {
              fixInLandscape();

              if (_cameraController != null) {
                if (_cameraController.value.isInitialized) {
                  return Stack(
                    children: [
                      CameraPreviewWidget(
                        isBodyVisible: _isBodyVisible,
                        cameraController: _cameraController,
                      ),
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.only(
                            top: 16.0,
                            bottom: 8.0,
                          ),
                          child: Image.asset(
                            'assets/images/human_outline.png',
                            color: Colors.white54,
                          ),
                        ),
                      ),
                    ],
                  );
                } else {
                  return Container(
                    color: Colors.white,
                  );
                }
              } else {
                return Container(
                  color: Colors.white,
                );
              }
            }
          },
        ),
      ),
    );

    // return Scaffold(
    //   body: SafeArea(
    //     child: Stack(
    //       children: [
    //         Container(
    //           child: Center(
    //             child: Text(
    //               'Please make sure that your entire body is visible within the area.',
    //             ),
    //           ),
    //         ),
    //       ],
    //     ),
    //   ),
    // );
    // return Scaffold(
    //   body: SafeArea(
    //     child: Column(
    //       children: [
    //         _videoController.value.initialized
    //             ? Flexible(
    //                 child: AspectRatio(
    //                   aspectRatio: _videoController.value.aspectRatio,
    //                   child: VideoPlayer(_videoController),
    //                 ),
    //               )
    //             : Container(),
    //       ],
    //     ),
    //   ),
    // );
  }
}
