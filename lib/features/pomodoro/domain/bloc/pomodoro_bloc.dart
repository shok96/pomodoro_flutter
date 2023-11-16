import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pomodoro_flutter/extensions/duration_extensions.dart';
import 'package:pomodoro_flutter/features/settings/data/repos/settings_repo.dart';
import 'package:pomodoro_flutter/features/settings/domain/bloc/settings_cubit.dart';
import 'package:pomodoro_flutter/main.dart';
import 'package:pomodoro_flutter/services/background/background_service.dart';
import 'package:pomodoro_flutter/services/tick/tick_service.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../../settings/domain/models/settings_model.dart';

part 'pomodoro_event.dart';

part 'pomodoro_state.dart';

part 'pomodoro_bloc.freezed.dart';

part 'pomodoro_bloc.g.dart';

class PomodoroBloc extends Bloc<PomodoroEvent, PomodoroState> {
  PomodoroBloc(this.settingsCubit) : super(PomodoroState.defaultPomodoro) {
    on<TickPomodoroEvent>(onTick);
    on<PlayPomodoroEvent>(onPlay);
    on<PausePomodoroEvent>(onPause);
    on<RestartPomodoroEvent>(onRestart);

    _init();
  }

  final SettingsCubit settingsCubit;

  late final StreamSubscription<Map<String, dynamic>?> _streamService;

  void _init() {
    _streamService = backgroundService.service
        .on(BackgroundService.updateTickKey)
        .listen(listenerTickService);
    backgroundService.service.invoke(BackgroundService.forceUpdateKey);
  }

  void listenerTickService(Map<String, dynamic>? raw) {
    if (raw == null) return;
    final pomodoroState = PomodoroState.fromJson(raw);
    add(PomodoroEvent.tick(pomodoroState));
  }

  Future<void> onTick(
      TickPomodoroEvent event, Emitter<PomodoroState> emit) async {
    emit(event.state);
  }

  Future<void> onPlay(
      PlayPomodoroEvent event, Emitter<PomodoroState> emit) async {
    backgroundService.service.invoke(BackgroundService.startTickKey);
  }

  Future<void> onPause(
      PausePomodoroEvent event, Emitter<PomodoroState> emit) async {
    backgroundService.service.invoke(BackgroundService.pauseTickKey);
  }

  Future<void> onRestart(
      RestartPomodoroEvent event, Emitter<PomodoroState> emit) async {
    backgroundService.service.invoke(BackgroundService.restartTimerKey);
  }

  @override
  Future<void> close() {
    _streamService.cancel();
    return super.close();
  }
}
