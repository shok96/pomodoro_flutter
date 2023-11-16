// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'app_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AppState {
  AppState? get from => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppState? from) resumed,
    required TResult Function(AppState? from) inactive,
    required TResult Function(AppState? from) paused,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AppState? from)? resumed,
    TResult? Function(AppState? from)? inactive,
    TResult? Function(AppState? from)? paused,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppState? from)? resumed,
    TResult Function(AppState? from)? inactive,
    TResult Function(AppState? from)? paused,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ResumedAppState value) resumed,
    required TResult Function(InactiveAppState value) inactive,
    required TResult Function(PausedAppState value) paused,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ResumedAppState value)? resumed,
    TResult? Function(InactiveAppState value)? inactive,
    TResult? Function(PausedAppState value)? paused,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ResumedAppState value)? resumed,
    TResult Function(InactiveAppState value)? inactive,
    TResult Function(PausedAppState value)? paused,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppStateCopyWith<AppState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStateCopyWith<$Res> {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) then) =
      _$AppStateCopyWithImpl<$Res, AppState>;
  @useResult
  $Res call({AppState? from});

  $AppStateCopyWith<$Res>? get from;
}

/// @nodoc
class _$AppStateCopyWithImpl<$Res, $Val extends AppState>
    implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? from = freezed,
  }) {
    return _then(_value.copyWith(
      from: freezed == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as AppState?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AppStateCopyWith<$Res>? get from {
    if (_value.from == null) {
      return null;
    }

    return $AppStateCopyWith<$Res>(_value.from!, (value) {
      return _then(_value.copyWith(from: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ResumedAppStateCopyWith<$Res>
    implements $AppStateCopyWith<$Res> {
  factory _$$ResumedAppStateCopyWith(
          _$ResumedAppState value, $Res Function(_$ResumedAppState) then) =
      __$$ResumedAppStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AppState? from});

  @override
  $AppStateCopyWith<$Res>? get from;
}

/// @nodoc
class __$$ResumedAppStateCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$ResumedAppState>
    implements _$$ResumedAppStateCopyWith<$Res> {
  __$$ResumedAppStateCopyWithImpl(
      _$ResumedAppState _value, $Res Function(_$ResumedAppState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? from = freezed,
  }) {
    return _then(_$ResumedAppState(
      freezed == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as AppState?,
    ));
  }
}

/// @nodoc

class _$ResumedAppState implements ResumedAppState {
  const _$ResumedAppState(this.from);

  @override
  final AppState? from;

  @override
  String toString() {
    return 'AppState.resumed(from: $from)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResumedAppState &&
            (identical(other.from, from) || other.from == from));
  }

  @override
  int get hashCode => Object.hash(runtimeType, from);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResumedAppStateCopyWith<_$ResumedAppState> get copyWith =>
      __$$ResumedAppStateCopyWithImpl<_$ResumedAppState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppState? from) resumed,
    required TResult Function(AppState? from) inactive,
    required TResult Function(AppState? from) paused,
  }) {
    return resumed(from);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AppState? from)? resumed,
    TResult? Function(AppState? from)? inactive,
    TResult? Function(AppState? from)? paused,
  }) {
    return resumed?.call(from);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppState? from)? resumed,
    TResult Function(AppState? from)? inactive,
    TResult Function(AppState? from)? paused,
    required TResult orElse(),
  }) {
    if (resumed != null) {
      return resumed(from);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ResumedAppState value) resumed,
    required TResult Function(InactiveAppState value) inactive,
    required TResult Function(PausedAppState value) paused,
  }) {
    return resumed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ResumedAppState value)? resumed,
    TResult? Function(InactiveAppState value)? inactive,
    TResult? Function(PausedAppState value)? paused,
  }) {
    return resumed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ResumedAppState value)? resumed,
    TResult Function(InactiveAppState value)? inactive,
    TResult Function(PausedAppState value)? paused,
    required TResult orElse(),
  }) {
    if (resumed != null) {
      return resumed(this);
    }
    return orElse();
  }
}

abstract class ResumedAppState implements AppState {
  const factory ResumedAppState(final AppState? from) = _$ResumedAppState;

  @override
  AppState? get from;
  @override
  @JsonKey(ignore: true)
  _$$ResumedAppStateCopyWith<_$ResumedAppState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InactiveAppStateCopyWith<$Res>
    implements $AppStateCopyWith<$Res> {
  factory _$$InactiveAppStateCopyWith(
          _$InactiveAppState value, $Res Function(_$InactiveAppState) then) =
      __$$InactiveAppStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AppState? from});

  @override
  $AppStateCopyWith<$Res>? get from;
}

