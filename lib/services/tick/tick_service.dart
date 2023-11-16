import 'dart:async';

import 'package:pomodoro_flutter/features/settings/data/repos/settings_repo.dart';
import 'package:pomodoro_flutter/features/settings/domain/models/settings_model.dart';
import 'package:pomodoro_flutter/main.dart';
import 'package:pomodoro_flutter/services/background/background_isolates_service.dart';

import '../../features/pomodoro/domain/bloc/pomodoro_bloc.dart';
import '../../features/settings/data/translators/settings_translator.dart';
import 'models/tick_models.dart';

class TickService {
  TickService._() {
    _init();
  }

  static TickService? _instanse;

  static TickService get instanse {
    _instanse ??= TickService._();
    return _instanse!;
  }

  TickModels tickModels = const TickModels();

  final SettingsRepo _settingsRepo = SettingsRepo.instanse;

  late SettingsModel _settingsModel;

  late final BackgroundIsolateService? _backgroundIsolateService;

  // TickService(){
  //   _init();
  // }

  Function(PomodoroState state)? _backgroundAction;

  void setBackgroundIsolateSetvice(
      BackgroundIsolateService backgroundIsolateService) {
    _backgroundIsolateService = backgroundIsolateService;
  }

  Future<SettingsModel> loadSetting(){
    return _settingsRepo.loadSettings();
  }

  Future<void> saveSetting(SettingsModel model) async{
    await _settingsRepo.saveSettings(model);
  }

  SettingsTranslator get settingsTranslate => _settingsRepo.settingsTranslator;

  void startTick() {
    tickModels = tickModels.copyWith(
        tickMode: const TickMode.start(),
        task: tickModels.task.copyWith(
          tickMode: const PomodoreTickMode.pause(),
        ));
  }

  void pauseTick() {
    tickModels = tickModels.copyWith(
        tickMode: const TickMode.pause(),
        task: tickModels.task.copyWith(
          tickMode: const PomodoreTickMode.start(),
        ));
    _backgroundIsolateService?.updateTicker(tickModels.task);
  }

  PomodoroState settingToPomodoroState(SettingsModel settingsModel) =>
      PomodoroState.defaultPomodoro.copyWith(
        duration: settingsModel.pomodoro,
        nowTick: settingsModel.pomodoro,
        mode: settingsModel.pomodoreMode,
      );

  void _init() async {
    await _loadTimer();
    _initTimer();
    //_backgroundIsolateService?.updateTicker(tickModels.task);
  }

  Future<void> _loadTimer() async {
    _settingsModel = await loadSetting();
    print(_settingsModel);
    emit(
      tickModels.copyWith(
        task: tickModels.task.copyWith(
          duration: _settingsModel.pomodoro,
          nowTick: _settingsModel.pomodoro,
          progress: 1.0,
        ),
      ),
    );
  }

  void _initTimer() {
    Timer.periodic(const Duration(seconds: 1), (timer) {
      tickAction();
    });
  }

  void tickAction() {
    if (tickModels.tickMode == TickMode.start()) {
      onTick();
      sendStatePushService();
    }
  }

  void onTick() {
    final state = tickModels.task;
    final nowTick = state.nowTick - const Duration(seconds: 1);
    final progress = (nowTick.inSeconds / state.duration.inSeconds);
    emit(
      tickModels.copyWith(
        task: state.copyWith(
          nowTick: nowTick,
          progress: progress,
        ),
      ),
    );
    checkSwitchTabMode();
  }

  void sendStatePushService() {
    final state = tickModels.task;
    //backgroundService.service.invoke("updateTicker", state.toJson());
    _backgroundIsolateService?.updateTicker(state);
    if (_backgroundAction == null) return;
    _backgroundAction!(state);
  }

  void checkSwitchTabMode() {
    final state = tickModels.task;
    PomodoroState newState = state.copyWith();
    if (state.nowTick <= Duration.zero) {
      newState = newState.copyWith(
        startedDateTime: DateTime.now(),
        progress: 1.0,
      );
      if (state.mode == const PomodoreMode.pomodoro()) {
        if (state.shortCount <= PomodoreMode.limitShort - 1) {
          newState = newState.copyWith(
            shortCount: (state.shortCount + 1),
            mode: const PomodoreMode.short(),
            nowTick: _settingsModel.shortBreak,
            duration: _settingsModel.shortBreak,
          );
        } else {
          newState = newState.copyWith(
            shortCount: 0,
            mode: const PomodoreMode.long(),
            nowTick: _settingsModel.longBreak,
            duration: _settingsModel.longBreak,
          );
        }
      } else {
        newState = newState.copyWith(
          mode: const PomodoreMode.pomodoro(),
          nowTick: _settingsModel.pomodoro,
          duration: _settingsModel.pomodoro,
        );
      }
    }
    newState = newState.copyWith(isVibro: state.mode != newState.mode);
    emit(tickModels.copyWith(task: newState));
  }

  void forceUpdate() {
    final state = tickModels.task;
    _backgroundIsolateService?.updateTicker(state);
  }

  void restartTimer() async {
    await _loadTimer();
    emit(
      tickModels.copyWith(
        tickMode: TickMode.pause(),
        task: tickModels.task.copyWith(
          tickMode: PomodoreTickMode.start(),
          shortCount: 0,
          mode: PomodoreMode.pomodoro(),
        ),
      ),
    );
    forceUpdate();
  }

  void emit(TickModels tickModels) {
    this.tickModels = tickModels;
  }
}
