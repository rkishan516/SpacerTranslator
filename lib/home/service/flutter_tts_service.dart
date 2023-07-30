import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'flutter_tts_service.g.dart';

@riverpod
FlutterTts flutterTts(FlutterTtsRef ref) => FlutterTts();

@riverpod
FlutterTTSService speaker(SpeakerRef ref) => FlutterTTSService(ref);

class FlutterTTSService {
  final FlutterTts _flutterTts;
  final Ref ref;
  FlutterTTSService(this.ref) : _flutterTts = ref.read(flutterTtsProvider);

  Future<void> setLanguage(String language) async {
    await _flutterTts.setLanguage(language);
  }

  void speak(String text) async {
    await _flutterTts.speak(text);
  }
}
