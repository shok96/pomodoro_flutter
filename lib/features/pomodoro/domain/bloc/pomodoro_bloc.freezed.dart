// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pomodoro_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PomodoroEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PomodoroState state) tick,
    required TResult Function() play,
    required TResult Function() pause,
    required TResult Function() restart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PomodoroState state)? tick,
    TResult? Function()? play,
    TResult? Function()? pause,
    TResult? Function()? restart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PomodoroState state)? tick,
    TResult Function()? play,
    TResult Function()? pause,
    TResult Function()? restart,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TickPomodoroEvent value) tick,
    required TResult Function(PlayPomodoroEvent value) play,
    required TResult Function(PausePomodoroEvent value) pause,
    required TResult Function(RestartPomodoroEvent value) restart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TickPomodoroEvent value)? tick,
    TResult? Function(PlayPomodoroEvent value)? play,
    TResult? Function(PausePomodoroEvent value)? pause,
    TResult? Function(RestartPomodoroEvent value)? restart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TickPomodoroEvent value)? tick,
    TResult Function(PlayPomodoroEvent value)? play,
    TResult Function(PausePomodoroEvent value)? pause,
    TResult Function(RestartPomodoroEvent value)? restart,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PomodoroEventCopyWith<$Res> {
  factory $PomodoroEventCopyWith(
          PomodoroEvent value, $Res Function(PomodoroEvent) then) =
      _$PomodoroEventCopyWithImpl<$Res, PomodoroEvent>;
}

/// @nodoc
class _$PomodoroEventCopyWithImpl<$Res, $Val extends PomodoroEvent>
    implements $PomodoroEventCopyWith<$Res> {
  _$PomodoroEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$TickPomodoroEventImplCopyWith<$Res> {
  factory _$$TickPomodoroEventImplCopyWith(_$TickPomodoroEventImpl value,
          $Res Function(_$TickPomodoroEventImpl) then) =
      __$$TickPomodoroEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({PomodoroState state});

  $PomodoroStateCopyWith<$Res> get state;
}

/// @nodoc
class __$$TickPomodoroEventImplCopyWithImpl<$Res>
    extends _$PomodoroEventCopyWithImpl<$Res, _$TickPomodoroEventImpl>
    implements _$$TickPomodoroEventImplCopyWith<$Res> {
  __$$TickPomodoroEventImplCopyWithImpl(_$TickPomodoroEventImpl _value,
      $Res Function(_$TickPomodoroEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
  }) {
    return _then(_$TickPomodoroEventImpl(
      null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as PomodoroState,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $PomodoroStateCopyWith<$Res> get state {
    return $PomodoroStateCopyWith<$Res>(_value.state, (value) {
      return _then(_value.copyWith(state: value));
    });
  }
}

/// @nodoc

class _$TickPomodoroEventImpl implements TickPomodoroEvent {
  const _$TickPomodoroEventImpl(this.state);

  @override
  final PomodoroState state;

  @override
  String toString() {
    return 'PomodoroEvent.tick(state: $state)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TickPomodoroEventImpl &&
            (identical(other.state, state) || other.state == state));
  }

  @override
  int get hashCode => Object.hash(runtimeType, state);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TickPomodoroEventImplCopyWith<_$TickPomodoroEventImpl> get copyWith =>
      __$$TickPomodoroEventImplCopyWithImpl<_$TickPomodoroEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PomodoroState state) tick,
    required TResult Function() play,
    required TResult Function() pause,
    required TResult Function() restart,
  }) {
    return tick(state);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PomodoroState state)? tick,
    TResult? Function()? play,
    TResult? Function()? pause,
    TResult? Function()? restart,
  }) {
    return tick?.call(state);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PomodoroState state)? tick,
    TResult Function()? play,
    TResult Function()? pause,
    TResult Function()? restart,
    required TResult orElse(),
  }) {
    if (tick != null) {
      return tick(state);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TickPomodoroEvent value) tick,
    required TResult Function(PlayPomodoroEvent value) play,
    required TResult Function(PausePomodoroEvent value) pause,
    required TResult Function(RestartPomodoroEvent value) restart,
  }) {
    return tick(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TickPomodoroEvent value)? tick,
    TResult? Function(PlayPomodoroEvent value)? play,
    TResult? Function(PausePomodoroEvent value)? pause,
    TResult? Function(RestartPomodoroEvent value)? restart,
  }) {
    return tick?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TickPomodoroEvent value)? tick,
    TResult Function(PlayPomodoroEvent value)? play,
    TResult Function(PausePomodoroEvent value)? pause,
    TResult Function(RestartPomodoroEvent value)? restart,
    required TResult orElse(),
  }) {
    if (tick != null) {
      return tick(this);
    }
    return orElse();
  }
}

