import 'package:freezed_annotation/freezed_annotation.dart';

part 'store_user_score_state.freezed.dart';

@freezed
abstract class StoreUserScoreState with _$StoreUserScoreState {
  const factory StoreUserScoreState() = InitialScoreData;
  const factory StoreUserScoreState.storing() = StoringScoreData;
  const factory StoreUserScoreState.stored() = StoredScoreData;
  const factory StoreUserScoreState.error({String message}) =
      ErrorStoringScoreData;
}
