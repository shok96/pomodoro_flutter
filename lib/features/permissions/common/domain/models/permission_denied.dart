import 'package:freezed_annotation/freezed_annotation.dart';

part 'permission_denied.freezed.dart';

@freezed
class PermissionDenied with _$PermissionDenied {
  const factory PermissionDenied.canAsk() = CanAskPermissionDenied;
  const factory PermissionDenied.permanently() = PermanentlyPermissionDenied;
}
