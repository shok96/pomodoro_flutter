part of 'permission_cubit.dart';

@freezed
class PermissionState with _$PermissionState {
  const factory PermissionState.unknown() = UnknownPermissionState;

  const factory PermissionState.granted(
    PermissionGranted granted,
  ) = DrantedPermissionState;

  const factory PermissionState.denied(PermissionDenied denied) =
      DeniedPermissionState;
}
