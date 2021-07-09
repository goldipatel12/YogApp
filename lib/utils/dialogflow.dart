import 'dart:convert';
import 'dart:typed_data';

import 'package:audioplayers/audioplayers.dart';
import 'package:dialog_flowtter/dialog_flowtter.dart' as df;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:speech_to_text/speech_to_text.dart' as stt;
import 'package:audiofileplayer/audiofileplayer.dart' as af;

class Dialogflow {
  static stt.SpeechToText speech = stt.SpeechToText();
  static bool isSpeechAvailable;
  static AudioPlayer audioPlayer = AudioPlayer();

  static Future<bool> initializeSpeech() async {
    bool available = await speech.initialize(
      onStatus: (status) => print(status),
      onError: (error) => print(error.errorMsg),
    );

    return available;
  }

  // static Future<String> takeVoiceInput() async {
  //   String recognizedVoiceInputString = '';

  //   if (isSpeechAvailable) {
  //     await speech.listen(
  //       // listenFor: Duration(minutes: 2),
  //       // pauseFor: Duration(seconds: 5),
  //       onResult: (result) {
  //         double confidence = result.confidence;

  //         if (confidence > 0.5) {
  //           result.recognizedWords;
  //           recognizedVoiceInputString = result.recognizedWords;
  //         }
  //       },
  //     );
  //   }
  // }

  static Future<df.DetectIntentResponse> initialize() async {
    final df.DialogFlowtter dialogFlowtter = await df.DialogFlowtter.fromFile(
      path: 'assets/dialogflow/sofia_auth.json',
      sessionId: '101', // use the timestamp as the session id
    );

    final df.QueryInput queryInput = df.QueryInput(
      text: df.TextInput(
        text: 'Initialize the app',
        languageCode: 'en',
      ),
    );

    String rawJson =
        await rootBundle.loadString('assets/dialogflow/config.json');

    Map<String, dynamic> data = jsonDecode(rawJson);

    df.DetectIntentResponse response = await dialogFlowtter.detectIntent(
      queryInput: queryInput,
      audioConfig: df.OutputAudioConfig(
        synthesizeSpeechConfig: df.SynthesizeSpeechConfig.fromJson(data),
      ),
    );

    return response;
  }

  static Future<void> poseCompletion({
    @required String poseName,
    @required String accuracy,
  }) async {
    final df.DialogFlowtter dialogFlowtter = await df.DialogFlowtter.fromFile(
      path: 'assets/dialogflow/sofia_auth.json',
      sessionId: DateTime.now().millisecondsSinceEpoch.toString(),
    );

    final df.QueryInput queryInput = df.QueryInput(
      text: df.TextInput(
        text: 'Completed $poseName pose, accuracy $accuracy',
        languageCode: 'en',
      ),
    );

    String rawJson =
        await rootBundle.loadString('assets/dialogflow/config.json');

    Map<String, dynamic> data = jsonDecode(rawJson);

    df.DetectIntentResponse response = await dialogFlowtter.detectIntent(
      queryInput: queryInput,
      audioConfig: df.OutputAudioConfig(
        synthesizeSpeechConfig: df.SynthesizeSpeechConfig.fromJson(data),
      ),
    );

    Uint8List audioBytes = response.outputAudioBytes;

    af.Audio.loadFromByteData(ByteData.view(audioBytes.buffer))
      ..play()
      ..dispose();
  }

  static Future<void> poseRecognition({
    @required Function(bool) onComplete,
  }) async {
    final df.DialogFlowtter dialogFlowtter = await df.DialogFlowtter.fromFile(
      path: 'assets/dialogflow/sofia_auth.json',
      sessionId: DateTime.now().millisecondsSinceEpoch.toString(),
    );

    final df.QueryInput queryInput = df.QueryInput(
      text: df.TextInput(
        text: 'Recognize pose',
        languageCode: 'en',
      ),
    );

    String rawJson =
        await rootBundle.loadString('assets/dialogflow/config.json');

    Map<String, dynamic> data = jsonDecode(rawJson);

    df.DetectIntentResponse response = await dialogFlowtter.detectIntent(
      queryInput: queryInput,
      audioConfig: df.OutputAudioConfig(
        synthesizeSpeechConfig: df.SynthesizeSpeechConfig.fromJson(data),
      ),
    );

    Uint8List audioBytes = response.outputAudioBytes;
    af.Audio.loadFromByteData(ByteData.view(audioBytes.buffer),
        onComplete: () => onComplete(true))
      ..play();
  }

  static Future<void> bodyVisible() async {
    final df.DialogFlowtter dialogFlowtter = await df.DialogFlowtter.fromFile(
      path: 'assets/dialogflow/sofia_auth.json',
      sessionId: DateTime.now().millisecondsSinceEpoch.toString(),
    );

    final df.QueryInput queryInput = df.QueryInput(
      text: df.TextInput(
        text: 'Body visible camera',
        languageCode: 'en',
      ),
    );

    String rawJson =
        await rootBundle.loadString('assets/dialogflow/config.json');

    Map<String, dynamic> data = jsonDecode(rawJson);

    df.DetectIntentResponse response = await dialogFlowtter.detectIntent(
      queryInput: queryInput,
      audioConfig: df.OutputAudioConfig(
        synthesizeSpeechConfig: df.SynthesizeSpeechConfig.fromJson(data),
      ),
    );

    Uint8List audioBytes = response.outputAudioBytes;
    af.Audio.loadFromByteData(ByteData.view(audioBytes.buffer))..play();
  }

  static Future<df.DetectIntentResponse> getDialogflowResponse({
    @required String questionString,
  }) async {
    final df.DialogFlowtter dialogFlowtter = await df.DialogFlowtter.fromFile(
      path: 'assets/dialogflow/sofia_auth.json',
      sessionId: DateTime.now().millisecondsSinceEpoch.toString(),
    );

    final df.QueryInput queryInput = df.QueryInput(
      text: df.TextInput(
        text: questionString,
        languageCode: 'en',
      ),
    );

    String rawJson =
        await rootBundle.loadString('assets/dialogflow/config.json');

    Map<String, dynamic> data = jsonDecode(rawJson);

    df.DetectIntentResponse response = await dialogFlowtter.detectIntent(
      queryInput: queryInput,
      audioConfig: df.OutputAudioConfig(
        synthesizeSpeechConfig: df.SynthesizeSpeechConfig.fromJson(data),
      ),
    );

    return response;
  }

  static Future<void> playSpeech({
    @required Uint8List audioBytes,
    @required Function(bool) completionCallback,
  }) async {
    completionCallback(false);

    await audioPlayer.playBytes(audioBytes);

    audioPlayer.onPlayerCompletion.listen((event) {
      completionCallback(true);
    });
  }
}
