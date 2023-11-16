part of 'pomodoro_bloc.dart';

@freezed
class PomodoroEvent with _$PomodoroEvent {
  const factory PomodoroEvent.tick(PomodoroState state) = TickPomodoroEvent;
  const factory PomodoroEvent.play() = PlayPomodoroEvent;
  const factory PomodoroEvent.pause() = PausePomodoroEvent;
  const factory PomodoroEvent.restart() = RestartPomodoroEvent;
}
