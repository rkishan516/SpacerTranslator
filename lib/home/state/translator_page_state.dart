import 'package:freezed_annotation/freezed_annotation.dart';

part 'translator_page_state.freezed.dart';

@freezed
class TranslatorPageState with _$TranslatorPageState {
  const TranslatorPageState._();
  const factory TranslatorPageState({
    required String input,
    required String output,
    @Default('auto') String fromLanguage,
    required String toLanguage,
  }) = _TranslatorPageState;
}
