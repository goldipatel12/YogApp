import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sofia/model/user.dart';

part 'retrieve_user_state.freezed.dart';

@freezed
abstract class RetrieveUserState with _$RetrieveUserState {
  const factory RetrieveUserState() = InitialUserData;
  const factory RetrieveUserState.retrieving() = RetrievingUser;
  const factory RetrieveUserState.retrieved(User user) = RetrievedUser;
  const factory RetrieveUserState.hasAccuracyData(User user) =
      RetrievedUserAccuracy;
  const factory RetrieveUserState.error({String message}) = ErrorRetrievingUser;
}
