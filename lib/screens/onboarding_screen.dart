import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sofia/application/states/auth_current_user_state.dart';
import 'package:sofia/providers.dart';
import 'package:sofia/res/palette.dart';
import 'package:sofia/screens/dashboard_screen.dart';
import 'package:sofia/utils/database.dart';
import 'onboarding_screens/login_screen.dart';
import 'onboarding_screens/name_screen.dart';
import 'onboarding_screens/splash_screen.dart';

class OnboardingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sofia: yoga trainer',
      // Redirect to the respective page as per the authentication info
      // Currently using DashboardPage instead of HomePage, to test
      // the new UI
      theme: ThemeData(
        fontFamily: 'GoogleSans',
        primaryColor: Colors.white,
        accentColor: Colors.white,
      ),
      home: ProviderListener<AuthCurrentUserState>(
        provider: authCurrentUserNotifierProvider.state,
        onChange: (context, state) {
          if (state is SignedInUser) {
            context.read(voiceListenNotifierProvider).speechInitialization();

            context.read(retrieveTracksNotifierProvider).retrieveTracks();

            context
                .read(retrievePosesNotifierProvider('beginners'))
                .retrievePoses();

            context.read(retrieveUserNotifierProvider).retrieveUser();
          }
        },
        child: Consumer(
          builder: (context, watch, child) {
            final state = watch(
              authCurrentUserNotifierProvider.state,
            );

            return AnimatedSwitcher(
              duration: Duration(milliseconds: 300),
              child: state.when(
                  () {
                    WidgetsBinding.instance.addPostFrameCallback((_) {
                      context
                          .read(authCurrentUserNotifierProvider)
                          .getCurrentUser();
                    });
                    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
                      statusBarColor: Palette.loginBackground,
                      statusBarIconBrightness: Brightness.dark,
                    ));
                    return SplashScreen();
                  },
                  finding: () {
                    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
                      statusBarColor: Palette.loginBackground,
                      statusBarIconBrightness: Brightness.dark,
                    ));
                    return SplashScreen();
                  },
                  notSignedIn: () => LoginScreen(),
                  alreadySignedIn: (userData) {
                    Database.user = userData;

                    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
                      statusBarColor: Colors.white,
                      statusBarIconBrightness: Brightness.dark,
                    ));

                    return DashboardScreen();
                  },
                  detailsNotUploaded: (user) {
                    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
                      statusBarColor: Palette.nameBackground,
                      statusBarIconBrightness: Brightness.dark,
                    ));
                    return NameScreen(user: user);
                  },
                  error: (message) {
                    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
                      statusBarColor: Palette.loginBackground,
                      statusBarIconBrightness: Brightness.dark,
                    ));
                    return LoginScreen();
                  }),
            );
          },
        ),
      ),
      // home: VoiceAssistantScreen(),
    );
  }
}
