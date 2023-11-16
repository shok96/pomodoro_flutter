import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:pomodoro_flutter/extensions/num_extansions.dart';
import 'package:pomodoro_flutter/ui/res/colors.dart';
import 'package:pomodoro_flutter/ui/widgets/button.dart';
import 'package:provider/provider.dart';
import '../../../../utils/app_settings.dart';
import '../../../../ui/theme/typography/typography.dart';
import '../../common/domain/cubit/permission_cubit.dart';
import 'cubit/notifications_permission_view_cubit.dart';

class PushNotificationsPermissionScreen extends StatelessWidget {
  const PushNotificationsPermissionScreen({
    super.key,
    required this.permissionState,
  });

  final PermissionState permissionState;

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;

    final viewCubit = context.read<NotificationsPermissionViewCubit>();

    void ignore() {
      if (!viewCubit.canIgnore) return;
      viewCubit.ignore();
    }

    void accept() {
      permissionState.maybeMap(
        denied: (denied) => denied.denied.map(
          canAsk: (_) => viewCubit.accept(),
          permanently: (_) => OpenSettings.notificationsPermission(),
        ),
        orElse: viewCubit.accept,
      );
    }

    return Scaffold(
      body: SafeArea(
        minimum: const EdgeInsets.only(bottom: 10.0),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 36,
              vertical: 24,
            ),
            child: DecoratedBox(
              decoration: BoxDecoration(
                border: Border.all(color: pinkViolet),
                borderRadius: BorderRadius.circular(32),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 12,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const DecoratedBox(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: pinkViolet,
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(32.0),
                        child: Icon(
                          Icons.message,
                          color: white,
                          size: 64,
                        ),
                      ),
                    ),
                    36.h,
                    Text(
                      localizations.text_push_permission,
                      style: ProjectTypography.subTitleModal,
                      textAlign: TextAlign.center,
                    ),
                    12.h,
                    Button(text: localizations.push_accept, action: accept),
                    12.h,
                    Button(
                      text: localizations.push_decline,
                      action: ignore,
                      isInverted: true,
                    ),
                    // Padding(
                    //   padding: const EdgeInsets.symmetric(horizontal: 21.0),
                    //   child: ProductionElevatedButton(
                    //     label: acceptText,
                    //     backgroundColor: buttonColor,
                    //     foregroundColor: buttonTextColor,
                    //     onTap: accept,
                    //   ),
                    // ),
                    // if (viewCubit.canIgnore)
                    //   Padding(
                    //     padding: const EdgeInsets.symmetric(horizontal: 21.0),
                    //     child: ProductionElevatedButton(
                    //       label: localizations.noAnotherTime,
                    //       backgroundColor: Colors.transparent,
                    //       foregroundColor: foregroundColor,
                    //       onTap: ignore,
                    //     ),
                    //   )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