abstract class TickPomodoroEvent implements PomodoroEvent {
  const factory TickPomodoroEvent(final PomodoroState state) =
      _$TickPomodoroEventImpl;

  PomodoroState get state;
  @JsonKey(ignore: true)
  _$$TickPomodoroEventImplCopyWith<_$TickPomodoroEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PlayPomodoroEventImplCopyWith<$Res> {
  factory _$$PlayPomodoroEventImplCopyWith(_$PlayPomodoroEventImpl value,
          $Res Function(_$PlayPomodoroEventImpl) then) =
      __$$PlayPomodoroEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PlayPomodoroEventImplCopyWithImpl<$Res>
    extends _$PomodoroEventCopyWithImpl<$Res, _$PlayPomodoroEventImpl>
    implements _$$PlayPomodoroEventImplCopyWith<$Res> {
  __$$PlayPomodoroEventImplCopyWithImpl(_$PlayPomodoroEventImpl _value,
      $Res Function(_$PlayPomodoroEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PlayPomodoroEventImpl implements PlayPomodoroEvent {
  const _$PlayPomodoroEventImpl();

  @override
  String toString() {
    return 'PomodoroEvent.play()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PlayPomodoroEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PomodoroState state) tick,
    required TResult Function() play,
    required TResult Function() pause,
    required TResult Function() restart,
  }) {
    return play();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PomodoroState state)? tick,
    TResult? Function()? play,
    TResult? Function()? pause,
    TResult? Function()? restart,
  }) {
    return play?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PomodoroState state)? tick,
    TResult Function()? play,
    TResult Function()? pause,
    TResult Function()? restart,
    required TResult orElse(),
  }) {
    if (play != null) {
      return play();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TickPomodoroEvent value) tick,
    required TResult Function(PlayPomodoroEvent value) play,
    required TResult Function(PausePomodoroEvent value) pause,
    required TResult Function(RestartPomodoroEvent value) restart,
  }) {
    return play(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TickPomodoroEvent value)? tick,
    TResult? Function(PlayPomodoroEvent value)? play,
    TResult? Function(PausePomodoroEvent value)? pause,
    TResult? Function(RestartPomodoroEvent value)? restart,
  }) {
    return play?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TickPomodoroEvent value)? tick,
    TResult Function(PlayPomodoroEvent value)? play,
    TResult Function(PausePomodoroEvent value)? pause,
    TResult Function(RestartPomodoroEvent value)? restart,
    required TResult orElse(),
  }) {
    if (play != null) {
      return play(this);
    }
    return orElse();
  }
}

abstract class PlayPomodoroEvent implements PomodoroEvent {
  const factory PlayPomodoroEvent() = _$PlayPomodoroEventImpl;
}

/// @nodoc
abstract class _$$PausePomodoroEventImplCopyWith<$Res> {
  factory _$$PausePomodoroEventImplCopyWith(_$PausePomodoroEventImpl value,
          $Res Function(_$PausePomodoroEventImpl) then) =
      __$$PausePomodoroEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PausePomodoroEventImplCopyWithImpl<$Res>
    extends _$PomodoroEventCopyWithImpl<$Res, _$PausePomodoroEventImpl>
    implements _$$PausePomodoroEventImplCopyWith<$Res> {
  __$$PausePomodoroEventImplCopyWithImpl(_$PausePomodoroEventImpl _value,
      $Res Function(_$PausePomodoroEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PausePomodoroEventImpl implements PausePomodoroEvent {
  const _$PausePomodoroEventImpl();

  @override
  String toString() {
    return 'PomodoroEvent.pause()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PausePomodoroEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PomodoroState state) tick,
    required TResult Function() play,
    required TResult Function() pause,
    required TResult Function() restart,
  }) {
    return pause();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PomodoroState state)? tick,
    TResult? Function()? play,
    TResult? Function()? pause,
    TResult? Function()? restart,
  }) {
    return pause?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PomodoroState state)? tick,
    TResult Function()? play,
    TResult Function()? pause,
    TResult Function()? restart,
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
    required TResult Function(TickPomodoroEvent value) tick,
    required TResult Function(PlayPomodoroEvent value) play,
    required TResult Function(PausePomodoroEvent value) pause,
    required TResult Function(RestartPomodoroEvent value) restart,
  }) {
    return pause(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TickPomodoroEvent value)? tick,
    TResult? Function(PlayPomodoroEvent value)? play,
    TResult? Function(PausePomodoroEvent value)? pause,
    TResult? Function(RestartPomodoroEvent value)? restart,
  }) {
    return pause?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TickPomodoroEvent value)? tick,
    TResult Function(PlayPomodoroEvent value)? play,
    TResult Function(PausePomodoroEvent value)? pause,
    TResult Function(RestartPomodoroEvent value)? restart,
    required TResult orElse(),
  }) {
    if (pause != null) {
      return pause(this);
    }
    return orElse();
  }
}

