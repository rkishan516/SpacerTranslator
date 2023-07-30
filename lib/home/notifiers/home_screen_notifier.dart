import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:spacer_translator/home/notifiers/translator_page_notifer.dart';
import 'package:spacer_translator/home/presentation/local_translator.dart';
import 'package:spacer_translator/home/service/flutter_tts_service.dart';
import 'package:spacer_translator/home/state/home_screen_state.dart';

part 'home_screen_notifier.g.dart';

@riverpod
class HomeScreenNotifier extends _$HomeScreenNotifier {
  @override
  HomeScreenState build() {
    return const HomeScreenState(currentPage: 0);
  }

  void changePage(int page) {
    state = state.copyWith(currentPage: page);
  }

  void speak() async {
    final state = ref.read(TranslatorPageNotifierProvider(
      page: HomeSubPage
          .values[ref.watch(
        homeScreenNotifierProvider.select((value) => value.currentPage),
      )]
          .name,
    ));
    await ref.read(speakerProvider).setLanguage(state.toLanguage);
    ref.read(speakerProvider).speak(state.output);
  }
}
