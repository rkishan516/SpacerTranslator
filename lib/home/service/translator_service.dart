import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:translator/translator.dart';

part 'translator_service.g.dart';

@riverpod
GoogleTranslator googleTranslator(GoogleTranslatorRef ref) {
  return GoogleTranslator();
}

@riverpod
GoogleTranslatorService translator(TranslatorRef ref) {
  return GoogleTranslatorService(ref);
}

class GoogleTranslatorService {
  final GoogleTranslator translator;
  final Ref ref;
  GoogleTranslatorService(this.ref)
      : translator = ref.read(googleTranslatorProvider);

  Future<String> translate(String text,
      {String from = 'auto', required String to}) async {
    final translation = await translator.translate(text, from: from, to: to);
    return translation.text;
  }
}
