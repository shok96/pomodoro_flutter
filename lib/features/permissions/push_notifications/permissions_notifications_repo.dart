import 'dart:async';

import 'package:permission_handler/permission_handler.dart' as h;

import '../common/repos/permissions_repo.dart';

class PermissionsNotificationsRepo extends PermissionsRepo {
  const PermissionsNotificationsRepo();

  @override
  FutureOr<h.Permission> getPermission() => h.Permission.notification;
}
