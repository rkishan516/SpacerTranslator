import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_screen_state.freezed.dart';

@freezed
class HomeScreenState with _$HomeScreenState {
  const HomeScreenState._();
  const factory HomeScreenState({
    required int currentPage,
  }) = _HomeScreenState;
}
