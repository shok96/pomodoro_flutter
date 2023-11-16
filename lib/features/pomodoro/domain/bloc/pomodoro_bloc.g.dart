// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pomodoro_bloc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PomodoroStateImpl _$$PomodoroStateImplFromJson(Map<String, dynamic> json) =>
    _$PomodoroStateImpl(
      startedDateTime: json['startedDateTime'] == null
          ? null
          : DateTime.parse(json['startedDateTime'] as String),
      duration: Duration(microseconds: json['duration'] as int),
      mode: PomodoreMode.fromJson(json['mode'] as Map<String, dynamic>),
      tickMode:
          PomodoreTickMode.fromJson(json['tickMode'] as Map<String, dynamic>),
      nowTick: Duration(microseconds: json['nowTick'] as int),
      progress: (json['progress'] as num).toDouble(),
      shortCount: json['shortCount'] as int,
      isVibro: json['isVibro'] as bool? ?? false,
    );

Map<String, dynamic> _$$PomodoroStateImplToJson(_$PomodoroStateImpl instance) =>
    <String, dynamic>{
      'startedDateTime': instance.startedDateTime?.toIso8601String(),
      'duration': instance.duration.inMicroseconds,
      'mode': instance.mode,
      'tickMode': instance.tickMode,
      'nowTick': instance.nowTick.inMicroseconds,
      'progress': instance.progress,
      'shortCount': instance.shortCount,
      'isVibro': instance.isVibro,
    };

_$PomodoroPomodoreModeImpl _$$PomodoroPomodoreModeImplFromJson(
        Map<String, dynamic> json) =>
    _$PomodoroPomodoreModeImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$PomodoroPomodoreModeImplToJson(
        _$PomodoroPomodoreModeImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$ShortPomodoreModeImpl _$$ShortPomodoreModeImplFromJson(
        Map<String, dynamic> json) =>
    _$ShortPomodoreModeImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ShortPomodoreModeImplToJson(
        _$ShortPomodoreModeImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$LongPomodoreModeImpl _$$LongPomodoreModeImplFromJson(
        Map<String, dynamic> json) =>
    _$LongPomodoreModeImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$LongPomodoreModeImplToJson(
        _$LongPomodoreModeImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$StartPomodoreTickModeImpl _$$StartPomodoreTickModeImplFromJson(
        Map<String, dynamic> json) =>
    _$StartPomodoreTickModeImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$StartPomodoreTickModeImplToJson(
        _$StartPomodoreTickModeImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$PausePomodoreTickModeImpl _$$PausePomodoreTickModeImplFromJson(
        Map<String, dynamic> json) =>
    _$PausePomodoreTickModeImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$PausePomodoreTickModeImplToJson(
        _$PausePomodoreTickModeImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$StopPomodoreTickModeImpl _$$StopPomodoreTickModeImplFromJson(
        Map<String, dynamic> json) =>
    _$StopPomodoreTickModeImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$StopPomodoreTickModeImplToJson(
        _$StopPomodoreTickModeImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };
