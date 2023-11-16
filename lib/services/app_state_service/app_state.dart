import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_state.freezed.dart';

@freezed
class AppState with _$AppState {
  const factory AppState.resumed(AppState? from) = ResumedAppState;
  const factory AppState.inactive(AppState? from) = InactiveAppState;
  const factory AppState.paused(AppState? from) = PausedAppState;
}
