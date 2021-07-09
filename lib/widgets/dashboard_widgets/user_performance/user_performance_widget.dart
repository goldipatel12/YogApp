import 'package:flutter/material.dart';

import 'package:sofia/model/user.dart';
import 'package:sofia/res/palette.dart';
import 'package:sofia/utils/helper.dart';

class UserPerformanceWidget extends StatelessWidget {
  final User user;

  const UserPerformanceWidget({
    Key key,
    @required this.user,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 16.0),
      child: Container(
        decoration: BoxDecoration(
          color: Palette.darkShade,
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 16.0,
                left: 16.0,
                right: 16.0,
                bottom: 16.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.star,
                    color: Palette.mediumShade,
                    size: 36,
                  ),
                  SizedBox(width: 8.0),
                  Text(
                    '${user.stars} stars',
                    style: TextStyle(
                      fontSize: 28.0,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 1,
                      color: Palette.lightShade,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 16.0,
                right: 16.0,
                bottom: 16.0,
              ),
              child: Container(
                color: Colors.white38,
                width: double.maxFinite,
                height: 2,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 16.0,
                    bottom: 16.0,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.multiline_chart,
                        color: Palette.mediumShade,
                        size: 32.0,
                      ),
                      SizedBox(width: 8.0),
                      Text(
                        '${(user.accuracy * 100).toStringAsFixed(1)} %',
                        style: TextStyle(
                          fontSize: 22.0,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 1,
                          color: Palette.lightShade,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 16.0),
                  child: Container(
                    width: 2,
                    height: 36,
                    color: Colors.white38,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    right: 16.0,
                    bottom: 16.0,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.access_time,
                        color: Palette.mediumShade,
                        size: 32.0,
                      ),
                      SizedBox(width: 8.0),
                      Text(
                        Helper.generateTimeString(
                          duration: Duration(milliseconds: user.time),
                        ),
                        style: TextStyle(
                          fontSize: 22.0,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 1,
                          color: Palette.lightShade,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
