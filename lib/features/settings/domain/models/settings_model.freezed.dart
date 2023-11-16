// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'settings_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SettingsModel {
  Duration get pomodoro => throw _privateConstructorUsedError;
  Duration get shortBreak => throw _privateConstructorUsedError;
  Duration get longBreak => throw _privateConstructorUsedError;
  PomodoreMode get pomodoreMode => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SettingsModelCopyWith<SettingsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsModelCopyWith<$Res> {
  factory $SettingsModelCopyWith(
          SettingsModel value, $Res Function(SettingsModel) then) =
      _$SettingsModelCopyWithImpl<$Res, SettingsModel>;
  @useResult
  $Res call(
      {Duration pomodoro,
      Duration shortBreak,
      Duration longBreak,
      PomodoreMode pomodoreMode});

  $PomodoreModeCopyWith<$Res> get pomodoreMode;
}

/// @nodoc
class _$SettingsModelCopyWithImpl<$Res, $Val extends SettingsModel>
    implements $SettingsModelCopyWith<$Res> {
  _$SettingsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pomodoro = null,
    Object? shortBreak = null,
    Object? longBreak = null,
    Object? pomodoreMode = null,
  }) {
    return _then(_value.copyWith(
      pomodoro: null == pomodoro
          ? _value.pomodoro
          : pomodoro // ignore: cast_nullable_to_non_nullable
              as Duration,
      shortBreak: null == shortBreak
          ? _value.shortBreak
          : shortBreak // ignore: cast_nullable_to_non_nullable
              as Duration,
      longBreak: null == longBreak
          ? _value.longBreak
          : longBreak // ignore: cast_nullable_to_non_nullable
              as Duration,
      pomodoreMode: null == pomodoreMode
          ? _value.pomodoreMode
          : pomodoreMode // ignore: cast_nullable_to_non_nullable
              as PomodoreMode,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PomodoreModeCopyWith<$Res> get pomodoreMode {
    return $PomodoreModeCopyWith<$Res>(_value.pomodoreMode, (value) {
      return _then(_value.copyWith(pomodoreMode: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SettingsModelImplCopyWith<$Res>
    implements $SettingsModelCopyWith<$Res> {
  factory _$$SettingsModelImplCopyWith(
          _$SettingsModelImpl value, $Res Function(_$SettingsModelImpl) then) =
      __$$SettingsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Duration pomodoro,
      Duration shortBreak,
      Duration longBreak,
      PomodoreMode pomodoreMode});

  @override
  $PomodoreModeCopyWith<$Res> get pomodoreMode;
}

/// @nodoc
class __$$SettingsModelImplCopyWithImpl<$Res>
    extends _$SettingsModelCopyWithImpl<$Res, _$SettingsModelImpl>
    implements _$$SettingsModelImplCopyWith<$Res> {
  __$$SettingsModelImplCopyWithImpl(
      _$SettingsModelImpl _value, $Res Function(_$SettingsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pomodoro = null,
    Object? shortBreak = null,
    Object? longBreak = null,
    Object? pomodoreMode = null,
  }) {
    return _then(_$SettingsModelImpl(
      pomodoro: null == pomodoro
          ? _value.pomodoro
          : pomodoro // ignore: cast_nullable_to_non_nullable
              as Duration,
      shortBreak: null == shortBreak
          ? _value.shortBreak
          : shortBreak // ignore: cast_nullable_to_non_nullable
              as Duration,
      longBreak: null == longBreak
          ? _value.longBreak
          : longBreak // ignore: cast_nullable_to_non_nullable
              as Duration,
      pomodoreMode: null == pomodoreMode
          ? _value.pomodoreMode
          : pomodoreMode // ignore: cast_nullable_to_non_nullable
              as PomodoreMode,
    ));
  }
}

/// @nodoc

class _$SettingsModelImpl extends _SettingsModel {
  const _$SettingsModelImpl(
      {required this.pomodoro,
      required this.shortBreak,
      required this.longBreak,
      this.pomodoreMode = const PomodoreMode.pomodoro()})
      : super._();

  @override
  final Duration pomodoro;
  @override
  final Duration shortBreak;
  @override
  final Duration longBreak;
  @override
  @JsonKey()
  final PomodoreMode pomodoreMode;

  @override
  String toString() {
    return 'SettingsModel(pomodoro: $pomodoro, shortBreak: $shortBreak, longBreak: $longBreak, pomodoreMode: $pomodoreMode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettingsModelImpl &&
            (identical(other.pomodoro, pomodoro) ||
                other.pomodoro == pomodoro) &&
            (identical(other.shortBreak, shortBreak) ||
                other.shortBreak == shortBreak) &&
            (identical(other.longBreak, longBreak) ||
                other.longBreak == longBreak) &&
            (identical(other.pomodoreMode, pomodoreMode) ||
                other.pomodoreMode == pomodoreMode));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, pomodoro, shortBreak, longBreak, pomodoreMode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SettingsModelImplCopyWith<_$SettingsModelImpl> get copyWith =>
      __$$SettingsModelImplCopyWithImpl<_$SettingsModelImpl>(this, _$identity);
}

abstract class _SettingsModel extends SettingsModel {
  const factory _SettingsModel(
      {required final Duration pomodoro,
      required final Duration shortBreak,
      required final Duration longBreak,
      final PomodoreMode pomodoreMode}) = _$SettingsModelImpl;
  const _SettingsModel._() : super._();

  @override
  Duration get pomodoro;
  @override
  Duration get shortBreak;
  @override
  Duration get longBreak;
  @override
  PomodoreMode get pomodoreMode;
  @override
  @JsonKey(ignore: true)
  _$$SettingsModelImplCopyWith<_$SettingsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
