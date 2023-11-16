import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pomodoro_flutter/features/pomodoro/domain/bloc/pomodoro_bloc.dart';

part 'tick_models.freezed.dart';

@freezed
class TickModels with _$TickModels {
  const factory TickModels({
    @Default(TickMode.stop()) TickMode tickMode,
    @Default(PomodoroState.defaultPomodoro) PomodoroState task,
  }) = _TickModels;
}


@freezed
class TickMode with _$TickMode {

  const factory TickMode.start() = StartTickMode;

  const factory TickMode.pause() = PauseTickMode;

  const factory TickMode.stop() = StopTickMode;
}
