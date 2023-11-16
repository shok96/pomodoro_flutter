// @dart=3.0
import 'dart:async';

import 'package:permission_handler/permission_handler.dart' as h;

import '../../../../utils/future_with_duration.dart';
import '../constants/permissions_constants.dart';
import '../domain/cubit/permission_cubit.dart';
import '../domain/models/permission_denied.dart';

import '../domain/models/permission_granted.dart';

abstract class PermissionsRepo {
  const PermissionsRepo();

  FutureOr<h.Permission> getPermission();

  Future<bool> isGranted() async {
    final permission = await getPermission();
    return permission.isGranted;
  }

  Future<PermissionState> _resolvePermission(bool withRequest) async {
    final permission = await getPermission();

    Future<h.PermissionStatus> getter() {
      return withRequest ? permission.request() : permission.status;
    }

    final (status, duration) = await futureWithDuration(getter());

    late final tooFast = duration <= PermissionsConstants.deniedCantAsk;

    if (status.isGranted) {
      const grantedType = PermissionGranted.full();
      return const PermissionState.granted(grantedType);
    }

    if (status.isLimited) {
      const grantedType = PermissionGranted.limited();
      return const PermissionState.granted(grantedType);
    }

    if (status.isPermanentlyDenied) {
      const deniedType = PermissionDenied.permanently();
      return const PermissionState.denied(deniedType);
    }

    if (status.isDenied && tooFast && withRequest) {
      const deniedType = PermissionDenied.permanently();
      return const PermissionState.denied(deniedType);
    }

    if (status.isDenied && (!tooFast || !withRequest)) {
      const deniedType = PermissionDenied.canAsk();
      return const PermissionState.denied(deniedType);
    }

    throw UnimplementedError('$permission not handled result: $status');
  }

  Future<PermissionState> request() {
    return _resolvePermission(true);
  }

  Future<PermissionState> getStatus() {
    return _resolvePermission(false);
  }
}
