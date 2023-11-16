// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tick_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TickModels {
  TickMode get tickMode => throw _privateConstructorUsedError;
  PomodoroState get task => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TickModelsCopyWith<TickModels> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TickModelsCopyWith<$Res> {
  factory $TickModelsCopyWith(
          TickModels value, $Res Function(TickModels) then) =
      _$TickModelsCopyWithImpl<$Res, TickModels>;
  @useResult
  $Res call({TickMode tickMode, PomodoroState task});

  $TickModeCopyWith<$Res> get tickMode;
  $PomodoroStateCopyWith<$Res> get task;
}

/// @nodoc
class _$TickModelsCopyWithImpl<$Res, $Val extends TickModels>
    implements $TickModelsCopyWith<$Res> {
  _$TickModelsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tickMode = null,
    Object? task = null,
  }) {
    return _then(_value.copyWith(
      tickMode: null == tickMode
          ? _value.tickMode
          : tickMode // ignore: cast_nullable_to_non_nullable
              as TickMode,
      task: null == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as PomodoroState,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TickModeCopyWith<$Res> get tickMode {
    return $TickModeCopyWith<$Res>(_value.tickMode, (value) {
      return _then(_value.copyWith(tickMode: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PomodoroStateCopyWith<$Res> get task {
    return $PomodoroStateCopyWith<$Res>(_value.task, (value) {
      return _then(_value.copyWith(task: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TickModelsImplCopyWith<$Res>
    implements $TickModelsCopyWith<$Res> {
  factory _$$TickModelsImplCopyWith(
          _$TickModelsImpl value, $Res Function(_$TickModelsImpl) then) =
      __$$TickModelsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TickMode tickMode, PomodoroState task});

  @override
  $TickModeCopyWith<$Res> get tickMode;
  @override
  $PomodoroStateCopyWith<$Res> get task;
}

/// @nodoc
class __$$TickModelsImplCopyWithImpl<$Res>
    extends _$TickModelsCopyWithImpl<$Res, _$TickModelsImpl>
    implements _$$TickModelsImplCopyWith<$Res> {
  __$$TickModelsImplCopyWithImpl(
      _$TickModelsImpl _value, $Res Function(_$TickModelsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tickMode = null,
    Object? task = null,
  }) {
    return _then(_$TickModelsImpl(
      tickMode: null == tickMode
          ? _value.tickMode
          : tickMode // ignore: cast_nullable_to_non_nullable
              as TickMode,
      task: null == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as PomodoroState,
    ));
  }
}

/// @nodoc

class _$TickModelsImpl implements _TickModels {
  const _$TickModelsImpl(
      {this.tickMode = const TickMode.stop(),
      this.task = PomodoroState.defaultPomodoro});

  @override
  @JsonKey()
  final TickMode tickMode;
  @override
  @JsonKey()
  final PomodoroState task;

  @override
  String toString() {
    return 'TickModels(tickMode: $tickMode, task: $task)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TickModelsImpl &&
            (identical(other.tickMode, tickMode) ||
                other.tickMode == tickMode) &&
            (identical(other.task, task) || other.task == task));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tickMode, task);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TickModelsImplCopyWith<_$TickModelsImpl> get copyWith =>
      __$$TickModelsImplCopyWithImpl<_$TickModelsImpl>(this, _$identity);
}

abstract class _TickModels implements TickModels {
  const factory _TickModels(
      {final TickMode tickMode, final PomodoroState task}) = _$TickModelsImpl;

  @override
  TickMode get tickMode;
  @override
  PomodoroState get task;
  @override
  @JsonKey(ignore: true)
  _$$TickModelsImplCopyWith<_$TickModelsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TickMode {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() start,
    required TResult Function() pause,
    required TResult Function() stop,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? start,
    TResult? Function()? pause,
    TResult? Function()? stop,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function()? pause,
    TResult Function()? stop,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartTickMode value) start,
    required TResult Function(PauseTickMode value) pause,
    required TResult Function(StopTickMode value) stop,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StartTickMode value)? start,
    TResult? Function(PauseTickMode value)? pause,
    TResult? Function(StopTickMode value)? stop,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartTickMode value)? start,
    TResult Function(PauseTickMode value)? pause,
    TResult Function(StopTickMode value)? stop,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TickModeCopyWith<$Res> {
  factory $TickModeCopyWith(TickMode value, $Res Function(TickMode) then) =
      _$TickModeCopyWithImpl<$Res, TickMode>;
}

/// @nodoc
class _$TickModeCopyWithImpl<$Res, $Val extends TickMode>
    implements $TickModeCopyWith<$Res> {
  _$TickModeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartTickModeImplCopyWith<$Res> {
  factory _$$StartTickModeImplCopyWith(
          _$StartTickModeImpl value, $Res Function(_$StartTickModeImpl) then) =
      __$$StartTickModeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartTickModeImplCopyWithImpl<$Res>
    extends _$TickModeCopyWithImpl<$Res, _$StartTickModeImpl>
    implements _$$StartTickModeImplCopyWith<$Res> {
  __$$StartTickModeImplCopyWithImpl(
      _$StartTickModeImpl _value, $Res Function(_$StartTickModeImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartTickModeImpl implements StartTickMode {
  const _$StartTickModeImpl();

  @override
  String toString() {
    return 'TickMode.start()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartTickModeImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() start,
    required TResult Function() pause,
    required TResult Function() stop,
  }) {
    return start();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? start,
    TResult? Function()? pause,
    TResult? Function()? stop,
  }) {
    return start?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function()? pause,
    TResult Function()? stop,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartTickMode value) start,
    required TResult Function(PauseTickMode value) pause,
    required TResult Function(StopTickMode value) stop,
  }) {
    return start(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StartTickMode value)? start,
    TResult? Function(PauseTickMode value)? pause,
    TResult? Function(StopTickMode value)? stop,
  }) {
    return start?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartTickMode value)? start,
    TResult Function(PauseTickMode value)? pause,
    TResult Function(StopTickMode value)? stop,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start(this);
    }
    return orElse();
  }
}

abstract class StartTickMode implements TickMode {
  const factory StartTickMode() = _$StartTickModeImpl;
}

/// @nodoc
abstract class _$$PauseTickModeImplCopyWith<$Res> {
  factory _$$PauseTickModeImplCopyWith(
          _$PauseTickModeImpl value, $Res Function(_$PauseTickModeImpl) then) =
      __$$PauseTickModeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PauseTickModeImplCopyWithImpl<$Res>
    extends _$TickModeCopyWithImpl<$Res, _$PauseTickModeImpl>
    implements _$$PauseTickModeImplCopyWith<$Res> {
  __$$PauseTickModeImplCopyWithImpl(
      _$PauseTickModeImpl _value, $Res Function(_$PauseTickModeImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PauseTickModeImpl implements PauseTickMode {
  const _$PauseTickModeImpl();

  @override
  String toString() {
    return 'TickMode.pause()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PauseTickModeImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() start,
    required TResult Function() pause,
    required TResult Function() stop,
  }) {
    return pause();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? start,
    TResult? Function()? pause,
    TResult? Function()? stop,
  }) {
    return pause?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function()? pause,
    TResult Function()? stop,
    required TResult orElse(),
  }) {
    if (pause != null) {
      return pause();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartTickMode value) start,
    required TResult Function(PauseTickMode value) pause,
    required TResult Function(StopTickMode value) stop,
  }) {
    return pause(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StartTickMode value)? start,
    TResult? Function(PauseTickMode value)? pause,
    TResult? Function(StopTickMode value)? stop,
  }) {
    return pause?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartTickMode value)? start,
    TResult Function(PauseTickMode value)? pause,
    TResult Function(StopTickMode value)? stop,
    required TResult orElse(),
  }) {
    if (pause != null) {
      return pause(this);
    }
    return orElse();
  }
}

abstract class PauseTickMode implements TickMode {
  const factory PauseTickMode() = _$PauseTickModeImpl;
}

/// @nodoc
abstract class _$$StopTickModeImplCopyWith<$Res> {
  factory _$$StopTickModeImplCopyWith(
          _$StopTickModeImpl value, $Res Function(_$StopTickModeImpl) then) =
      __$$StopTickModeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StopTickModeImplCopyWithImpl<$Res>
    extends _$TickModeCopyWithImpl<$Res, _$StopTickModeImpl>
    implements _$$StopTickModeImplCopyWith<$Res> {
  __$$StopTickModeImplCopyWithImpl(
      _$StopTickModeImpl _value, $Res Function(_$StopTickModeImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StopTickModeImpl implements StopTickMode {
  const _$StopTickModeImpl();

  @override
  String toString() {
    return 'TickMode.stop()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StopTickModeImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() start,
    required TResult Function() pause,
    required TResult Function() stop,
  }) {
    return stop();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? start,
    TResult? Function()? pause,
    TResult? Function()? stop,
  }) {
    return stop?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function()? pause,
    TResult Function()? stop,
    required TResult orElse(),
  }) {
    if (stop != null) {
      return stop();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartTickMode value) start,
    required TResult Function(PauseTickMode value) pause,
    required TResult Function(StopTickMode value) stop,
  }) {
    return stop(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StartTickMode value)? start,
    TResult? Function(PauseTickMode value)? pause,
    TResult? Function(StopTickMode value)? stop,
  }) {
    return stop?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartTickMode value)? start,
    TResult Function(PauseTickMode value)? pause,
    TResult Function(StopTickMode value)? stop,
    required TResult orElse(),
  }) {
    if (stop != null) {
      return stop(this);
    }
    return orElse();
  }
}

abstract class StopTickMode implements TickMode {
  const factory StopTickMode() = _$StopTickModeImpl;
}