abstract class PausePomodoroEvent implements PomodoroEvent {
  const factory PausePomodoroEvent() = _$PausePomodoroEventImpl;
}

/// @nodoc
abstract class _$$RestartPomodoroEventImplCopyWith<$Res> {
  factory _$$RestartPomodoroEventImplCopyWith(_$RestartPomodoroEventImpl value,
          $Res Function(_$RestartPomodoroEventImpl) then) =
      __$$RestartPomodoroEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RestartPomodoroEventImplCopyWithImpl<$Res>
    extends _$PomodoroEventCopyWithImpl<$Res, _$RestartPomodoroEventImpl>
    implements _$$RestartPomodoroEventImplCopyWith<$Res> {
  __$$RestartPomodoroEventImplCopyWithImpl(_$RestartPomodoroEventImpl _value,
      $Res Function(_$RestartPomodoroEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RestartPomodoroEventImpl implements RestartPomodoroEvent {
  const _$RestartPomodoroEventImpl();

  @override
  String toString() {
    return 'PomodoroEvent.restart()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RestartPomodoroEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PomodoroState state) tick,
    required TResult Function() play,
    required TResult Function() pause,
    required TResult Function() restart,
  }) {
    return restart();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PomodoroState state)? tick,
    TResult? Function()? play,
    TResult? Function()? pause,
    TResult? Function()? restart,
  }) {
    return restart?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PomodoroState state)? tick,
    TResult Function()? play,
    TResult Function()? pause,
    TResult Function()? restart,
    required TResult orElse(),
  }) {
    if (restart != null) {
      return restart();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TickPomodoroEvent value) tick,
    required TResult Function(PlayPomodoroEvent value) play,
    required TResult Function(PausePomodoroEvent value) pause,
    required TResult Function(RestartPomodoroEvent value) restart,
  }) {
    return restart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TickPomodoroEvent value)? tick,
    TResult? Function(PlayPomodoroEvent value)? play,
    TResult? Function(PausePomodoroEvent value)? pause,
    TResult? Function(RestartPomodoroEvent value)? restart,
  }) {
    return restart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TickPomodoroEvent value)? tick,
    TResult Function(PlayPomodoroEvent value)? play,
    TResult Function(PausePomodoroEvent value)? pause,
    TResult Function(RestartPomodoroEvent value)? restart,
    required TResult orElse(),
  }) {
    if (restart != null) {
      return restart(this);
    }
    return orElse();
  }
}

abstract class RestartPomodoroEvent implements PomodoroEvent {
  const factory RestartPomodoroEvent() = _$RestartPomodoroEventImpl;
}

PomodoroState _$PomodoroStateFromJson(Map<String, dynamic> json) {
  return _PomodoroState.fromJson(json);
}

