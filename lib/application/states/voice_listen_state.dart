import 'package:dialog_flowtter/dialog_flowtter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'voice_listen_state.freezed.dart';

@freezed
abstract class VoiceListenState with _$VoiceListenState {
  const factory VoiceListenState() = Idle;
  const factory VoiceListenState.initializing() = ListeningInitializing;
  const factory VoiceListenState.initialized() = ListeningInitialized;
  const factory VoiceListenState.listening() = Listening;
  const factory VoiceListenState.recognized(
      {@required String recognizedWords}) = Recognized;
  const factory VoiceListenState.complete({DetectIntentResponse response}) =
      ResponseComplete;
  const factory VoiceListenState.response({@required String responseString}) =
      ResponseReceived;
  const factory VoiceListenState.error({String message}) = ListeningError;
}
