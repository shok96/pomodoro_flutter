// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'permission_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PermissionState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unknown,
    required TResult Function(PermissionGranted granted) granted,
    required TResult Function(PermissionDenied denied) denied,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unknown,
    TResult? Function(PermissionGranted granted)? granted,
    TResult? Function(PermissionDenied denied)? denied,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function(PermissionGranted granted)? granted,
    TResult Function(PermissionDenied denied)? denied,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnknownPermissionState value) unknown,
    required TResult Function(DrantedPermissionState value) granted,
    required TResult Function(DeniedPermissionState value) denied,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UnknownPermissionState value)? unknown,
    TResult? Function(DrantedPermissionState value)? granted,
    TResult? Function(DeniedPermissionState value)? denied,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnknownPermissionState value)? unknown,
    TResult Function(DrantedPermissionState value)? granted,
    TResult Function(DeniedPermissionState value)? denied,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PermissionStateCopyWith<$Res> {
  factory $PermissionStateCopyWith(
          PermissionState value, $Res Function(PermissionState) then) =
      _$PermissionStateCopyWithImpl<$Res, PermissionState>;
}

/// @nodoc
class _$PermissionStateCopyWithImpl<$Res, $Val extends PermissionState>
    implements $PermissionStateCopyWith<$Res> {
  _$PermissionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UnknownPermissionStateCopyWith<$Res> {
  factory _$$UnknownPermissionStateCopyWith(_$UnknownPermissionState value,
          $Res Function(_$UnknownPermissionState) then) =
      __$$UnknownPermissionStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnknownPermissionStateCopyWithImpl<$Res>
    extends _$PermissionStateCopyWithImpl<$Res, _$UnknownPermissionState>
    implements _$$UnknownPermissionStateCopyWith<$Res> {
  __$$UnknownPermissionStateCopyWithImpl(_$UnknownPermissionState _value,
      $Res Function(_$UnknownPermissionState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UnknownPermissionState implements UnknownPermissionState {
  const _$UnknownPermissionState();

  @override
  String toString() {
    return 'PermissionState.unknown()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UnknownPermissionState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unknown,
    required TResult Function(PermissionGranted granted) granted,
    required TResult Function(PermissionDenied denied) denied,
  }) {
    return unknown();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unknown,
    TResult? Function(PermissionGranted granted)? granted,
    TResult? Function(PermissionDenied denied)? denied,
  }) {
    return unknown?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function(PermissionGranted granted)? granted,
    TResult Function(PermissionDenied denied)? denied,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnknownPermissionState value) unknown,
    required TResult Function(DrantedPermissionState value) granted,
    required TResult Function(DeniedPermissionState value) denied,
  }) {
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UnknownPermissionState value)? unknown,
    TResult? Function(DrantedPermissionState value)? granted,
    TResult? Function(DeniedPermissionState value)? denied,
  }) {
    return unknown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnknownPermissionState value)? unknown,
    TResult Function(DrantedPermissionState value)? granted,
    TResult Function(DeniedPermissionState value)? denied,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }
}

abstract class UnknownPermissionState implements PermissionState {
  const factory UnknownPermissionState() = _$UnknownPermissionState;
}

/// @nodoc
abstract class _$$DrantedPermissionStateCopyWith<$Res> {
  factory _$$DrantedPermissionStateCopyWith(_$DrantedPermissionState value,
          $Res Function(_$DrantedPermissionState) then) =
      __$$DrantedPermissionStateCopyWithImpl<$Res>;
  @useResult
  $Res call({PermissionGranted granted});

  $PermissionGrantedCopyWith<$Res> get granted;
}

/// @nodoc
class __$$DrantedPermissionStateCopyWithImpl<$Res>
    extends _$PermissionStateCopyWithImpl<$Res, _$DrantedPermissionState>
    implements _$$DrantedPermissionStateCopyWith<$Res> {
  __$$DrantedPermissionStateCopyWithImpl(_$DrantedPermissionState _value,
      $Res Function(_$DrantedPermissionState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? granted = null,
  }) {
    return _then(_$DrantedPermissionState(
      null == granted
          ? _value.granted
          : granted // ignore: cast_nullable_to_non_nullable
              as PermissionGranted,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $PermissionGrantedCopyWith<$Res> get granted {
    return $PermissionGrantedCopyWith<$Res>(_value.granted, (value) {
      return _then(_value.copyWith(granted: value));
    });
  }
}

/// @nodoc

class _$DrantedPermissionState implements DrantedPermissionState {
  const _$DrantedPermissionState(this.granted);

  @override
  final PermissionGranted granted;

  @override
  String toString() {
    return 'PermissionState.granted(granted: $granted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DrantedPermissionState &&
            (identical(other.granted, granted) || other.granted == granted));
  }

  @override
  int get hashCode => Object.hash(runtimeType, granted);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DrantedPermissionStateCopyWith<_$DrantedPermissionState> get copyWith =>
      __$$DrantedPermissionStateCopyWithImpl<_$DrantedPermissionState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unknown,
    required TResult Function(PermissionGranted granted) granted,
    required TResult Function(PermissionDenied denied) denied,
  }) {
    return granted(this.granted);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unknown,
    TResult? Function(PermissionGranted granted)? granted,
    TResult? Function(PermissionDenied denied)? denied,
  }) {
    return granted?.call(this.granted);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function(PermissionGranted granted)? granted,
    TResult Function(PermissionDenied denied)? denied,
    required TResult orElse(),
  }) {
    if (granted != null) {
      return granted(this.granted);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnknownPermissionState value) unknown,
    required TResult Function(DrantedPermissionState value) granted,
    required TResult Function(DeniedPermissionState value) denied,
  }) {
    return granted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UnknownPermissionState value)? unknown,
    TResult? Function(DrantedPermissionState value)? granted,
    TResult? Function(DeniedPermissionState value)? denied,
  }) {
    return granted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnknownPermissionState value)? unknown,
    TResult Function(DrantedPermissionState value)? granted,
    TResult Function(DeniedPermissionState value)? denied,
    required TResult orElse(),
  }) {
    if (granted != null) {
      return granted(this);
    }
    return orElse();
  }
}

