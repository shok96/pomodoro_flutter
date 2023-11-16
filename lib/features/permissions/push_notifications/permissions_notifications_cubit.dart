import '../../../services/app_state_service/app_state_service.dart';
import '../common/domain/cubit/permission_cubit.dart';
import 'permissions_notifications_repo.dart';

class PermissionsNotificationsCubit extends PermissionCubit {
  PermissionsNotificationsCubit(
    PermissionsNotificationsRepo permissionsRepo,
    AppStateService appStateservice,
  ) : super(permissionsRepo, appStateservice);
}
