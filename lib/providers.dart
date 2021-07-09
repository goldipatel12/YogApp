import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sofia/application/notifiers/auth_current_user_notifier.dart';
import 'package:sofia/application/notifiers/auth_sign_in_notifier.dart';
import 'package:sofia/application/notifiers/retrieve_poses_notifier.dart';
import 'package:sofia/application/notifiers/retrieve_tracks_notifier.dart';
import 'package:sofia/application/notifiers/retrieve_user_notifier.dart';
import 'package:sofia/application/notifiers/store_user_data_notifier.dart';
import 'package:sofia/application/notifiers/store_user_score_notifier.dart';
import 'package:sofia/application/notifiers/voice_listen_notifier.dart';
import 'package:sofia/utils/authentication_client.dart';
import 'package:sofia/utils/database.dart';

final authenticationClientProvider = Provider<AuthenticationClient>(
  (ref) => AuthenticationClient(),
);

final databaseProvider = Provider<Database>(
  (ref) => Database(),
);

final authSignInNotifierProvider = StateNotifierProvider(
  (ref) => AuthSignInNotifier(ref.watch(authenticationClientProvider)),
);

final authCurrentUserNotifierProvider = StateNotifierProvider(
  (ref) => AuthCurrentUserNotifier(
    ref.watch(authenticationClientProvider),
    ref.watch(databaseProvider),
  ),
);

final storeUserDataNotifierProvider = StateNotifierProvider(
  (ref) => StoreUserDataNotifier(ref.watch(databaseProvider)),
);

final storeUserScoreNotifierProvider = StateNotifierProvider(
  (ref) => StoreUserScoreNotifier(ref.watch(databaseProvider)),
);

final retrievePosesNotifierProvider =
    StateNotifierProvider.family<RetrievePosesNotifier, String>(
  (ref, trackName) =>
      RetrievePosesNotifier(ref.watch(databaseProvider), trackName),
);

final retrieveTracksNotifierProvider = StateNotifierProvider(
  (ref) => RetrieveTracksNotifier(ref.watch(databaseProvider)),
);

final retrieveUserNotifierProvider = StateNotifierProvider(
  (ref) => RetrieveUserNotifier(ref.watch(databaseProvider)),
);

final voiceListenNotifierProvider = StateNotifierProvider(
  (ref) => VoiceListenNotifier(),
);