abstract class DrantedPermissionState implements PermissionState {
  const factory DrantedPermissionState(final PermissionGranted granted) =
      _$DrantedPermissionState;

  PermissionGranted get granted;
  @JsonKey(ignore: true)
  _$$DrantedPermissionStateCopyWith<_$DrantedPermissionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeniedPermissionStateCopyWith<$Res> {
  factory _$$DeniedPermissionStateCopyWith(_$DeniedPermissionState value,
          $Res Function(_$DeniedPermissionState) then) =
      __$$DeniedPermissionStateCopyWithImpl<$Res>;
  @useResult
  $Res call({PermissionDenied denied});

  $PermissionDeniedCopyWith<$Res> get denied;
}

/// @nodoc
class __$$DeniedPermissionStateCopyWithImpl<$Res>
    extends _$PermissionStateCopyWithImpl<$Res, _$DeniedPermissionState>
    implements _$$DeniedPermissionStateCopyWith<$Res> {
  __$$DeniedPermissionStateCopyWithImpl(_$DeniedPermissionState _value,
      $Res Function(_$DeniedPermissionState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? denied = null,
  }) {
    return _then(_$DeniedPermissionState(
      null == denied
          ? _value.denied
          : denied // ignore: cast_nullable_to_non_nullable
              as PermissionDenied,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $PermissionDeniedCopyWith<$Res> get denied {
    return $PermissionDeniedCopyWith<$Res>(_value.denied, (value) {
      return _then(_value.copyWith(denied: value));
    });
  }
}

/// @nodoc

class _$DeniedPermissionState implements DeniedPermissionState {
  const _$DeniedPermissionState(this.denied);

  @override
  final PermissionDenied denied;

  @override
  String toString() {
    return 'PermissionState.denied(denied: $denied)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeniedPermissionState &&
            (identical(other.denied, denied) || other.denied == denied));
  }

  @override
  int get hashCode => Object.hash(runtimeType, denied);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeniedPermissionStateCopyWith<_$DeniedPermissionState> get copyWith =>
      __$$DeniedPermissionStateCopyWithImpl<_$DeniedPermissionState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unknown,
    required TResult Function(PermissionGranted granted) granted,
    required TResult Function(PermissionDenied denied) denied,
  }) {
    return denied(this.denied);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unknown,
    TResult? Function(PermissionGranted granted)? granted,
    TResult? Function(PermissionDenied denied)? denied,
  }) {
    return denied?.call(this.denied);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function(PermissionGranted granted)? granted,
    TResult Function(PermissionDenied denied)? denied,
    required TResult orElse(),
  }) {
    if (denied != null) {
      return denied(this.denied);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnknownPermissionState value) unknown,
    required TResult Function(DrantedPermissionState value) granted,
    required TResult Function(DeniedPermissionState value) denied,
  }) {
    return denied(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UnknownPermissionState value)? unknown,
    TResult? Function(DrantedPermissionState value)? granted,
    TResult? Function(DeniedPermissionState value)? denied,
  }) {
    return denied?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnknownPermissionState value)? unknown,
    TResult Function(DrantedPermissionState value)? granted,
    TResult Function(DeniedPermissionState value)? denied,
    required TResult orElse(),
  }) {
    if (denied != null) {
      return denied(this);
    }
    return orElse();
  }
}

abstract class DeniedPermissionState implements PermissionState {
  const factory DeniedPermissionState(final PermissionDenied denied) =
      _$DeniedPermissionState;

  PermissionDenied get denied;
  @JsonKey(ignore: true)
  _$$DeniedPermissionStateCopyWith<_$DeniedPermissionState> get copyWith =>
      throw _privateConstructorUsedError;
}
