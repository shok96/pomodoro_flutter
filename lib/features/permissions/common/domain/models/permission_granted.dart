import 'package:freezed_annotation/freezed_annotation.dart';

part 'permission_granted.freezed.dart';

@freezed
class PermissionGranted with _$PermissionGranted {
  const factory PermissionGranted.full() = FullPermissionGranted;
  const factory PermissionGranted.limited() = LimitedPermissionGranted;
}
