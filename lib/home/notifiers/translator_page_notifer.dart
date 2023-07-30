import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:spacer_translator/home/service/translator_service.dart';
import 'package:spacer_translator/home/state/translator_page_state.dart';

part 'translator_page_notifer.g.dart';

@riverpod
class TranslatorPageNotifier extends _$TranslatorPageNotifier {
  @override
  TranslatorPageState build({required String page}) {
    return const TranslatorPageState(
      input: '',
      output: '',
      toLanguage: '',
    );
  }

  void updateInput(String input) {
    state = state.copyWith(input: input);
  }

  void updateToLanguage(String toLanguage) {
    state = state.copyWith(toLanguage: toLanguage);
  }

  void updateFromLanguage(String fromLanguage) {
    state = state.copyWith(fromLanguage: fromLanguage);
  }

  void process() async {
    if (state.input.isEmpty) {
      state = state.copyWith(output: 'Please enter some text');
      return;
    }
    final result = await ref.read(translatorProvider).translate(
          state.input,
          to: state.toLanguage,
          from: state.fromLanguage,
        );
    state = state.copyWith(output: result);
  }
}
