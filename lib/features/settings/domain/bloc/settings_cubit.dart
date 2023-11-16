import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_router/go_router.dart';
import 'package:pomodoro_flutter/features/pomodoro/views/Pomodoro_screen.dart';
import 'package:pomodoro_flutter/features/settings/data/repos/settings_repo.dart';
import 'package:pomodoro_flutter/features/settings/domain/models/settings_model.dart';

import '../../../../main.dart';
import '../../../../services/background/background_service.dart';
import '../../data/dtos/settings_model_dto.dart';

part 'settings_state.dart';

part 'settings_cubit.freezed.dart';

class SettingsCubit extends Cubit<SettingsState> {
  SettingsCubit(this._settingsRepo) : super(const SettingsState.initial()) {
    _init();
  }

  late final StreamSubscription<Map<String, dynamic>?> _streamService;

  final SettingsRepo _settingsRepo;

  late final TextEditingController pomodoroCntrl,
      shortBreakCntrl,
      longBreakCntrl;

  void callReload() {
    backgroundService.service.invoke(BackgroundService.loadSettingKey);
  }

  Future<void> reload(SettingsModel loadModel) async {
    //final loadModel = await load();

    pomodoroCntrl.text = loadModel.pomodoro.inMinutes.toString();
    shortBreakCntrl.text = loadModel.shortBreak.inMinutes.toString();
    longBreakCntrl.text = loadModel.longBreak.inMinutes.toString();

    emit(state.copyWith(settingsModel: loadModel));
  }

  Future<void> _init() async {
    _streamService = backgroundService.service
        .on(BackgroundService.loadSettingKey)
        .listen(listenLoadSetting);

    pomodoroCntrl = TextEditingController();
    shortBreakCntrl = TextEditingController();
    longBreakCntrl = TextEditingController();

    //reload();

    //callReload();

    pomodoroCntrl.addListener(listenContrl);
    shortBreakCntrl.addListener(listenContrl);
    longBreakCntrl.addListener(listenContrl);
  }

  bool isValid() {
    final validContrl = {
      int.tryParse(pomodoroCntrl.text.trim()) != null,
      int.tryParse(shortBreakCntrl.text.trim()) != null,
      int.tryParse(longBreakCntrl.text.trim()) != null,
    };

    return validContrl.length == 1 && validContrl.first;
  }

  void listenContrl() {
    emit(
      state.copyWith(
        isValid: isValid(),
      ),
    );
  }

  void defaultClearDataUnFocus(TextEditingController controller) {
    if (controller.text.trim().isNotEmpty) return;
    if (controller.hashCode == pomodoroCntrl.hashCode) {
      pomodoroCntrl.text =
          SettingsModel.defaultTime.pomodoro.inMinutes.toString();
    }
    if (controller.hashCode == shortBreakCntrl.hashCode) {
      shortBreakCntrl.text =
          SettingsModel.defaultTime.shortBreak.inMinutes.toString();
    }
    if (controller.hashCode == longBreakCntrl.hashCode) {
      longBreakCntrl.text =
          SettingsModel.defaultTime.longBreak.inMinutes.toString();
    }
  }

  Future<void> save(BuildContext context) async {
    if (!isValid()) return;
    final newModel = state.settingsModel.copyWith(
      pomodoro: Duration(minutes: int.tryParse(pomodoroCntrl.text)!),
      shortBreak: Duration(minutes: int.tryParse(shortBreakCntrl.text)!),
      longBreak: Duration(minutes: int.tryParse(longBreakCntrl.text)!),
    );
    // await _settingsRepo.saveSettings(newModel);
    final toDto = _settingsRepo.settingsTranslator.toDto(newModel).toJson();
    backgroundService.service.invoke(BackgroundService.saveSettingKey, toDto);
    context.go(PomodoroScreen.route);
  }

  Future<SettingsModel> load() async {
    return await _settingsRepo.loadSettings();
  }

  void listenLoadSetting(Map<String, dynamic>? raw) {
    if (raw == null) return;
    reload(
      _settingsRepo.settingsTranslator.toDomain(
        SettingsModelDto.fromJson(raw),
      ),
    );
  }

  @override
  Future<void> close() {
    pomodoroCntrl.removeListener(listenContrl);
    shortBreakCntrl.removeListener(listenContrl);
    longBreakCntrl.removeListener(listenContrl);
    _streamService.cancel();
    return super.close();
  }
}
