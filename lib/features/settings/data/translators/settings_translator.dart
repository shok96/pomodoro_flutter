import 'package:pomodoro_flutter/features/settings/domain/models/settings_model.dart';

import '../dtos/settings_model_dto.dart';

class SettingsTranslator {
  const SettingsTranslator();

  SettingsModel toDomain(SettingsModelDto settingsModelDto) {
    return SettingsModel(
      longBreak: settingsModelDto.longBreak,
      pomodoro: settingsModelDto.pomodoro,
      shortBreak: settingsModelDto.shortBreak,
    );
  }

  SettingsModelDto toDto(SettingsModel settingsModel) {
    return SettingsModelDto(
      shortBreak: settingsModel.shortBreak,
      pomodoro: settingsModel.pomodoro,
      longBreak: settingsModel.longBreak,
      mode: settingsModel.pomodoreMode,
    );
  }
}
