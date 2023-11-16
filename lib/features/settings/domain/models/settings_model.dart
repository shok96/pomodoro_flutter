import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pomodoro_flutter/features/pomodoro/domain/bloc/pomodoro_bloc.dart';

part 'settings_model.freezed.dart';

@freezed
class SettingsModel with _$SettingsModel {
  const SettingsModel._();

  const factory SettingsModel({
    required Duration pomodoro,
    required Duration shortBreak,
    required Duration longBreak,
    @Default(PomodoreMode.pomodoro()) PomodoreMode pomodoreMode,
  }) = _SettingsModel;

  static const defaultTime = SettingsModel(
        pomodoro: const Duration(minutes: 25),
        shortBreak: const Duration(minutes: 5),
        longBreak: const Duration(minutes: 20),
      );
}
