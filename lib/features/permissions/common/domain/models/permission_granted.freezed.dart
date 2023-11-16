// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'permission_granted.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PermissionGranted {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() full,
    required TResult Function() limited,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? full,
    TResult? Function()? limited,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? full,
    TResult Function()? limited,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FullPermissionGranted value) full,
    required TResult Function(LimitedPermissionGranted value) limited,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FullPermissionGranted value)? full,
    TResult? Function(LimitedPermissionGranted value)? limited,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FullPermissionGranted value)? full,
    TResult Function(LimitedPermissionGranted value)? limited,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PermissionGrantedCopyWith<$Res> {
  factory $PermissionGrantedCopyWith(
          PermissionGranted value, $Res Function(PermissionGranted) then) =
      _$PermissionGrantedCopyWithImpl<$Res, PermissionGranted>;
}

/// @nodoc
class _$PermissionGrantedCopyWithImpl<$Res, $Val extends PermissionGranted>
    implements $PermissionGrantedCopyWith<$Res> {
  _$PermissionGrantedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FullPermissionGrantedCopyWith<$Res> {
  factory _$$FullPermissionGrantedCopyWith(_$FullPermissionGranted value,
          $Res Function(_$FullPermissionGranted) then) =
      __$$FullPermissionGrantedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FullPermissionGrantedCopyWithImpl<$Res>
    extends _$PermissionGrantedCopyWithImpl<$Res, _$FullPermissionGranted>
    implements _$$FullPermissionGrantedCopyWith<$Res> {
  __$$FullPermissionGrantedCopyWithImpl(_$FullPermissionGranted _value,
      $Res Function(_$FullPermissionGranted) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FullPermissionGranted implements FullPermissionGranted {
  const _$FullPermissionGranted();

  @override
  String toString() {
    return 'PermissionGranted.full()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FullPermissionGranted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() full,
    required TResult Function() limited,
  }) {
    return full();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? full,
    TResult? Function()? limited,
  }) {
    return full?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? full,
    TResult Function()? limited,
    required TResult orElse(),
  }) {
    if (full != null) {
      return full();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FullPermissionGranted value) full,
    required TResult Function(LimitedPermissionGranted value) limited,
  }) {
    return full(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FullPermissionGranted value)? full,
    TResult? Function(LimitedPermissionGranted value)? limited,
  }) {
    return full?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FullPermissionGranted value)? full,
    TResult Function(LimitedPermissionGranted value)? limited,
    required TResult orElse(),
  }) {
    if (full != null) {
      return full(this);
    }
    return orElse();
  }
}

abstract class FullPermissionGranted implements PermissionGranted {
  const factory FullPermissionGranted() = _$FullPermissionGranted;
}

/// @nodoc
abstract class _$$LimitedPermissionGrantedCopyWith<$Res> {
  factory _$$LimitedPermissionGrantedCopyWith(_$LimitedPermissionGranted value,
          $Res Function(_$LimitedPermissionGranted) then) =
      __$$LimitedPermissionGrantedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LimitedPermissionGrantedCopyWithImpl<$Res>
    extends _$PermissionGrantedCopyWithImpl<$Res, _$LimitedPermissionGranted>
    implements _$$LimitedPermissionGrantedCopyWith<$Res> {
  __$$LimitedPermissionGrantedCopyWithImpl(_$LimitedPermissionGranted _value,
      $Res Function(_$LimitedPermissionGranted) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LimitedPermissionGranted implements LimitedPermissionGranted {
  const _$LimitedPermissionGranted();

  @override
  String toString() {
    return 'PermissionGranted.limited()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LimitedPermissionGranted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() full,
    required TResult Function() limited,
  }) {
    return limited();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? full,
    TResult? Function()? limited,
  }) {
    return limited?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? full,
    TResult Function()? limited,
    required TResult orElse(),
  }) {
    if (limited != null) {
      return limited();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FullPermissionGranted value) full,
    required TResult Function(LimitedPermissionGranted value) limited,
  }) {
    return limited(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FullPermissionGranted value)? full,
    TResult? Function(LimitedPermissionGranted value)? limited,
  }) {
    return limited?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FullPermissionGranted value)? full,
    TResult Function(LimitedPermissionGranted value)? limited,
    required TResult orElse(),
  }) {
    if (limited != null) {
      return limited(this);
    }
    return orElse();
  }
}

abstract class LimitedPermissionGranted implements PermissionGranted {
  const factory LimitedPermissionGranted() = _$LimitedPermissionGranted;
}
