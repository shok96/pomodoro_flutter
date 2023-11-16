import 'dart:async';
import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../extensions/bloc_extensions.dart';
import '../../../common/domain/cubit/permission_cubit.dart';
import '../../permissions_notifications_cubit.dart';

part 'notifications_permission_view_state.dart';
part 'notifications_permission_view_cubit.freezed.dart';

class NotificationsPermissionViewCubit
    extends Cubit<NotificationsPermissionViewState> {
  NotificationsPermissionViewCubit(this._permissionCubit)
      : super(
          NotificationsPermissionViewState.notIgnored(_permissionCubit.state),
        ) {
    _init();
  }

  final PermissionsNotificationsCubit _permissionCubit;
  StreamSubscription<PermissionState>? _cubitSubscription;

  bool get canIgnore => !Platform.isIOS && !Platform.isMacOS;

  void ignore() {
    _cubitSubscription?.cancel();
    emit(const NotificationsPermissionViewState.ignored());
  }

  void accept() {
    _permissionCubit.getPermission(forceUpdate: true);
  }

  void _cubitListener(PermissionState permissionState) {
    emit(NotificationsPermissionViewState.notIgnored(permissionState));
  }

  void _init() {
    _cubitSubscription = _permissionCubit.listen(_cubitListener);
  }

  @override
  Future<void> close() {
    _cubitSubscription?.cancel();
    return super.close();
  }
}
