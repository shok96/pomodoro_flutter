part of 'notifications_permission_view_cubit.dart';

@freezed
class NotificationsPermissionViewState with _$NotificationsPermissionViewState {
  const factory NotificationsPermissionViewState.notIgnored(
    PermissionState state,
  ) = NotIgnoredNotificationsPermissionViewState;
  const factory NotificationsPermissionViewState.ignored() =
      IgnoredNotificationsPermissionViewState;
}
