import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'supported_language.g.dart';

@riverpod
Map<String, String> supportedLanguages(SupportedLanguagesRef ref) {
  return {
    'Auto': 'auto',
    'English': 'en',
    'Hindi': 'hi',
    'French': 'fr',
    'Japanese': 'ja',
    'German': 'de',
    'Italian': 'it',
    'Danish': 'da',
    'Dutch': 'nl',
    'Finnish': 'fi',
    'Nepali': 'ne',
    'Indonesian': 'id',
    'Portuguese': 'pt',
  };
}
