import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sofia/application/states/retrieve_user_state.dart';
import 'package:sofia/model/user.dart';
import 'package:sofia/utils/database.dart';

class RetrieveUserNotifier extends StateNotifier<RetrieveUserState> {
  final Database _database;

  RetrieveUserNotifier(this._database) : super(RetrieveUserState());

  Future<void> retrieveUser() async {
    try {
      state = RetrieveUserState.retrieving();
      User user = await _database.retrieveUserInfo();
      state = RetrieveUserState.retrieved(user);
      if (user.accuracy != null) {
        state = RetrieveUserState.hasAccuracyData(user);
      }
    } catch (error) {
      state = RetrieveUserState.error(message: 'Error retrieveing user info');
    }
  }
}
