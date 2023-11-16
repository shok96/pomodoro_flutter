import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pomodoro_flutter/features/pomodoro/domain/bloc/pomodoro_bloc.dart';

part 'settings_model_dto.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class SettingsModelDto {
  const SettingsModelDto({
    required this.longBreak,
    required this.shortBreak,
    required this.pomodoro,
    required this.mode,
  });

  factory SettingsModelDto.fromJson(Map<String, dynamic> json) =>
      _$SettingsModelDtoFromJson(json);

  Map<String, dynamic> toJson() => _$SettingsModelDtoToJson(this);

  final Duration pomodoro;
  final Duration shortBreak;
  final Duration longBreak;
  final PomodoreMode mode;
}
