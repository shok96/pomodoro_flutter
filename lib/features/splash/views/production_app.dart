import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:pomodoro_flutter/features/pomodoro/views/Pomodoro_screen.dart';
import 'package:provider/provider.dart';

import '../../../ui/animations/widgets/fade_with_offset_transition.dart';
import '../../permissions/push_notifications/permissions_notifications_cubit.dart';
import '../../permissions/push_notifications/view/cubit/notifications_permission_view_cubit.dart';
import '../../permissions/push_notifications/view/push_notifications_permission_screen.dart';

class ProductionApp extends StatelessWidget {
  const ProductionApp({Key? key}) : super(key: key);

  static const route = "/app";

  @override
  Widget build(BuildContext context) {
    void goToHome() {
      context.go(PomodoroScreen.route);
    }

    return BlocProvider(
      create: (context) => NotificationsPermissionViewCubit(
        context.read<PermissionsNotificationsCubit>(),
      ),
      child: BlocConsumer<NotificationsPermissionViewCubit,
          NotificationsPermissionViewState>(
        builder: (context, notificationsPermissionState) {
          return FadeTroughWithOffsetTransition(
            axis: TransitionAxis.z,
            child: notificationsPermissionState.map(
              notIgnored: (notIgnored) => notIgnored.state.maybeMap(
                denied: (denied) => denied.denied.maybeMap(
                  canAsk: (_) => PushNotificationsPermissionScreen(
                    permissionState: notIgnored.state,
                  ),
                  orElse: () => const SizedBox.shrink(),
                ),
                orElse: () => const SizedBox.shrink(),
              ),
              ignored: (_) => const SizedBox.shrink(),
            ),
          );
        },
        listener: (context, notificationsPermissionState) {
          notificationsPermissionState.map(
            notIgnored: (notIgnored) => notIgnored.state.maybeMap(
              denied: (denied) => denied.denied.maybeMap(
                canAsk: (_) => PushNotificationsPermissionScreen(
                  permissionState: notIgnored.state,
                ),
                orElse: () => goToHome(),
              ),
              orElse: () => goToHome(),
            ),
            ignored: (_) => goToHome(),
          );
        },
      ),
    );
  }
}