/// @nodoc
class __$$InactiveAppStateCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$InactiveAppState>
    implements _$$InactiveAppStateCopyWith<$Res> {
  __$$InactiveAppStateCopyWithImpl(
      _$InactiveAppState _value, $Res Function(_$InactiveAppState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? from = freezed,
  }) {
    return _then(_$InactiveAppState(
      freezed == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as AppState?,
    ));
  }
}

/// @nodoc

class _$InactiveAppState implements InactiveAppState {
  const _$InactiveAppState(this.from);

  @override
  final AppState? from;

  @override
  String toString() {
    return 'AppState.inactive(from: $from)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InactiveAppState &&
            (identical(other.from, from) || other.from == from));
  }

  @override
  int get hashCode => Object.hash(runtimeType, from);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InactiveAppStateCopyWith<_$InactiveAppState> get copyWith =>
      __$$InactiveAppStateCopyWithImpl<_$InactiveAppState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppState? from) resumed,
    required TResult Function(AppState? from) inactive,
    required TResult Function(AppState? from) paused,
  }) {
    return inactive(from);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AppState? from)? resumed,
    TResult? Function(AppState? from)? inactive,
    TResult? Function(AppState? from)? paused,
  }) {
    return inactive?.call(from);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppState? from)? resumed,
    TResult Function(AppState? from)? inactive,
    TResult Function(AppState? from)? paused,
    required TResult orElse(),
  }) {
    if (inactive != null) {
      return inactive(from);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ResumedAppState value) resumed,
    required TResult Function(InactiveAppState value) inactive,
    required TResult Function(PausedAppState value) paused,
  }) {
    return inactive(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ResumedAppState value)? resumed,
    TResult? Function(InactiveAppState value)? inactive,
    TResult? Function(PausedAppState value)? paused,
  }) {
    return inactive?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ResumedAppState value)? resumed,
    TResult Function(InactiveAppState value)? inactive,
    TResult Function(PausedAppState value)? paused,
    required TResult orElse(),
  }) {
    if (inactive != null) {
      return inactive(this);
    }
    return orElse();
  }
}

abstract class InactiveAppState implements AppState {
  const factory InactiveAppState(final AppState? from) = _$InactiveAppState;

  @override
  AppState? get from;
  @override
  @JsonKey(ignore: true)
  _$$InactiveAppStateCopyWith<_$InactiveAppState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PausedAppStateCopyWith<$Res>
    implements $AppStateCopyWith<$Res> {
  factory _$$PausedAppStateCopyWith(
          _$PausedAppState value, $Res Function(_$PausedAppState) then) =
      __$$PausedAppStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AppState? from});

  @override
  $AppStateCopyWith<$Res>? get from;
}

/// @nodoc
class __$$PausedAppStateCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$PausedAppState>
    implements _$$PausedAppStateCopyWith<$Res> {
  __$$PausedAppStateCopyWithImpl(
      _$PausedAppState _value, $Res Function(_$PausedAppState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? from = freezed,
  }) {
    return _then(_$PausedAppState(
      freezed == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as AppState?,
    ));
  }
}

/// @nodoc

class _$PausedAppState implements PausedAppState {
  const _$PausedAppState(this.from);

  @override
  final AppState? from;

  @override
  String toString() {
    return 'AppState.paused(from: $from)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PausedAppState &&
            (identical(other.from, from) || other.from == from));
  }

  @override
  int get hashCode => Object.hash(runtimeType, from);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PausedAppStateCopyWith<_$PausedAppState> get copyWith =>
      __$$PausedAppStateCopyWithImpl<_$PausedAppState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppState? from) resumed,
    required TResult Function(AppState? from) inactive,
    required TResult Function(AppState? from) paused,
  }) {
    return paused(from);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AppState? from)? resumed,
    TResult? Function(AppState? from)? inactive,
    TResult? Function(AppState? from)? paused,
  }) {
    return paused?.call(from);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppState? from)? resumed,
    TResult Function(AppState? from)? inactive,
    TResult Function(AppState? from)? paused,
    required TResult orElse(),
  }) {
    if (paused != null) {
      return paused(from);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ResumedAppState value) resumed,
    required TResult Function(InactiveAppState value) inactive,
    required TResult Function(PausedAppState value) paused,
  }) {
    return paused(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ResumedAppState value)? resumed,
    TResult? Function(InactiveAppState value)? inactive,
    TResult? Function(PausedAppState value)? paused,
  }) {
    return paused?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ResumedAppState value)? resumed,
    TResult Function(InactiveAppState value)? inactive,
    TResult Function(PausedAppState value)? paused,
    required TResult orElse(),
  }) {
    if (paused != null) {
      return paused(this);
    }
    return orElse();
  }
}

abstract class PausedAppState implements AppState {
  const factory PausedAppState(final AppState? from) = _$PausedAppState;

  @override
  AppState? get from;
  @override
  @JsonKey(ignore: true)
  _$$PausedAppStateCopyWith<_$PausedAppState> get copyWith =>
      throw _privateConstructorUsedError;
}
