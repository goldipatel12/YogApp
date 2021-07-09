import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sofia/model/user.dart';
import 'package:sofia/providers.dart';
import 'package:sofia/res/palette.dart';
import 'package:sofia/utils/database.dart';
import 'package:sofia/widgets/dashboard_widgets/poses_row/poses_initial_widget.dart';
import 'package:sofia/widgets/dashboard_widgets/poses_row/poses_row_widget.dart';
import 'package:sofia/widgets/dashboard_widgets/sofia_assistant_button.dart';
import 'package:sofia/widgets/dashboard_widgets/tracks_list/tracks_initial_widget.dart';
import 'package:sofia/widgets/dashboard_widgets/tracks_list/tracks_list_widget.dart';
import 'package:sofia/widgets/dashboard_widgets/user_performance/user_performance_widget.dart';

// TODO: Add caching of the data to prevent empty
// screen during the intial load of the data from firebase
class DashboardScreen extends StatefulWidget {
  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  String imageUrl;
  String userName;

  @override
  void initState() {
    super.initState();
    User userData = Database.user;
    imageUrl = userData.imageUrl;
    userName = userData.userName;
  }

  @override
  Widget build(BuildContext context) {
    double screeWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton: SofiaAssistantButton(),
      body: SafeArea(
        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverAppBar(
              backgroundColor: Colors.white,
              elevation: 4,
              centerTitle: false,
              pinned: true,
              title: Text(
                'Hello, $userName',
                style: TextStyle(
                  fontSize: 26.0,
                  fontWeight: FontWeight.bold,
                  color: Palette.black,
                ),
              ),
              actions: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 16.0),
                    child: Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(60),
                          child: Container(
                            color: Palette.lightDarkShade,
                            child: Padding(
                              padding: const EdgeInsets.all(6.0),
                              child: Icon(
                                Icons.person,
                                color: Palette.lightShade,
                                size: 26,
                              ),
                            ),
                          ),
                        ),
                        imageUrl != null
                            ? ClipRRect(
                                borderRadius: BorderRadius.circular(60),
                                child: SizedBox(
                                  width: 38.0,
                                  child: Image.network(imageUrl),
                                ),
                              )
                            : Container(),
                      ],
                    ),
                  ),
                )
              ],
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                    child: Text(
                      'Inhale the future, exhale the past.', // Update the quote from backend
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        color: Palette.black.withOpacity(0.5),
                      ),
                    ),
                  ),
                  SizedBox(height: 16.0),
                  // Your favourites
                  Consumer(
                    builder: (context, watch, child) {
                      final state = watch(
                        retrieveUserNotifierProvider.state,
                      );

                      return state.when(
                        () => Container(),
                        retrieving: () => Container(),
                        retrieved: (_) => Container(),
                        hasAccuracyData: (user) => UserPerformanceWidget(
                          user: user,
                        ),
                        error: (_) => Container(),
                      );
                    },
                  ),
                  SizedBox(height: 16.0),
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                    child: Text(
                      'For beginners',
                      style: TextStyle(
                        fontSize: 32.0,
                        fontWeight: FontWeight.bold,
                        color: Palette.black,
                      ),
                    ),
                  ),
                  SizedBox(height: 16.0),
                  Consumer(
                    builder: (context, watch, child) {
                      final state = watch(
                        retrievePosesNotifierProvider('beginners').state,
                      );

                      return state.when(
                        () => PosesInitialWidget(
                          screeWidth: screeWidth,
                        ),
                        retrieving: () => PosesInitialWidget(
                          screeWidth: screeWidth,
                        ),
                        retrieved: (poses) => PosesRowWidget(
                          screeWidth: screeWidth,
                          poses: poses,
                        ),
                        error: (message) => PosesInitialWidget(
                          screeWidth: screeWidth,
                        ),
                      );
                    },
                  ),
                  SizedBox(height: 24.0),
                  // Your favourites
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                    child: Text(
                      'Explore tracks',
                      style: TextStyle(
                        fontSize: 32.0,
                        fontWeight: FontWeight.bold,
                        color: Palette.black,
                      ),
                    ),
                  ),
                  SizedBox(height: 16.0),
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                    child: Consumer(
                      builder: (context, watch, child) {
                        final state = watch(
                          retrieveTracksNotifierProvider.state,
                        );

                        return state.when(
                          () => TracksInitialWidget(),
                          retrieving: () => TracksInitialWidget(),
                          retrieved: (tracks) => TracksListWidget(
                            tracks: tracks,
                          ),
                          error: (message) => TracksInitialWidget(),
                        );
                      },
                    ),
                  ),
                  SizedBox(height: 16.0),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: double.maxFinite,
                          height: 2,
                          color: Palette.black.withOpacity(0.2),
                        ),
                        SizedBox(height: 16.0),
                        Row(
                          children: [
                            Icon(
                              Icons.privacy_tip,
                              color: Palette.black.withOpacity(0.6),
                            ),
                            SizedBox(width: 8.0),
                            Text(
                              'Privacy policy', // Update the quote from backend
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                                color: Palette.black.withOpacity(0.6),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 8.0),
                        Row(
                          children: [
                            Icon(
                              Icons.email,
                              color: Palette.black.withOpacity(0.6),
                            ),
                            SizedBox(width: 8.0),
                            Text(
                              'Contact us', // Update the quote from backend
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                                color: Palette.black.withOpacity(0.6),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 8.0),
                        Row(
                          children: [
                            Icon(
                              Icons.info,
                              color: Palette.black.withOpacity(0.6),
                            ),
                            SizedBox(width: 8.0),
                            Text(
                              'About', // Update the quote from backend
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                                color: Palette.black.withOpacity(0.6),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