/// @nodoc
mixin _$PomodoroState {
  DateTime? get startedDateTime => throw _privateConstructorUsedError;
  Duration get duration => throw _privateConstructorUsedError;
  PomodoreMode get mode => throw _privateConstructorUsedError;
  PomodoreTickMode get tickMode => throw _privateConstructorUsedError;
  Duration get nowTick => throw _privateConstructorUsedError;
  double get progress => throw _privateConstructorUsedError;
  int get shortCount => throw _privateConstructorUsedError;
  bool get isVibro => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PomodoroStateCopyWith<PomodoroState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PomodoroStateCopyWith<$Res> {
  factory $PomodoroStateCopyWith(
          PomodoroState value, $Res Function(PomodoroState) then) =
      _$PomodoroStateCopyWithImpl<$Res, PomodoroState>;
  @useResult
  $Res call(
      {DateTime? startedDateTime,
      Duration duration,
      PomodoreMode mode,
      PomodoreTickMode tickMode,
      Duration nowTick,
      double progress,
      int shortCount,
      bool isVibro});

  $PomodoreModeCopyWith<$Res> get mode;
  $PomodoreTickModeCopyWith<$Res> get tickMode;
}

/// @nodoc
class _$PomodoroStateCopyWithImpl<$Res, $Val extends PomodoroState>
    implements $PomodoroStateCopyWith<$Res> {
  _$PomodoroStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startedDateTime = freezed,
    Object? duration = null,
    Object? mode = null,
    Object? tickMode = null,
    Object? nowTick = null,
    Object? progress = null,
    Object? shortCount = null,
    Object? isVibro = null,
  }) {
    return _then(_value.copyWith(
      startedDateTime: freezed == startedDateTime
          ? _value.startedDateTime
          : startedDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration,
      mode: null == mode
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as PomodoreMode,
      tickMode: null == tickMode
          ? _value.tickMode
          : tickMode // ignore: cast_nullable_to_non_nullable
              as PomodoreTickMode,
      nowTick: null == nowTick
          ? _value.nowTick
          : nowTick // ignore: cast_nullable_to_non_nullable
              as Duration,
      progress: null == progress
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as double,
      shortCount: null == shortCount
          ? _value.shortCount
          : shortCount // ignore: cast_nullable_to_non_nullable
              as int,
      isVibro: null == isVibro
          ? _value.isVibro
          : isVibro // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PomodoreModeCopyWith<$Res> get mode {
    return $PomodoreModeCopyWith<$Res>(_value.mode, (value) {
      return _then(_value.copyWith(mode: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PomodoreTickModeCopyWith<$Res> get tickMode {
    return $PomodoreTickModeCopyWith<$Res>(_value.tickMode, (value) {
      return _then(_value.copyWith(tickMode: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PomodoroStateImplCopyWith<$Res>
    implements $PomodoroStateCopyWith<$Res> {
  factory _$$PomodoroStateImplCopyWith(
          _$PomodoroStateImpl value, $Res Function(_$PomodoroStateImpl) then) =
      __$$PomodoroStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime? startedDateTime,
      Duration duration,
      PomodoreMode mode,
      PomodoreTickMode tickMode,
      Duration nowTick,
      double progress,
      int shortCount,
      bool isVibro});

  @override
  $PomodoreModeCopyWith<$Res> get mode;
  @override
  $PomodoreTickModeCopyWith<$Res> get tickMode;
}

/// @nodoc
class __$$PomodoroStateImplCopyWithImpl<$Res>
    extends _$PomodoroStateCopyWithImpl<$Res, _$PomodoroStateImpl>
    implements _$$PomodoroStateImplCopyWith<$Res> {
  __$$PomodoroStateImplCopyWithImpl(
      _$PomodoroStateImpl _value, $Res Function(_$PomodoroStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startedDateTime = freezed,
    Object? duration = null,
    Object? mode = null,
    Object? tickMode = null,
    Object? nowTick = null,
    Object? progress = null,
    Object? shortCount = null,
    Object? isVibro = null,
  }) {
    return _then(_$PomodoroStateImpl(
      startedDateTime: freezed == startedDateTime
          ? _value.startedDateTime
          : startedDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration,
      mode: null == mode
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as PomodoreMode,
      tickMode: null == tickMode
          ? _value.tickMode
          : tickMode // ignore: cast_nullable_to_non_nullable
              as PomodoreTickMode,
      nowTick: null == nowTick
          ? _value.nowTick
          : nowTick // ignore: cast_nullable_to_non_nullable
              as Duration,
      progress: null == progress
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as double,
      shortCount: null == shortCount
          ? _value.shortCount
          : shortCount // ignore: cast_nullable_to_non_nullable
              as int,
      isVibro: null == isVibro
          ? _value.isVibro
          : isVibro // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PomodoroStateImpl extends _PomodoroState {
  const _$PomodoroStateImpl(
      {required this.startedDateTime,
      required this.duration,
      required this.mode,
      required this.tickMode,
      required this.nowTick,
      required this.progress,
      required this.shortCount,
      this.isVibro = false})
      : super._();

  factory _$PomodoroStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$PomodoroStateImplFromJson(json);

  @override
  final DateTime? startedDateTime;
  @override
  final Duration duration;
  @override
  final PomodoreMode mode;
  @override
  final PomodoreTickMode tickMode;
  @override
  final Duration nowTick;
  @override
  final double progress;
  @override
  final int shortCount;
  @override
  @JsonKey()
  final bool isVibro;

  @override
  String toString() {
    return 'PomodoroState(startedDateTime: $startedDateTime, duration: $duration, mode: $mode, tickMode: $tickMode, nowTick: $nowTick, progress: $progress, shortCount: $shortCount, isVibro: $isVibro)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PomodoroStateImpl &&
            (identical(other.startedDateTime, startedDateTime) ||
                other.startedDateTime == startedDateTime) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.mode, mode) || other.mode == mode) &&
            (identical(other.tickMode, tickMode) ||
                other.tickMode == tickMode) &&
            (identical(other.nowTick, nowTick) || other.nowTick == nowTick) &&
            (identical(other.progress, progress) ||
                other.progress == progress) &&
            (identical(other.shortCount, shortCount) ||
                other.shortCount == shortCount) &&
            (identical(other.isVibro, isVibro) || other.isVibro == isVibro));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, startedDateTime, duration, mode,
      tickMode, nowTick, progress, shortCount, isVibro);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PomodoroStateImplCopyWith<_$PomodoroStateImpl> get copyWith =>
      __$$PomodoroStateImplCopyWithImpl<_$PomodoroStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PomodoroStateImplToJson(
      this,
    );
  }
}

abstract class _PomodoroState extends PomodoroState {
  const factory _PomodoroState(
      {required final DateTime? startedDateTime,
      required final Duration duration,
      required final PomodoreMode mode,
      required final PomodoreTickMode tickMode,
      required final Duration nowTick,
      required final double progress,
      required final int shortCount,
      final bool isVibro}) = _$PomodoroStateImpl;
  const _PomodoroState._() : super._();

  factory _PomodoroState.fromJson(Map<String, dynamic> json) =
      _$PomodoroStateImpl.fromJson;

  @override
  DateTime? get startedDateTime;
  @override
  Duration get duration;
  @override
  PomodoreMode get mode;
  @override
  PomodoreTickMode get tickMode;
  @override
  Duration get nowTick;
  @override
  double get progress;
  @override
  int get shortCount;
  @override
  bool get isVibro;
  @override
  @JsonKey(ignore: true)
  _$$PomodoroStateImplCopyWith<_$PomodoroStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PomodoreMode _$PomodoreModeFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'pomodoro':
      return PomodoroPomodoreMode.fromJson(json);
    case 'short':
      return ShortPomodoreMode.fromJson(json);
    case 'long':
      return LongPomodoreMode.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'PomodoreMode',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$PomodoreMode {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pomodoro,
    required TResult Function() short,
    required TResult Function() long,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pomodoro,
    TResult? Function()? short,
    TResult? Function()? long,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pomodoro,
    TResult Function()? short,
    TResult Function()? long,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PomodoroPomodoreMode value) pomodoro,
    required TResult Function(ShortPomodoreMode value) short,
    required TResult Function(LongPomodoreMode value) long,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PomodoroPomodoreMode value)? pomodoro,
    TResult? Function(ShortPomodoreMode value)? short,
    TResult? Function(LongPomodoreMode value)? long,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PomodoroPomodoreMode value)? pomodoro,
    TResult Function(ShortPomodoreMode value)? short,
    TResult Function(LongPomodoreMode value)? long,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PomodoreModeCopyWith<$Res> {
  factory $PomodoreModeCopyWith(
          PomodoreMode value, $Res Function(PomodoreMode) then) =
      _$PomodoreModeCopyWithImpl<$Res, PomodoreMode>;
}

/// @nodoc
class _$PomodoreModeCopyWithImpl<$Res, $Val extends PomodoreMode>
    implements $PomodoreModeCopyWith<$Res> {
  _$PomodoreModeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$PomodoroPomodoreModeImplCopyWith<$Res> {
  factory _$$PomodoroPomodoreModeImplCopyWith(_$PomodoroPomodoreModeImpl value,
          $Res Function(_$PomodoroPomodoreModeImpl) then) =
      __$$PomodoroPomodoreModeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PomodoroPomodoreModeImplCopyWithImpl<$Res>
    extends _$PomodoreModeCopyWithImpl<$Res, _$PomodoroPomodoreModeImpl>
    implements _$$PomodoroPomodoreModeImplCopyWith<$Res> {
  __$$PomodoroPomodoreModeImplCopyWithImpl(_$PomodoroPomodoreModeImpl _value,
      $Res Function(_$PomodoroPomodoreModeImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$PomodoroPomodoreModeImpl implements PomodoroPomodoreMode {
  const _$PomodoroPomodoreModeImpl({final String? $type})
      : $type = $type ?? 'pomodoro';

  factory _$PomodoroPomodoreModeImpl.fromJson(Map<String, dynamic> json) =>
      _$$PomodoroPomodoreModeImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'PomodoreMode.pomodoro()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PomodoroPomodoreModeImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pomodoro,
    required TResult Function() short,
    required TResult Function() long,
  }) {
    return pomodoro();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pomodoro,
    TResult? Function()? short,
    TResult? Function()? long,
  }) {
    return pomodoro?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pomodoro,
    TResult Function()? short,
    TResult Function()? long,
    required TResult orElse(),
  }) {
    if (pomodoro != null) {
      return pomodoro();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PomodoroPomodoreMode value) pomodoro,
    required TResult Function(ShortPomodoreMode value) short,
    required TResult Function(LongPomodoreMode value) long,
  }) {
    return pomodoro(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PomodoroPomodoreMode value)? pomodoro,
    TResult? Function(ShortPomodoreMode value)? short,
    TResult? Function(LongPomodoreMode value)? long,
  }) {
    return pomodoro?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PomodoroPomodoreMode value)? pomodoro,
    TResult Function(ShortPomodoreMode value)? short,
    TResult Function(LongPomodoreMode value)? long,
    required TResult orElse(),
  }) {
    if (pomodoro != null) {
      return pomodoro(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$PomodoroPomodoreModeImplToJson(
      this,
    );
  }
}

abstract class PomodoroPomodoreMode implements PomodoreMode {
  const factory PomodoroPomodoreMode() = _$PomodoroPomodoreModeImpl;

  factory PomodoroPomodoreMode.fromJson(Map<String, dynamic> json) =
      _$PomodoroPomodoreModeImpl.fromJson;
}

/// @nodoc
abstract class _$$ShortPomodoreModeImplCopyWith<$Res> {
  factory _$$ShortPomodoreModeImplCopyWith(_$ShortPomodoreModeImpl value,
          $Res Function(_$ShortPomodoreModeImpl) then) =
      __$$ShortPomodoreModeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ShortPomodoreModeImplCopyWithImpl<$Res>
    extends _$PomodoreModeCopyWithImpl<$Res, _$ShortPomodoreModeImpl>
    implements _$$ShortPomodoreModeImplCopyWith<$Res> {
  __$$ShortPomodoreModeImplCopyWithImpl(_$ShortPomodoreModeImpl _value,
      $Res Function(_$ShortPomodoreModeImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$ShortPomodoreModeImpl implements ShortPomodoreMode {
  const _$ShortPomodoreModeImpl({final String? $type})
      : $type = $type ?? 'short';

  factory _$ShortPomodoreModeImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShortPomodoreModeImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'PomodoreMode.short()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ShortPomodoreModeImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pomodoro,
    required TResult Function() short,
    required TResult Function() long,
  }) {
    return short();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pomodoro,
    TResult? Function()? short,
    TResult? Function()? long,
  }) {
    return short?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pomodoro,
    TResult Function()? short,
    TResult Function()? long,
    required TResult orElse(),
  }) {
    if (short != null) {
      return short();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PomodoroPomodoreMode value) pomodoro,
    required TResult Function(ShortPomodoreMode value) short,
    required TResult Function(LongPomodoreMode value) long,
  }) {
    return short(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PomodoroPomodoreMode value)? pomodoro,
    TResult? Function(ShortPomodoreMode value)? short,
    TResult? Function(LongPomodoreMode value)? long,
  }) {
    return short?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PomodoroPomodoreMode value)? pomodoro,
    TResult Function(ShortPomodoreMode value)? short,
    TResult Function(LongPomodoreMode value)? long,
    required TResult orElse(),
  }) {
    if (short != null) {
      return short(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ShortPomodoreModeImplToJson(
      this,
    );
  }
}

abstract class ShortPomodoreMode implements PomodoreMode {
  const factory ShortPomodoreMode() = _$ShortPomodoreModeImpl;

  factory ShortPomodoreMode.fromJson(Map<String, dynamic> json) =
      _$ShortPomodoreModeImpl.fromJson;
}

/// @nodoc
abstract class _$$LongPomodoreModeImplCopyWith<$Res> {
  factory _$$LongPomodoreModeImplCopyWith(_$LongPomodoreModeImpl value,
          $Res Function(_$LongPomodoreModeImpl) then) =
      __$$LongPomodoreModeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LongPomodoreModeImplCopyWithImpl<$Res>
    extends _$PomodoreModeCopyWithImpl<$Res, _$LongPomodoreModeImpl>
    implements _$$LongPomodoreModeImplCopyWith<$Res> {
  __$$LongPomodoreModeImplCopyWithImpl(_$LongPomodoreModeImpl _value,
      $Res Function(_$LongPomodoreModeImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$LongPomodoreModeImpl implements LongPomodoreMode {
  const _$LongPomodoreModeImpl({final String? $type}) : $type = $type ?? 'long';

  factory _$LongPomodoreModeImpl.fromJson(Map<String, dynamic> json) =>
      _$$LongPomodoreModeImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'PomodoreMode.long()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LongPomodoreModeImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pomodoro,
    required TResult Function() short,
    required TResult Function() long,
  }) {
    return long();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pomodoro,
    TResult? Function()? short,
    TResult? Function()? long,
  }) {
    return long?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pomodoro,
    TResult Function()? short,
    TResult Function()? long,
    required TResult orElse(),
  }) {
    if (long != null) {
      return long();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PomodoroPomodoreMode value) pomodoro,
    required TResult Function(ShortPomodoreMode value) short,
    required TResult Function(LongPomodoreMode value) long,
  }) {
    return long(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PomodoroPomodoreMode value)? pomodoro,
    TResult? Function(ShortPomodoreMode value)? short,
    TResult? Function(LongPomodoreMode value)? long,
  }) {
    return long?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PomodoroPomodoreMode value)? pomodoro,
    TResult Function(ShortPomodoreMode value)? short,
    TResult Function(LongPomodoreMode value)? long,
    required TResult orElse(),
  }) {
    if (long != null) {
      return long(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$LongPomodoreModeImplToJson(
      this,
    );
  }
}

abstract class LongPomodoreMode implements PomodoreMode {
  const factory LongPomodoreMode() = _$LongPomodoreModeImpl;

  factory LongPomodoreMode.fromJson(Map<String, dynamic> json) =
      _$LongPomodoreModeImpl.fromJson;
}

PomodoreTickMode _$PomodoreTickModeFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'start':
      return StartPomodoreTickMode.fromJson(json);
    case 'pause':
      return PausePomodoreTickMode.fromJson(json);
    case 'stop':
      return StopPomodoreTickMode.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'PomodoreTickMode',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$PomodoreTickMode {
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
    required TResult Function(StartPomodoreTickMode value) start,
    required TResult Function(PausePomodoreTickMode value) pause,
    required TResult Function(StopPomodoreTickMode value) stop,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StartPomodoreTickMode value)? start,
    TResult? Function(PausePomodoreTickMode value)? pause,
    TResult? Function(StopPomodoreTickMode value)? stop,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartPomodoreTickMode value)? start,
    TResult Function(PausePomodoreTickMode value)? pause,
    TResult Function(StopPomodoreTickMode value)? stop,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PomodoreTickModeCopyWith<$Res> {
  factory $PomodoreTickModeCopyWith(
          PomodoreTickMode value, $Res Function(PomodoreTickMode) then) =
      _$PomodoreTickModeCopyWithImpl<$Res, PomodoreTickMode>;
}

/// @nodoc
class _$PomodoreTickModeCopyWithImpl<$Res, $Val extends PomodoreTickMode>
    implements $PomodoreTickModeCopyWith<$Res> {
  _$PomodoreTickModeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartPomodoreTickModeImplCopyWith<$Res> {
  factory _$$StartPomodoreTickModeImplCopyWith(
          _$StartPomodoreTickModeImpl value,
          $Res Function(_$StartPomodoreTickModeImpl) then) =
      __$$StartPomodoreTickModeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartPomodoreTickModeImplCopyWithImpl<$Res>
    extends _$PomodoreTickModeCopyWithImpl<$Res, _$StartPomodoreTickModeImpl>
    implements _$$StartPomodoreTickModeImplCopyWith<$Res> {
  __$$StartPomodoreTickModeImplCopyWithImpl(_$StartPomodoreTickModeImpl _value,
      $Res Function(_$StartPomodoreTickModeImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$StartPomodoreTickModeImpl implements StartPomodoreTickMode {
  const _$StartPomodoreTickModeImpl({final String? $type})
      : $type = $type ?? 'start';

  factory _$StartPomodoreTickModeImpl.fromJson(Map<String, dynamic> json) =>
      _$$StartPomodoreTickModeImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'PomodoreTickMode.start()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartPomodoreTickModeImpl);
  }

  @JsonKey(ignore: true)
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
    required TResult Function(StartPomodoreTickMode value) start,
    required TResult Function(PausePomodoreTickMode value) pause,
    required TResult Function(StopPomodoreTickMode value) stop,
  }) {
    return start(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StartPomodoreTickMode value)? start,
    TResult? Function(PausePomodoreTickMode value)? pause,
    TResult? Function(StopPomodoreTickMode value)? stop,
  }) {
    return start?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartPomodoreTickMode value)? start,
    TResult Function(PausePomodoreTickMode value)? pause,
    TResult Function(StopPomodoreTickMode value)? stop,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$StartPomodoreTickModeImplToJson(
      this,
    );
  }
}

abstract class StartPomodoreTickMode implements PomodoreTickMode {
  const factory StartPomodoreTickMode() = _$StartPomodoreTickModeImpl;

  factory StartPomodoreTickMode.fromJson(Map<String, dynamic> json) =
      _$StartPomodoreTickModeImpl.fromJson;
}

/// @nodoc
abstract class _$$PausePomodoreTickModeImplCopyWith<$Res> {
  factory _$$PausePomodoreTickModeImplCopyWith(
          _$PausePomodoreTickModeImpl value,
          $Res Function(_$PausePomodoreTickModeImpl) then) =
      __$$PausePomodoreTickModeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PausePomodoreTickModeImplCopyWithImpl<$Res>
    extends _$PomodoreTickModeCopyWithImpl<$Res, _$PausePomodoreTickModeImpl>
    implements _$$PausePomodoreTickModeImplCopyWith<$Res> {
  __$$PausePomodoreTickModeImplCopyWithImpl(_$PausePomodoreTickModeImpl _value,
      $Res Function(_$PausePomodoreTickModeImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$PausePomodoreTickModeImpl implements PausePomodoreTickMode {
  const _$PausePomodoreTickModeImpl({final String? $type})
      : $type = $type ?? 'pause';

  factory _$PausePomodoreTickModeImpl.fromJson(Map<String, dynamic> json) =>
      _$$PausePomodoreTickModeImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'PomodoreTickMode.pause()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PausePomodoreTickModeImpl);
  }

  @JsonKey(ignore: true)
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
    required TResult Function(StartPomodoreTickMode value) start,
    required TResult Function(PausePomodoreTickMode value) pause,
    required TResult Function(StopPomodoreTickMode value) stop,
  }) {
    return pause(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StartPomodoreTickMode value)? start,
    TResult? Function(PausePomodoreTickMode value)? pause,
    TResult? Function(StopPomodoreTickMode value)? stop,
  }) {
    return pause?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartPomodoreTickMode value)? start,
    TResult Function(PausePomodoreTickMode value)? pause,
    TResult Function(StopPomodoreTickMode value)? stop,
    required TResult orElse(),
  }) {
    if (pause != null) {
      return pause(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$PausePomodoreTickModeImplToJson(
      this,
    );
  }
}

abstract class PausePomodoreTickMode implements PomodoreTickMode {
  const factory PausePomodoreTickMode() = _$PausePomodoreTickModeImpl;

  factory PausePomodoreTickMode.fromJson(Map<String, dynamic> json) =
      _$PausePomodoreTickModeImpl.fromJson;
}

/// @nodoc
abstract class _$$StopPomodoreTickModeImplCopyWith<$Res> {
  factory _$$StopPomodoreTickModeImplCopyWith(_$StopPomodoreTickModeImpl value,
          $Res Function(_$StopPomodoreTickModeImpl) then) =
      __$$StopPomodoreTickModeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StopPomodoreTickModeImplCopyWithImpl<$Res>
    extends _$PomodoreTickModeCopyWithImpl<$Res, _$StopPomodoreTickModeImpl>
    implements _$$StopPomodoreTickModeImplCopyWith<$Res> {
  __$$StopPomodoreTickModeImplCopyWithImpl(_$StopPomodoreTickModeImpl _value,
      $Res Function(_$StopPomodoreTickModeImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$StopPomodoreTickModeImpl implements StopPomodoreTickMode {
  const _$StopPomodoreTickModeImpl({final String? $type})
      : $type = $type ?? 'stop';

  factory _$StopPomodoreTickModeImpl.fromJson(Map<String, dynamic> json) =>
      _$$StopPomodoreTickModeImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'PomodoreTickMode.stop()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StopPomodoreTickModeImpl);
  }

  @JsonKey(ignore: true)
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
    required TResult Function(StartPomodoreTickMode value) start,
    required TResult Function(PausePomodoreTickMode value) pause,
    required TResult Function(StopPomodoreTickMode value) stop,
  }) {
    return stop(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StartPomodoreTickMode value)? start,
    TResult? Function(PausePomodoreTickMode value)? pause,
    TResult? Function(StopPomodoreTickMode value)? stop,
  }) {
    return stop?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartPomodoreTickMode value)? start,
    TResult Function(PausePomodoreTickMode value)? pause,
    TResult Function(StopPomodoreTickMode value)? stop,
    required TResult orElse(),
  }) {
    if (stop != null) {
      return stop(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$StopPomodoreTickModeImplToJson(
      this,
    );
  }
}

abstract class StopPomodoreTickMode implements PomodoreTickMode {
  const factory StopPomodoreTickMode() = _$StopPomodoreTickModeImpl;

  factory StopPomodoreTickMode.fromJson(Map<String, dynamic> json) =
      _$StopPomodoreTickModeImpl.fromJson;
}
