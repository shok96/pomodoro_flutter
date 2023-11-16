// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings_model_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SettingsModelDto _$SettingsModelDtoFromJson(Map<String, dynamic> json) =>
    SettingsModelDto(
      longBreak: Duration(microseconds: json['long_break'] as int),
      shortBreak: Duration(microseconds: json['short_break'] as int),
      pomodoro: Duration(microseconds: json['pomodoro'] as int),
      mode: PomodoreMode.fromJson(json['mode'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SettingsModelDtoToJson(SettingsModelDto instance) =>
    <String, dynamic>{
      'pomodoro': instance.pomodoro.inMicroseconds,
      'short_break': instance.shortBreak.inMicroseconds,
      'long_break': instance.longBreak.inMicroseconds,
      'mode': instance.mode,
    };
