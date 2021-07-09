import 'package:flutter/material.dart';
import 'package:sofia/res/palette.dart';
import 'acuracy_painter.dart';

class ScroreViewerWidget extends StatefulWidget {
  const ScroreViewerWidget({
    Key key,
    @required this.accuracy,
    @required this.accuracyTween,
  }) : super(key: key);

  final double accuracy;
  final Tween<double> accuracyTween;

  @override
  _ScroreViewerWidgetState createState() => _ScroreViewerWidgetState();
}

class _ScroreViewerWidgetState extends State<ScroreViewerWidget>
    with SingleTickerProviderStateMixin {
  Animation<double> _animation;
  AnimationController _animationController;

  void setNewPosition() {
    widget.accuracyTween.begin = widget.accuracyTween.end;
    _animationController.reset();
    widget.accuracyTween.end = widget.accuracy;
    _animationController.forward();
  }

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 20),
    );

    _animation = widget.accuracyTween.animate(_animationController)
      ..addListener(() {
        setState(() {});
      });

    _animationController.forward();
    if (_animation.value != 0.0) {
      setNewPosition();
    }
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    print('ANIM VALUE: ${_animation.value}');

    return Stack(
      children: [
        CustomPaint(
          painter: AccuracyPainter(
            width: width,
            height: height,
            accuracy: widget.accuracy,
          ),
          child: SizedBox(
            height: height / 2,
            width: height / 2,
            child: Align(
              alignment: Alignment.center,
              child: Text(
                '${widget.accuracy == 1.0 ? 100 : (widget.accuracy * 100).toStringAsFixed(0)}',
                style: TextStyle(
                  fontSize: 32.0,
                  fontWeight: FontWeight.bold,
                  color: Palette.darkShade,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
