import 'dart:convert';

import 'package:pomodoro_flutter/features/settings/data/dtos/settings_model_dto.dart';
import 'package:pomodoro_flutter/features/settings/data/translators/settings_translator.dart';
import 'package:pomodoro_flutter/features/settings/domain/models/settings_model.dart';
import 'package:shared_preferences/shared_preferences.dart';


class SettingsRepo {
  SettingsRepo._();

  static SettingsRepo? _instanse;

  static SettingsRepo get instanse {
    _instanse ??= SettingsRepo._();
    return _instanse!;
  }

  static const _feedKey = 'settingsKey';

  final SettingsTranslator settingsTranslator = const SettingsTranslator();

  Future<SettingsModel> loadSettings() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.reload();
    final raw = prefs.getString(_feedKey);
    if (raw == null) return SettingsModel.defaultTime;
    return settingsTranslator.toDomain(
      SettingsModelDto.fromJson(jsonDecode(raw) as Map<String, dynamic>),
    );
  }

  Future<void> saveSettings(SettingsModel model) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.reload();
    final json = settingsTranslator.toDto(model).toJson();
    final raw = jsonEncode(json);
    await prefs.setString(_feedKey, raw);
  }

}
