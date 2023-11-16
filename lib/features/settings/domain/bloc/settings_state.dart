part of 'settings_cubit.dart';

@freezed
class SettingsState with _$SettingsState {
  const factory SettingsState.initial({
    @Default(SettingsModel.defaultTime) SettingsModel settingsModel,
    @Default(true) bool isValid,
  }) = _Initial;
}
