part of 'pomodoro_bloc.dart';

@freezed
class PomodoroState with _$PomodoroState {
  const PomodoroState._();

  const factory PomodoroState({
    required DateTime? startedDateTime,
    required Duration duration,
    required PomodoreMode mode,
    required PomodoreTickMode tickMode,
    required Duration nowTick,
    required double progress,
    required int shortCount,
    @Default(false) bool isVibro,
  }) = _PomodoroState;

  static const defaultPomodoro = PomodoroState(
    mode: PomodoreMode.pomodoro(),
    duration: Duration(),
    startedDateTime: null,
    tickMode: PomodoreTickMode.stop(),
    nowTick: Duration(),
    progress: 1.0,
    shortCount: 0,
  );

  String pushText(AppLocalizations localizations) => "${mode.when(
        pomodoro: () => localizations.tab_mode_pomodoro,
        short: () => localizations.tab_mode_short,
        long: () => localizations.tab_mode_long,
      )} -> ${nowTick.niceFormat()}";

  factory PomodoroState.fromJson(Map<String, dynamic> json) =>
      _$PomodoroStateFromJson(json);
}

@freezed
class PomodoreMode with _$PomodoreMode {
  const factory PomodoreMode.pomodoro() = PomodoroPomodoreMode;

  const factory PomodoreMode.short() = ShortPomodoreMode;

  const factory PomodoreMode.long() = LongPomodoreMode;

  static const limitShort = 4;

  factory PomodoreMode.fromJson(Map<String, dynamic> json) =>
      _$PomodoreModeFromJson(json);
}

@freezed
class PomodoreTickMode with _$PomodoreTickMode {
  const factory PomodoreTickMode.start() = StartPomodoreTickMode;

  const factory PomodoreTickMode.pause() = PausePomodoreTickMode;

  const factory PomodoreTickMode.stop() = StopPomodoreTickMode;

  factory PomodoreTickMode.fromJson(Map<String, dynamic> json) =>
      _$PomodoreTickModeFromJson(json);
}
